/**
 * Operator and Miscellaneous Errors
 *
 * Operator type errors, compiler configuration errors, and miscellaneous.
 */

// ============================================================================
// TS2365: Operator cannot be applied to types
// ============================================================================

// Subtraction on strings
const result1 = "hello" - "world";

// Multiplication on strings
const result2 = "text" * "more";

// Division on strings
const result3 = "foo" / "bar";

// Modulo on strings
const result4 = "a" % "b";

// Operator on objects
const obj1 = { a: 1 };
const obj2 = { b: 2 };
const result5 = obj1 + obj2;
const result6 = obj1 - obj2;

// Bitwise operators on incompatible types
const result7 = "string" << 2;
const result8 = true & false;

// Comparison operators on incompatible types
const result9 = [] < {};
const result10 = /regex/ > "string";

// OK: Addition on strings (concatenation)
const concat = "hello" + " " + "world";

// OK: Arithmetic on numbers
const math = 10 + 20 - 5 * 2 / 2;

// ============================================================================
// TS1208: File cannot be compiled under --isolatedModules
// ============================================================================

// Global script file (no imports/exports) when isolatedModules: true
// This file would error if it had no import/export statements

// Simulating by commenting out any imports
// const globalValue = "This is a global script";

// Fix: Add any import or export
// export {};

// ============================================================================
// TS6244: Cannot access ambient const enums when isolatedModules is enabled
// ============================================================================

// Ambient const enum declaration
declare const enum Colors {
  Red,
  Green,
  Blue
}

// Accessing ambient const enum with isolatedModules: true
const color = Colors.Red;
const colors = [Colors.Red, Colors.Green, Colors.Blue];

// OK: Regular enum (not const)
declare enum RegularColors {
  Red,
  Green,
  Blue
}
const regularColor = RegularColors.Red;  // Works

// OK: Non-ambient const enum
const enum LocalColors {
  Red,
  Green,
  Blue
}
const localColor = LocalColors.Red;  // Works in same file

// ============================================================================
// TS8016: Type assertion expressions can only be used in TypeScript files
// ============================================================================

// This would error in a .js file
// Simulated here but actual error requires .js extension

// Type assertion in .js file
// const value = getValue();
// const str = value as string;  // Error in .js

// OK in .ts file
const value = getValue() as any;
const str = value as string;

function getValue(): unknown {
  return "test";
}

// ============================================================================
// TS95050: Remove unreachable code
// ============================================================================

// Code after return
function unreachable1() {
  return "done";
  console.log("never runs");  // Unreachable
  const x = 10;  // Unreachable
}

// Code after throw
function unreachable2() {
  throw new Error("error");
  console.log("never runs");  // Unreachable
}

// Code in impossible branch
function unreachable3(x: string) {
  if (typeof x === "string") {
    return "string";
  } else {
    // x is never here due to type, but without explicit never check:
    return "never";
  }
  console.log("unreachable");  // Unreachable
}

// Code after infinite loop
function unreachable4() {
  while (true) {
    break;
  }
  return "reachable";  // Actually reachable

  while (true) {
    // no break
  }
  console.log("unreachable");  // Unreachable
}

// Conditional always true/false
function unreachable5() {
  if (true) {
    return "always";
  } else {
    console.log("never");  // Unreachable
  }

  if (false) {
    console.log("never");  // Unreachable
  }
}
