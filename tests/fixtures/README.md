# TypeScript Error Fixtures

Comprehensive test fixtures covering all 67 TypeScript error codes in ts-error-translator.

## Quick Error Code Lookup

| Code | File | Description |
|------|------|-------------|
| 1002 | syntax-errors.ts:15 | Unterminated string literal |
| 1003 | syntax-errors.ts:24 | Identifier expected |
| 1006 | syntax-errors.ts:33 | File self-reference |
| 1009 | syntax-errors.ts:39 | Trailing comma not allowed |
| 1014 | syntax-errors.ts:46 | Rest parameter must be last |
| 1015 | syntax-errors.ts:53 | Parameter ? and initializer |
| 1091 | syntax-errors.ts:60 | Single variable in for...in |
| 1109 | syntax-errors.ts:66 | Expression expected |
| 1117 | syntax-errors.ts:73 | Duplicate object properties |
| 1155 | syntax-errors.ts:81 | const must be initialized |
| 1163 | syntax-errors.ts:88 | yield outside generator |
| 1208 | operator-misc-errors.ts:32 | isolatedModules requires module |
| 1240 | syntax-errors.ts:98 | Property decorator on expression |
| 1254 | syntax-errors.ts:107 | Ambient const initializer |
| 1268 | syntax-errors.ts:113 | Index signature parameter type |
| 1313 | syntax-errors.ts:122 | Empty if statement |
| 1434 | syntax-errors.ts:131 | Unexpected keyword |
| 2304 | scope-variable-errors.ts:15 | Cannot find name |
| 2305 | module-import-errors.ts:24 | Module has no exported member |
| 2307 | module-import-errors.ts:15 | Cannot find module |
| 2312 | interface-generic-errors.ts:15 | Interface can only extend object |
| 2314 | interface-generic-errors.ts:35 | Generic requires type arguments |
| 2322 | type-assignment-errors.ts:15 | Type not assignable |
| 2324 | type-assignment-errors.ts:45 | Property missing in type |
| 2326 | type-assignment-errors.ts:51 | Property types incompatible |
| 2327 | type-assignment-errors.ts:60 | Property optional vs required |
| 2339 | object-property-errors.ts:15 | Property doesn't exist |
| 2344 | type-assignment-errors.ts:69 | Type doesn't satisfy constraint |
| 2345 | type-assignment-errors.ts:80 | Argument type not assignable |
| 2349 | function-errors.ts:15 | Expression not callable |
| 2352 | type-assignment-errors.ts:93 | Conversion may be mistake |
| 2353 | object-property-errors.ts:47 | Excess property in literal |
| 2355 | function-errors.ts:36 | Function must return value |
| 2365 | operator-misc-errors.ts:15 | Operator cannot be applied |
| 2393 | function-errors.ts:54 | Duplicate function |
| 2414 | class-constructor-errors.ts:15 | Class name reserved |
| 2451 | scope-variable-errors.ts:43 | Cannot redeclare variable |
| 2488 | advanced-type-errors.ts:66 | Must have Symbol.iterator |
| 2551 | object-property-errors.ts:38 | Property doesn't exist (suggestion) |
| 2552 | scope-variable-errors.ts:36 | Cannot find name (suggestion) |
| 2554 | function-errors.ts:72 | Wrong argument count |
| 2556 | function-errors.ts:86 | Spread must be tuple |
| 2571 | advanced-type-errors.ts:15 | Object is type unknown |
| 2590 | advanced-type-errors.ts:31 | Union type too complex |
| 2604 | jsx-react-errors.ts:25 | JSX element not callable |
| 2614 | module-import-errors.ts:35 | Module no member (suggestion) |
| 2686 | module-import-errors.ts:44 | UMD global in module |
| 2722 | function-errors.ts:105 | Cannot invoke possibly undefined |
| 2739 | type-assignment-errors.ts:102 | Type missing properties |
| 2741 | type-assignment-errors.ts:109 | Property missing but required |
| 2749 | type-assignment-errors.ts:118 | Value used as type |
| 2761 | class-constructor-errors.ts:33 | Type has no construct signatures |
| 2775 | advanced-type-errors.ts:50 | Assertions require annotation |
| 2783 | advanced-type-errors.ts:98 | Property overwritten by spread |
| 5075 | type-assignment-errors.ts:130 | Assignable to constraint edge |
| 6133 | scope-variable-errors.ts:66 | Variable never read |
| 6142 | module-import-errors.ts:55 | Module resolved, jsx not set |
| 6244 | operator-misc-errors.ts:45 | Const enums + isolatedModules |
| 7006 | strict-mode-errors.ts:15 | Parameter implicit any |
| 7026 | jsx-react-errors.ts:56 | JSX element implicit any |
| 7053 | strict-mode-errors.ts:44 | Element implicit any (indexing) |
| 7057 | strict-mode-errors.ts:74 | yield implicit any |
| 7061 | advanced-type-errors.ts:118 | Mapped type + static properties |
| 8016 | operator-misc-errors.ts:70 | Type assertion only in .ts |
| 17004 | jsx-react-errors.ts:15 | Cannot use JSX without flag |
| 18004 | object-property-errors.ts:67 | Shorthand property no value |
| 95050 | operator-misc-errors.ts:90 | Unreachable code |

