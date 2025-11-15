/**
 * Object Property Errors
 *
 * Property access, excess properties, and object structure errors.
 * ~15% of all TypeScript errors.
 */

// ============================================================================
// TS2339: Property does not exist on type
// ============================================================================

// Interface property access
interface User {
  name: string;
  age: number;
}
const user: User = { name: "John", age: 30 };
const email = user.email;  // Property doesn't exist

// Union type narrowing
type Circle = { kind: "circle"; radius: number };
type Square = { kind: "square"; size: number };
type Shape = Circle | Square;

function getArea(shape: Shape) {
  return shape.radius;  // Doesn't exist on all union members
}

// Optional chaining doesn't help with non-existent properties
const value = user.address?.street;  // 'address' doesn't exist

// Accessing property on primitive
const str = "hello";
const prop = str.foo;  // string primitive has no 'foo'

// ============================================================================
// TS2551: Property does not exist on type (with suggestion)
// ============================================================================

// Typo in property name
const userName = user.namee;  // Did you mean 'name'?

// Typo in string method
const len = str.lenght;  // Did you mean 'length'?

// Case sensitivity
interface Config {
  apiUrl: string;
}
const config: Config = { apiUrl: "..." };
const url = config.apiurl;  // Did you mean 'apiUrl'?

// ============================================================================
// TS2353: Object literal may only specify known properties
// ============================================================================

type Point = { x: number; y: number };
const point: Point = {
  x: 10,
  y: 20,
  z: 30  // 'z' does not exist in type 'Point'
};

// Excess properties in function calls
function createUser(user: { name: string; age: number }): void {}
createUser({
  name: "John",
  age: 30,
  email: "john@example.com"  // Excess property
});

// OK when not a literal
const userData = { name: "John", age: 30, email: "john@example.com" };
createUser(userData);  // No error - structural typing

// ============================================================================
// TS18004: No value exists in scope for shorthand property
// ============================================================================

// Missing variable in scope
const obj1 = { name };  // 'name' not declared

// Shorthand in object literal
function createPerson() {
  const obj2 = { firstName, lastName };  // Neither declared
  return obj2;
}

// OK version
const firstName = "John";
const lastName = "Doe";
const obj3 = { firstName, lastName };  // Works
