/**
 * JSX and React Errors
 *
 * JSX-specific errors including component types and JSX configuration.
 * Note: Using .ts extension, not .tsx
 */

// ============================================================================
// TS17004: Cannot use JSX unless the --jsx flag is provided
// ============================================================================

// Without jsx flag in tsconfig, this errors
const element = <div>Hello World</div>;

// Template literal alternative would work
const template = `<div>Hello World</div>`;

// React.createElement works without jsx flag
// const elementAlt = React.createElement("div", null, "Hello World");

// ============================================================================
// TS2604: JSX element type does not have any construct or call signatures
// ============================================================================

// String is not a valid component
const NotAComponent = "string";
const bad1 = <NotAComponent />;

// Number is not a component
const AlsoNotComponent = 123;
const bad2 = <AlsoNotComponent />;

// Object is not a component
const ObjectComponent = { render: () => "Hello" };
const bad3 = <ObjectComponent />;

// Array is not a component
const ArrayComponent = ["H", "i"];
const bad4 = <ArrayComponent />;

// OK: Function component
const FunctionComponent = () => <div>Hello</div>;
const good1 = <FunctionComponent />;

// OK: Class component
class ClassComponent {
  render() {
    return <div>Hello</div>;
  }
}
const good2 = <ClassComponent />;

// ============================================================================
// TS7026: JSX element implicitly has type 'any' because no interface JSX.IntrinsicElements exists
// ============================================================================

// This requires removing @types/react or not having it installed
// When JSX.IntrinsicElements isn't defined, custom elements get 'any'

// Custom element without JSX namespace
const custom1 = <customElement />;
const custom2 = <my-web-component />;
const custom3 = <unknown-tag />;

// OK: When @types/react is present
const div = <div />;  // 'div' is in JSX.IntrinsicElements
const span = <span>text</span>;

// Simulating missing JSX namespace
declare namespace JSXWithoutElements {
  interface Element {}
  interface ElementClass {}
}

// Would cause error if used as JSX pragma
