/**
 * Strict Mode Errors
 *
 * Errors that only appear with strict type-checking flags enabled.
 * Requires tsconfig.strict.json
 */

// ============================================================================
// TS7006: Parameter implicitly has 'any' type
// ============================================================================

// Function parameter without type (requires noImplicitAny)
function greet(name) {  // Parameter 'name' implicitly has 'any'
  return `Hello, ${name}`;
}

// Arrow function implicit any
const double = (x) => x * 2;  // Parameter 'x' implicitly has 'any'

// Callback implicit any
[1, 2, 3].map(item => item * 2);  // 'item' might be implicit any

// Method parameter
class Calculator {
  add(a, b) {  // Both parameters implicit any
    return a + b;
  }
}

// Destructured parameters
function process({ name, age }) {  // Destructured params implicit any
  return `${name} is ${age}`;
}

// Rest parameters
function sum(...numbers) {  // Rest parameter implicit any[]
  return numbers.reduce((a, b) => a + b, 0);
}

// ============================================================================
// TS7053: Element implicitly has 'any' type because expression of type X can't be used to index type Y
// ============================================================================

// String can't index typed object
type User = { name: string; age: number };
function getProp(user: User, key: string) {
  return user[key];  // Implicit 'any' - string too wide for User keys
}

// OK: using keyof
function getPropSafe<T, K extends keyof T>(obj: T, key: K): T[K] {
  return obj[key];
}

// Number indexing non-array
type Config = { apiUrl: string; timeout: number };
function getConfigValue(config: Config, index: number) {
  return config[index];  // number can't index Config
}

// String indexing tuple
type Tuple = [string, number, boolean];
const tuple: Tuple = ["a", 1, true];
function getTupleValue(t: Tuple, key: string) {
  return t[key];  // string can't index tuple
}

// Variable key on Record
const record: Record<string, number> = { a: 1, b: 2 };
const key: string = "a";
const value = record[key];  // Might be implicit any in strict mode

// ============================================================================
// TS7057: 'yield' expression implicitly results in 'any' type
// ============================================================================

// Generator without return type annotation
function* generator() {  // Lacks return type
  const value = yield;  // yield implicitly has 'any'
  return value;
}

// OK: with return type
function* generatorSafe(): Generator<number, string, boolean> {
  const value = yield 42;
  return "done";
}

// Async generator
async function* asyncGen() {  // Lacks return type
  const value = yield;  // Implicit any
}

// OK: typed async generator
async function* asyncGenSafe(): AsyncGenerator<number, void, string> {
  const msg = yield 1;
  console.log(msg);
}
