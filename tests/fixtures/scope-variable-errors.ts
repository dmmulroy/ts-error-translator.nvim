/**
 * Scope and Variable Errors
 *
 * Variable declaration, scope, redeclaration, and unused variables.
 */

// ============================================================================
// TS2304: Cannot find name
// ============================================================================

// Undefined variable
const value = undefinedVariable;

// Missing import (common case)
const element = React.createElement("div");  // React not imported

// Typo in variable name
const x = 10;
const result = y;  // 'y' not defined

// Using variable before declaration
const early = later;
const later = "defined later";

// Browser/Node globals without proper types
const body = document.body;  // Might not have DOM types
const process = global.process;  // Might not have Node types

// ============================================================================
// TS2552: Cannot find name (with suggestion)
// ============================================================================

// Variable typo
const userName = "John";
const greeting = `Hello ${username}`;  // Did you mean 'userName'?

// Function typo
function calculateTotal() { return 100; }
const total = calculatTotal();  // Did you mean 'calculateTotal'?

// Type typo
interface UserData { id: number }
const data: UserDta = { id: 1 };  // Did you mean 'UserData'?

// ============================================================================
// TS2451: Cannot redeclare block-scoped variable
// ============================================================================

// Redeclaration in same scope
const foo = 1;
const foo = 2;  // Cannot redeclare

// Let redeclaration
let bar = "first";
let bar = "second";  // Cannot redeclare

// Function scope redeclaration
function scopeTest() {
  let inner = 1;
  let inner = 2;  // Cannot redeclare in same scope
}

// Block scope is OK
{
  let blockScoped = 1;
}
{
  let blockScoped = 2;  // OK - different scope
}

// var allows redeclaration (but not in strict mode)
var oldStyle = 1;
var oldStyle = 2;  // Depends on strict mode

// ============================================================================
// TS6133: Variable is declared but its value is never read
// ============================================================================

// Unused variable
const unused = "never used";

// Unused function
function neverCalled() {
  return 42;
}

// Unused parameter
function hasUnusedParam(used: string, unused: number) {
  return used;
}

// Unused in block scope
function blockScope() {
  const local = "not used";
  return "something else";
}

// Unused import
import { Component, Helper } from "./modules/valid-module";
// Only Component is used below
const comp = Component;

// OK: Prefixed with underscore (convention)
const _intentionallyUnused = "for future use";
function withUnusedParam(used: string, _unused: number) {
  return used;
}
