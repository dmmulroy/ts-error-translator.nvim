// Complex type errors across multiple error codes
// This file tests translation of complex TypeScript types

// TS2322 with generics
type Result<T> = { data: T; error: null } | { data: null; error: string };
const result: Result<string> = { data: 123, error: null };

// TS2741 with intersection types
type Person = { name: string };
type Employee = { employeeId: number };
type EmployeePerson = Person & Employee;
const employee: EmployeePerson = { name: "John" };

// TS2345 with nested generics
function fetchData<T>(url: string): Promise<T> {
  return Promise.resolve({} as T);
}

fetchData<string>(123);

// TS2339 with mapped types
type Mapped<T> = { [K in keyof T]: T[K] };
type User = { id: number; name: string };
const mapped: Mapped<User> = { id: 1, name: "Test" };
const invalid = mapped.email;

// TS2554 with union types
function choose(option: "a" | "b" | "c"): void {
  console.log(option);
}

choose("d");

// TS2322 with conditional types
type IsString<T> = T extends string ? true : false;
const check: IsString<number> = true;
