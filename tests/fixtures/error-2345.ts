// TS2345: Argument of type is not assignable to parameter of type
// This file contains function argument type errors to test translation

function greet(name: string): void {
  console.log(`Hello, ${name}`);
}

// Wrong argument type
greet(123);
greet(true);
greet({ name: "John" });

function add(a: number, b: number): number {
  return a + b;
}

// Passing string to number parameter
add(1, "2");

function process(callback: (x: number) => string): void {
  callback(10);
}

// Wrong callback signature
process((x: string) => x);
