// TS2304: Cannot find name
// This file contains undefined variable/import errors to test translation

// Missing import
const element = React.createElement("div");

// Undefined variable
const value = undefinedVar;

// Typo in variable name
const x = 10;
const y = xx;

// Using browser globals without declaration
const body = document.body;
const win = window;
