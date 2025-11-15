/**
 * Interface and Generic Errors
 *
 * Interface extension rules and generic type parameter requirements.
 */

// ============================================================================
// TS2312: An interface can only extend an object type
// ============================================================================

// Cannot extend union type
type StringOrNumber = string | number;
interface BadExtend extends StringOrNumber {}

// Cannot extend primitive
interface AlsoBad extends string {}

// Cannot extend type parameter without constraint
function createInterface<T>() {
  interface Bad extends T {}  // T might not be object type
}

// OK: extending object types
interface User { name: string }
interface Admin extends User { role: string }

// OK: extending intersection
type Person = { name: string } & { age: number };
interface Employee extends Person { employeeId: number }

// ============================================================================
// TS2314: Generic type requires N type argument(s)
// ============================================================================

// Missing all type arguments
type Box<T> = { value: T };
const box: Box = { value: 123 };  // Expected 1 type argument

// Generic class
class Container<T, U> {
  constructor(public first: T, public second: U) {}
}
const container: Container = new Container(1, "two");  // Expected 2 type arguments

// Partial type arguments (all or nothing)
type Pair<A, B> = [A, B];
const pair: Pair<string> = ["a", "b"];  // Expected 2, got 1

// Generic function - usually inferred, but can be explicit
function identity<T>(value: T): T {
  return value;
}
// This would error if we tried to use it as a type without args:
// const fn: typeof identity = ...  // OK
// type Fn = identity;  // Would error

// Too many type arguments
type Single<T> = T;
const single: Single<string, number> = "test";  // Expected 1, got 2
