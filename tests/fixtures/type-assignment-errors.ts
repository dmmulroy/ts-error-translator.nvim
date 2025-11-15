/**
 * Type Assignment Errors
 *
 * Covers type compatibility, assignability, and constraint violations.
 * Most common category - represents ~40% of all TypeScript errors.
 */

// ============================================================================
// TS2322: Type is not assignable to type
// ============================================================================

// Simple primitives
const num: number = "string";
const bool: boolean = 123;

// Union types
let maybeString: string | undefined;
const definiteBoolean: boolean = maybeString;

// Complex union types
type Status = "pending" | "success" | "error";
const status: Status = "loading";  // Not in union

// Generic types
const stringPromise: Promise<string> = Promise.resolve(123);

// Intersection types
type A = { a: string };
type B = { b: number };
type AB = A & B;
const notAB: AB = { a: "test" };  // Missing 'b'

// Conditional types
type IsString<T> = T extends string ? "yes" : "no";
const check: IsString<number> = "yes";  // Should be "no"

// ============================================================================
// TS2324: Property is missing in type
// ============================================================================

type User = { id: number; name: string };
const user: User = { id: 1 };  // Missing 'name'

// ============================================================================
// TS2326: Types of property are incompatible
// ============================================================================

type Config1 = { url: string };
type Config2 = { url: number };
const config: Config1 = { url: "text" };
const badConfig: Config2 = config;  // 'url' types incompatible

// ============================================================================
// TS2327: Property is optional in type A but required in type B
// ============================================================================

type OptionalAge = { name: string; age?: number };
type RequiredAge = { name: string; age: number };
const optional: OptionalAge = { name: "John" };
const required: RequiredAge = optional;  // 'age' optional vs required

// ============================================================================
// TS2344: Type does not satisfy the constraint
// ============================================================================

function mustBeString<T extends string>(value: T): T {
  return value;
}
mustBeString(123);  // number doesn't satisfy string constraint

// With multiple constraints
function mustBeObject<T extends { id: number }>(obj: T): T {
  return obj;
}
mustBeObject({ name: "John" });  // Missing 'id'

// ============================================================================
// TS2345: Argument of type X is not assignable to parameter of type Y
// ============================================================================

function greet(name: string): void {
  console.log(`Hello, ${name}`);
}
greet(123);  // number not assignable to string

// Function type parameters
function process(callback: (x: number) => string): void {
  callback(10);
}
process((x: string) => x);  // Wrong parameter type

// ============================================================================
// TS2352: Conversion may be a mistake (type assertions)
// ============================================================================

const str = "hello";
const num2 = str as number;  // string and number don't overlap

// OK conversions
const anything = str as unknown as number;  // Via 'unknown'

// ============================================================================
// TS2739: Type is missing the following properties from type
// ============================================================================

type Person = { name: string; age: number; email: string };
const person: Person = { name: "John" };  // Missing age, email

// ============================================================================
// TS2741: Property is missing in type A but required in type B
// ============================================================================

type Employee = { id: number; name: string; department: string };
type BasicInfo = { id: number };
const basic: BasicInfo = { id: 1 };
const employee: Employee = basic;  // Missing name, department

// ============================================================================
// TS2749: Value used as type (need typeof)
// ============================================================================

const MyClass = class {
  value = 42;
};
function takesType(x: MyClass) {}  // Should be: typeof MyClass
const instance = new MyClass();
takesType(instance);  // Works but wrong approach

// ============================================================================
// TS5075: Assignable to constraint but could be instantiated with different subtype
// ============================================================================

function identity<T extends string | number>(value: T): T {
  const test: T = "string";  // Error: too narrow
  return value;
}
