const fs = require('fs');
const path = require('path');
const fm = require('front-matter');

const dbJson = require('./src/tsErrorMessages.json');
const errorsDir = './errors';

const results = [];

// Read markdown files
const mdFiles = fs.readdirSync(errorsDir).filter(f => f.endsWith('.md'));

for (const file of mdFiles) {
  const code = parseInt(file.replace('.md', ''));
  const content = fs.readFileSync(path.join(errorsDir, file), 'utf8');
  const parsed = fm(content);

  // Find pattern in JSON by code
  const entry = Object.entries(dbJson).find(([_, v]) => v.code === code);
  if (!entry) {
    console.warn(`No pattern found for code ${code}`);
    continue;
  }

  const [pattern, { category }] = entry;

  results.push({
    pattern,
    code,
    category,
    improved_message: parsed.body.trim()
  });
}

// Sort by code
results.sort((a, b) => a.code - b.code);

console.log(`Generating db.lua with ${results.length} errors...`);

// Generate Lua - need to escape strings properly
function luaStringEscape(str) {
  return str
    .replace(/\\/g, '\\\\')
    .replace(/\n/g, '\\n')
    .replace(/\r/g, '\\r')
    .replace(/"/g, '\\"');
}

let lua = 'return {\n';
for (const err of results) {
  lua += `  [${err.code}] = {\n`;
  lua += `    pattern = "${luaStringEscape(err.pattern)}",\n`;
  lua += `    category = "${err.category}",\n`;
  lua += `    improved_message = "${luaStringEscape(err.improved_message)}"\n`;
  lua += '  },\n';
}
lua += '}\n';

const outputPath = './lua/ts-error-translator/db.lua';
fs.writeFileSync(outputPath, lua);
console.log(`Generated ${outputPath}`);
