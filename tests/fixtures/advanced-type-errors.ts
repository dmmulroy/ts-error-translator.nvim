/**
 * Advanced Type Errors
 *
 * Mapped types, conditional types, assertions, iterators, and complex type operations.
 */

// ============================================================================
// TS2571: Object is of type 'unknown'
// ============================================================================

// JSON.parse returns unknown in strict mode
function processJson(json: string) {
  const data = JSON.parse(json);
  console.log(data.foo);  // Object is of type 'unknown'
}

// Unknown from type guard
function isString(value: unknown): value is string {
  return typeof value === "string";
}

function process(value: unknown) {
  value.toString();  // Object is of type 'unknown'
}

// Catch clause binding
try {
  throw new Error("test");
} catch (error) {
  console.log(error.message);  // error is unknown in strict mode
}

// ============================================================================
// TS2590: Expression produces a union type that is too complex to represent
// ============================================================================

// Recursive type that explodes combinatorially
type Explode<T, N extends number, A extends any[] = []> =
  A['length'] extends N ? T :
  T | Explode<T | T | T | T, N, [T, ...A]>;

// This would create millions of type combinations
type TooBig = Explode<string, 15>;

// Another example: deep Pick combinations
type DeepPartial<T> = {
  [P in keyof T]?: T[P] extends object ? DeepPartial<T[P]> : T[P];
};

// With deeply nested objects, this can explode
type Nested = {
  a: { b: { c: { d: { e: { f: { g: { h: string } } } } } } };
  x: { y: { z: string } };
};
type PartialNested = DeepPartial<Nested>;

// ============================================================================
// TS2775: Assertions require every name in the call target to be declared with an explicit type annotation
// ============================================================================

// Assertion on arrow function (not allowed)
const assertString = (x: any): asserts x is string => {
  if (typeof x !== "string") throw new Error("Not a string");
};

// OK: using function keyword
function assertStringFn(x: any): asserts x is string {
  if (typeof x !== "string") throw new Error("Not a string");
}

// Assertion predicate without proper signature
const assertPositive = (n: number): asserts n => {
  if (n <= 0) throw new Error("Not positive");
};

// ============================================================================
// TS2488: Type must have a Symbol.iterator method that returns an iterator
// ============================================================================

// Plain object is not iterable
const notIterable = { a: 1, b: 2, c: 3 };
for (const item of notIterable) {
  console.log(item);
}

// Custom type without iterator
type CustomCollection = {
  items: string[];
  count: number;
};

const collection: CustomCollection = {
  items: ["a", "b", "c"],
  count: 3
};

for (const item of collection) {  // Not iterable
  console.log(item);
}

// OK: Implementing Symbol.iterator
const iterable = {
  items: [1, 2, 3],
  [Symbol.iterator]() {
    let index = 0;
    const items = this.items;
    return {
      next() {
        if (index < items.length) {
          return { value: items[index++], done: false };
        }
        return { value: undefined, done: true };
      }
    };
  }
};

// ============================================================================
// TS2783: Property is specified more than once, so this usage will be overwritten
// ============================================================================

// Spread overwrites earlier properties
const obj1 = {
  foo: 1,
  bar: 2,
  ...{ foo: 3 }  // 'foo' will be overwritten
};

// Multiple spreads
const obj2 = {
  a: 1,
  ...{ a: 2 },
  ...{ a: 3 }  // 'a' overwritten again
};

// Property after spread
const obj3 = {
  ...{ value: 100 },
  value: 200  // Intentional override is OK
};

// ============================================================================
// TS7061: A mapped type may not declare properties or methods
// ============================================================================

// Mixing mapped and static properties
type BadMapped<T> = {
  [K in keyof T]: T[K];
  staticProp: string;  // Cannot mix
};

// Another example
type AlsoBad<T> = {
  [K in keyof T]: string;
  toString(): string;  // Cannot add method to mapped type
};

// OK: Intersection instead
type GoodMapped<T> = {
  [K in keyof T]: T[K];
} & {
  staticProp: string;
};
