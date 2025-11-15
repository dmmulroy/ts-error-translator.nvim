/**
 * Syntax Errors
 *
 * Pure syntax and parsing errors that prevent compilation.
 * Using @ts-expect-error to prevent file-level parse failures.
 */

// ============================================================================
// TS1002: Unterminated string literal
// ============================================================================

// @ts-expect-error - Unterminated string
const str1 = "hello

// @ts-expect-error - Unterminated template
const str2 = `template

// ============================================================================
// TS1003: Identifier expected
// ============================================================================

// @ts-expect-error - Missing variable name
const = "value";

// @ts-expect-error - Missing function name
function () {
  return 42;
}

// ============================================================================
// TS1006: A file cannot have a reference to itself
// ============================================================================

// Would need actual triple-slash directive
// /// <reference path="./syntax-errors.ts" />

// ============================================================================
// TS1009: Trailing comma not allowed
// ============================================================================

// In older TS versions or specific contexts
// @ts-expect-error - Trailing comma
type Params<T,> = T;

// ============================================================================
// TS1014: A rest parameter must be last in a parameter list
// ============================================================================

// @ts-expect-error - Rest parameter not last
function badRest(...rest: string[], last: number) {}

// @ts-expect-error - Multiple rest parameters
function multiRest(...first: string[], ...second: number[]) {}

// ============================================================================
// TS1015: Parameter cannot have question mark and initializer
// ============================================================================

// @ts-expect-error - Optional with default
function badOptional(x?: string = "default") {}

// @ts-expect-error - In arrow function
const arrowBad = (y?: number = 0) => y;

// ============================================================================
// TS1091: Only a single variable declaration is allowed in for...in
// ============================================================================

// @ts-expect-error - Multiple variables in for...in
for (let x = 0, y = 1 in {}) {}

// ============================================================================
// TS1109: Expression expected
// ============================================================================

// @ts-expect-error - Empty expression
const result = ;

// @ts-expect-error - Missing expression
if () {}

// ============================================================================
// TS1117: An object literal cannot have multiple properties with the same name
// ============================================================================

const obj = {
  foo: 1,
  bar: 2,
  foo: 3  // Duplicate property 'foo'
};

// ============================================================================
// TS1155: const declarations must be initialized
// ============================================================================

// @ts-expect-error - Uninitialized const
const uninit;

// @ts-expect-error - Multiple uninit
const x, y;

// ============================================================================
// TS1163: A 'yield' expression is only allowed in a generator body
// ============================================================================

// @ts-expect-error - yield outside generator
function notGenerator() {
  yield 42;
}

// @ts-expect-error - yield in arrow function
const arrow = () => {
  yield 1;
};

// ============================================================================
// TS1240: Unable to resolve signature of property decorator when called as an expression
// ============================================================================

// @ts-expect-error - Decorator on expression
const decorator = () => {};
decorator()
class MyClass {
  prop = 123;
}

// ============================================================================
// TS1254: A const initializer in ambient context must be a string or numeric literal
// ============================================================================

// In declaration file context
declare const ambient: { value: 42 };  // Should be literal type

// ============================================================================
// TS1268: An index signature parameter type must be string, number, symbol, or template literal type
// ============================================================================

// @ts-expect-error - Invalid index signature type
type InvalidIndex = {
  [key: boolean]: string;
};

// @ts-expect-error - Object as key
type AlsoInvalid = {
  [key: { id: number }]: string;
};

// ============================================================================
// TS1313: The body of an if statement cannot be the empty statement
// ============================================================================

// @ts-expect-error - Empty if body
if (true);

// @ts-expect-error - Empty else
if (false) {
  console.log("ok");
} else;

// ============================================================================
// TS1434: Unexpected keyword or identifier
// ============================================================================

// @ts-expect-error - Invalid syntax
const bad syntax here;

// @ts-expect-error - Misplaced keyword
class class Foo {}