## Usage

### Manual Testing in Editor

1. Open any fixture file in Neovim
2. LSP will show TypeScript errors
3. ts-error-translator will display improved messages
4. Verify translations are clear and helpful

### Running TypeScript Compiler

```bash
# Check all fixtures with base config
tsc --noEmit

# Check strict mode errors
tsc --project tsconfig.strict.json --noEmit

# Check JSX errors
tsc --project tsconfig.jsx.json --noEmit

# Check isolated modules
tsc --project tsconfig.isolated.json --noEmit
```

### Automated Testing

Use fixtures to generate test cases:

```lua
-- tests/spec/fixtures_spec.lua
local fixtures = {
  { file = "type-assignment-errors.ts", code = 2322, line = 15 },
  -- ... generated from fixtures/README.md table
}

for _, fixture in ipairs(fixtures) do
  it("TS" .. fixture.code .. " in " .. fixture.file, function()
    -- Parse fixture file
    -- Extract error at line
    -- Verify translation
  end)
end
```

## File Categories

### High-Frequency Errors (~73% of all errors)
- `type-assignment-errors.ts` - Type compatibility (40%)
- `object-property-errors.ts` - Property access (15%)
- `function-errors.ts` - Function signatures (10%)
- `module-import-errors.ts` - Imports/exports (8%)

### Common Errors (~20%)
- `scope-variable-errors.ts` - Variables & scope
- `syntax-errors.ts` - Pure syntax errors
- `advanced-type-errors.ts` - Complex types

### Specialized Errors (~7%)
- `strict-mode-errors.ts` - Strict compiler flags
- `jsx-react-errors.ts` - JSX/React specific
- `interface-generic-errors.ts` - Interfaces & generics
- `class-constructor-errors.ts` - Classes
- `operator-misc-errors.ts` - Operators & misc

## Maintenance

### Adding New Error Codes

1. Determine category for new code
2. Add example to appropriate fixture file
3. Update this README lookup table
4. Add corresponding test case

### Verifying Coverage

```bash
# Extract codes from db.lua
grep "\\[.*\\] =" lua/ts-error-translator/db.lua | sed 's/.*\\[\\(.*\\)\\].*/\\1/'

# Extract codes from fixtures
grep "^| [0-9]" fixtures/README.md | awk '{print $2}'

# Diff to find gaps
comm -23 <(codes_from_db) <(codes_from_fixtures)
```

## Notes

- Some errors require specific tsconfig settings (see config files)
- Syntax errors use `@ts-expect-error` to prevent parse failures
- Module errors require companion files in `modules/` subdirectory
- JSX errors work in `.ts` files (don't need `.tsx`)
