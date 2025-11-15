// TS2339: Property does not exist on type
// This file contains property access errors to test translation

interface User {
  name: string;
  age: number;
}

const user: User = { name: "John", age: 30 };

// Accessing non-existent property
const email = user.email;
const address = user.address;

// Typo in property name
const userName = user.namee;

// Property on primitive type
const str = "hello";
const len = str.lenght;
