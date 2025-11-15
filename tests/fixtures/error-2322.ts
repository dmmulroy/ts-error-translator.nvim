// TS2322: Type is not assignable to type
// This file contains various type assignment errors to test translation

// Simple type mismatch
const simpleNumber: number = "string";

// Union type mismatch
let myVar: string | undefined;
const clientId: boolean = myVar;

// Complex union type
type ComplexUnion = string | number | boolean;
const value: string = { foo: "bar" } as ComplexUnion;

// Intersection type
type A = { a: string };
type B = { b: number };
type AB = A & B;
const partial: AB = { a: "test" };
