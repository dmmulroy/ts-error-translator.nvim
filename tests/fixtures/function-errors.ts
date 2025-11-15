/**
 * Function Errors
 *
 * Function signatures, arguments, returns, and callable types.
 * ~10% of all TypeScript errors.
 */

// ============================================================================
// TS2349: This expression is not callable
// ============================================================================

// String is not callable
const notAFunction = "string";
notAFunction();

// Number is not callable
const alsoNotAFunction = 123;
alsoNotAFunction();

// Object is not callable
const obj = { foo: "bar" };
obj();

// Property that's not a function
interface User {
  name: string;
  greet: () => void;
}
const user: User = { name: "John", greet: () => {} };
user.name();  // string is not callable

// ============================================================================
// TS2355: A function must return a value
// ============================================================================

// Declared return type but no return
function getNumber(): number {
  console.log("No return");
  // Missing return statement
}

// Not all code paths return
function conditional(x: boolean): string {
  if (x) {
    return "yes";
  }
  // Missing else return
}

// Arrow function
const arrowFn = (): number => {
  console.log("No return");
};

// ============================================================================
// TS2393: Duplicate function implementation
// ============================================================================

function duplicate() {
  return "first";
}

function duplicate() {  // Duplicate function implementation
  return "second";
}

// Overloads are OK, but multiple implementations are not
function overloaded(x: string): string;
function overloaded(x: number): number;
function overloaded(x: string | number): string | number {
  return x;
}
// This would be an error:
// function overloaded(x: string | number): string | number { return x; }

// ============================================================================
// TS2554: Expected N arguments, but got M
// ============================================================================

// Too few arguments
function greet(name: string, age: number) {
  return `${name} is ${age}`;
}
greet("John");  // Expected 2 arguments, got 1

// Too many arguments
greet("John", 30, "extra");  // Expected 2 arguments, got 3

// With optional parameters
function greetOptional(name: string, age?: number) {}
greetOptional();  // Still need required 'name'

// With default parameters
function greetDefault(name: string, greeting = "Hello") {}
greetDefault();  // Still need required 'name'

// ============================================================================
// TS2556: A spread argument must either have a tuple type or be passed to a rest parameter
// ============================================================================

function takesTwo(a: number, b: number) {
  return a + b;
}

// Array is not a tuple
const args = [1, 2, 3];
takesTwo(...args);  // Not a tuple type

// OK with tuple
const tuple: [number, number] = [1, 2];
takesTwo(...tuple);  // Works

// OK with rest parameters
function takesRest(...args: number[]) {
  return args.reduce((a, b) => a + b, 0);
}
takesRest(...args);  // Works

// ============================================================================
// TS2722: Cannot invoke an object which is possibly 'undefined'
// ============================================================================

// Function might be undefined
const maybeFn: (() => void) | undefined = undefined;
maybeFn();  // Cannot invoke possibly undefined

// Optional method
interface Config {
  onInit?: () => void;
}
const config: Config = {};
config.onInit();  // Cannot invoke possibly undefined

// OK with optional chaining
config.onInit?.();  // Safe

// OK with guard
if (config.onInit) {
  config.onInit();  // Safe
}
