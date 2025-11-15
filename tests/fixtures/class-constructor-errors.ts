/**
 * Class and Constructor Errors
 *
 * Class naming restrictions and constructor signature errors.
 */

// ============================================================================
// TS2414: Class name cannot be reserved word
// ============================================================================

// Reserved built-in names
class Object {}  // Cannot use 'Object'
class String {}  // Cannot use 'String'
class Number {}  // Cannot use 'Number'
class Boolean {}  // Cannot use 'Boolean'
class Array {}  // Cannot use 'Array'
class Function {}  // Cannot use 'Function'
class Date {}  // Cannot use 'Date'
class RegExp {}  // Cannot use 'RegExp'
class Error {}  // Cannot use 'Error'

// OK: These are fine
class MyObject {}
class CustomString {}

// ============================================================================
// TS2761: Type has no construct signatures
// ============================================================================

// Not a constructor - object type
type NotConstructable = { foo: string; bar: number };
const instance1 = new NotConstructable();

// Function type (not constructor)
type FunctionType = (x: number) => string;
const fn = new FunctionType();

// Interface without constructor
interface INotConstructable {
  value: number;
}
const instance2 = new INotConstructable();

// Generic constraint without constructor
function create<T>(Type: T) {
  return new Type();  // T has no construct signatures
}

// OK: Using constructor signature
type Constructor<T> = new () => T;
function createInstance<T>(Type: Constructor<T>): T {
  return new Type();
}

class MyClass {
  value = 42;
}
const instance3 = createInstance(MyClass);  // Works

// OK: Using abstract constructors
type AbstractConstructor<T> = abstract new (...args: any[]) => T;
