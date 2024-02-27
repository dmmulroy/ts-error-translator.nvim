---@class TSErrorTemplate
---@field original string
---@field translated string

---@type { [number]: TSErrorTemplate }
local M = {}

M[1002] = {
  original = "Unterminated string literal.",
  translated = "You've started a string (via a single or double quote) but haven't ended it.",
}

M[1003] = {
  original = "Identifier expected.",
  translated = "I was expecting a name but none was provided.",
}

M[1006] = {
  original = "A file cannot have a reference to itself.",
  translated = "You've got a triple-slash reference inside a file that's referencing itself.",
}

M[1009] = {
  original = "Trailing comma not allowed.",
  translated = "You've added a trailing comma when you're not supposed to add it.",
}

M[1014] = {
  original = "A rest parameter must be last in a parameter list.",
  translated = "A parameter in a function that starts with `...` must be the last one in the list.",
}

M[1015] = {
  original = "Parameter cannot have question mark and initializer.",
  translated = "You can use a question mark or an default value, but not both at once.",
}

M[1091] = {
  original = "Only a single variable declaration is allowed in a 'for...in' statement.",
  translated = "You can only create a single variable in a 'for...in' statement",
}

M[1109] = {
  original = "Expression expected.",
  translated = "I am expecting a code that resolves to a value.",
}

M[1117] = {
  original = "An object literal cannot have multiple properties with the same name.",
  translated = "You can't add the same property multiple times to an object.",
}

M[1155] = {
  original = "'const' declarations must be initialized.",
  translated = "A `const` must be given a value when it's declared.",
}

M[1163] = {
  original = "A 'yield' expression is only allowed in a generator body.",
  translated = "The `yield` keyword can only be used inside a generator function",
}

M[1208] = {
  original = "'{0}' cannot be compiled under '--isolatedModules' because it is considered a global script file. Add an import, export, or an empty 'export {}' statement to make it a module.",
  translated = "You have set the 'isolatedModules' flag. Therefore all implementation files must be modules (which means it has some form of import/export). Add an import, export, or an empty 'export {}' statement to make it a module.",
}

M[1240] = {
  original = "Unable to resolve signature of property decorator when called as an expression.",
  translated = "You can't use a decorator on an expression, like an arrow function.",
}

M[1254] = {
  original = "A 'const' initializer in an ambient context must be a string or numeric literal or literal enum reference.",
  translated = "You can't use runtime code in a declaration file.",
}

M[1268] = {
  original = "An index signature parameter type must be 'string', 'number', 'symbol', or a template literal type.",
  translated = "Objects in TypeScript (and JavaScript!) can only have strings, numbers or symbols as keys. [Template literal types](https://www.typescriptlang.org/docs/handbook/2/template-literal-types.html) are a way of constructing strings.",
}

M[1313] = {
  original = "The body of an 'if' statement cannot be the empty statement.",
  translated = "An if statement shouldn't be empty",
}

M[1434] = {
  original = "Unexpected keyword or identifier.",
  translated = "There's a syntax error in your code, so I can't tell exactly what's wrong.",
}

M[17004] = {
  original = "Cannot use JSX unless the '--jsx' flag is provided.",
  translated = "You can't use JSX yet because you haven't added `jsx` to your `tsconfig.json`. [Learn more](https://www.totaltypescript.com/cannot-use-jsx-unless-the-jsx-flag-is-provided).",
}

M[18004] = {
  original = "No value exists in scope for the shorthand property '{0}'. Either declare one or provide an initializer.",
  translated = "You're trying to pass '{0}' as a key AND value to this object using a shorthand. You'll need to declare '{0}' as a variable first.",
}

M[2304] = {
  original = "Cannot find name '{0}'.",
  translated = "I can't find the variable you're trying to access.",
}

M[2305] = {
  original = "Module '{0}' has no exported member '{1}'.",
  translated = "'{1}' is not one of the things exported from '{0}'.",
}

M[2307] = {
  original = "Cannot find module '{0}' or its corresponding type declarations.",
  translated = "This could be one of two things - either '{0}' doesn't exist on your file system, or I can't find any type declarations for it.",
}

M[2312] = {
  original = "An interface can only extend an object type or intersection of object types with statically known members.",
  translated = "You might be trying to use an interface to extend a union type. This isn't possible.",
}

M[2314] = {
  original = "Generic type '{0}' requires {1} type argument(s).",
  translated = "It looks like '{0}' requires '{1}' type arguments, which means you need to pass them in via a generic.",
}

M[2322] = {
  original = "Type '{0}' is not assignable to type '{1}'.",
  translated = "I was expecting a type matching '{1}', but instead you passed '{0}'.",
}

M[2324] = {
  original = "Property '{0}' is missing in type '{1}'.",
  translated = "You haven't passed all the required properties to '{1}' - you've missed out '{0}'",
}

M[2326] = {
  original = "Types of property '{0}' are incompatible.",
  translated = "Two similar types have a property '{0}' which is different, making them incompatible.",
}

M[2327] = {
  original = "Property '{0}' is optional in type '{1}' but required in type '{2}'.",
  translated = "Property '{0}' in type '{2}' must exist.",
}

M[2339] = {
  original = "Property '{0}' does not exist on type '{1}'.",
  translated = "You're trying to access '{0}' on an object that doesn't contain it. [Learn more](https://totaltypescript.com/concepts/property-does-not-exist-on-type).",
}

M[2344] = {
  original = "Type '{0}' does not satisfy the constraint '{1}'.",
  translated = "You're trying to pass in '{0}' into a slot where I can see only '{1}' can be passed.",
}

M[2345] = {
  original = "Argument of type '{0}' is not assignable to parameter of type '{1}'.",
  translated = "I was expecting '{1}', but you passed '{0}'.",
}

M[2349] = {
  original = "This expression is not callable.",
  translated = "I can't call this expression because I can't call it like a function.",
}

M[2352] = {
  original = "Conversion of type '{0}' to type '{1}' may be a mistake because neither type sufficiently overlaps with the other. If this was intentional, convert the expression to 'unknown' first.",
  translated = "You can't use 'as' to convert '{0}' into a '{1}' - they don't share enough in common.",
}

M[2353] = {
  original = "Object literal may only specify known properties, and '{0}' does not exist in type '{1}'.",
  translated = "You can't pass property '{0}' to type '{1}'.",
}

M[2355] = {
  original = "A function whose declared type is neither 'void' nor 'any' must return a value.",
  translated = "You set the function return type but it is not returning anything.",
}

M[2365] = {
  original = "Operator '{0}' cannot be applied to types '{1}' and '{2}'.",
  translated = "You can't use '{0}' on the types '{1}' and '{2}'.",
}

M[2393] = {
  original = "Duplicate function implementation.",
  translated = "You've already declared a function with the same name.",
}

M[2414] = {
  original = "Class name cannot be '{0}'",
  translated = "You can't give a class the name of '{0}' because it's protected by TypeScript.",
}

M[2351] = {
  original = "Cannot redeclare block-scoped variable '{0}'.",
  translated = "'{0}' has already been declared - you can't declare it again. [Learn more](https://www.totaltypescript.com/cannot-redeclare-block-scoped-variable).",
}

M[2488] = {
  original = "Type '{0}' must have a '[Symbol.iterator]()' method that returns an iterator.",
  translated = "Type '{0}' isn't iterable. To make it iterable, add a [`Symbol.iterator`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Symbol/iterator) key.",
}

M[2551] = {
  original = "Property '{0}' does not exist on type '{1}'. Did you mean '{2}'?",
  translated = "You're trying to access '{0}' on an object that doesn't contain it. Did you mean '{2}'?",
}

M[2552] = {
  original = "Cannot find name '{0}'. Did you mean '{1}'?",
  translated = "You are trying to reference a function or variable which I can't find in the current scope.",
}

M[2554] = {
  original = "Expected {0} arguments, but got {1}.",
  translated = "The function you're trying to call needs {0} arguments, but you're passing {1}.",
}

M[2556] = {
  original = "A spread argument must either have a tuple type or be passed to a rest parameter.",
  translated = "You're spreading arguments into a function. To do that, either the argument needs to be a tuple OR the function needs to accept a dynamic number of arguments.",
}

M[2571] = {
  original = "Object is of type 'unknown'.",
  translated = "I don't know what type this object is, so I've defaulted it to 'unknown'. [Learn more](https://www.totaltypescript.com/concepts/object-is-of-type-unknown).",
}

M[2590] = {
  original = "undefined",
  translated = "You've created a union type that's too complex for me to handle! 🤯 I can only represent 100,000 combinations in the same union, and you've gone over that limit.",
}

M[2604] = {
  original = "JSX element type '{0}' does not have any construct or call signatures.",
  translated = "'{0}' cannot be used as a JSX component because it isn't a function.",
}

M[2614] = {
  original = "Module '{0}' has no exported member '{1}'. Did you mean to use 'import {1} from {0}' instead?",
  translated = "'{1}' is not one of the things exported from '{0}'. Did you mean to import '{1}' from '{0}' instead?",
}

M[2686] = {
  original = "'{0}' refers to a UMD global, but the current file is a module. Consider adding an import instead.",
  translated = "You might not have configured `jsx` in your `tsconfig.json` correctly. [Learn more](https://www.totaltypescript.com/react-refers-to-a-umd-global).",
}

M[2722] = {
  original = "Cannot invoke an object which is possibly 'undefined'.",
  translated = "This function might be undefined. You'll need to check it's defined before calling it.",
}

M[2739] = {
  original = "Type '{0}' is missing the following properties from type '{1}': {2}",
  translated = "'{0}' is missing some required properties from type '{1}': {2}.",
}

M[2741] = {
  original = "Property '{0}' is missing in type '{1}' but required in type '{2}'.",
  translated = "You haven't passed all the required properties to '{2}' - '{1}' is missing the '{0}' property.",
}

M[2749] = {
  original = "'{0}' refers to a value, but is being used as a type here. Did you mean 'typeof {0}'?",
  translated = "You're trying to use a JavaScript variable where you should be passing a type.",
}

M[2761] = {
  original = "Type '{0}' has no construct signatures.",
  translated = "Type '{0}' is not a class.",
}

M[2755] = {
  original = "Assertions require every name in the call target to be declared with an explicit type annotation.",
  translated = "You might be using an `asserts` keyword on an arrow function. If you are, change the function to use the `function` keyword.",
}

M[2783] = {
  original = "'{0}' is specified more than once, so this usage will be overwritten.",
  translated = "'{0}' will be overwritten by the spread.",
}

M[5075] = {
  original = "'{0}' is assignable to the constraint of type '{1}', but '{1}' could be instantiated with a different subtype of constraint '{2}'.",
  translated = "You're passing a type '{0}' into a slot which is too narrow. It could be as wide as anything assignable to '{2}'.",
}

M[6133] = {
  original = "'{0}' is declared but its value is never read.",
  translated = "I noticed that '{0}' has been declared, but it's never used in the code.",
}

M[6142] = {
  original = "Module '{0}' was resolved to '{1}', but '--jsx' is not set.",
  translated = "You can't import `.jsx` or `.tsx` files until you set `jsx` in your `tsconfig.json`.",
}

M[6244] = {
  original = "Cannot access ambient const enums when 'isolatedModules' is enabled.",
  translated = "You can't use const enums when `isolatedModules` is enabled.",
}

M[7006] = {
  original = "Parameter '{0}' implicitly has an '{1}' type.",
  translated = "I don't know what type '{0}' is supposed to be, so I've defaulted it to '{1}'. Your `tsconfig.json` file says I should throw an error here. [Learn more](https://www.totaltypescript.com/tutorials/beginners-typescript/beginner-s-typescript-section/implicit-any-type-error).",
}

M[7026] = {
  original = "JSX element implicitly has type 'any' because no interface 'JSX.{0}' exists.",
  translated = "`JSX.IntrinsicElements` has not been declared in the global scope. [Learn more](https://www.totaltypescript.com/what-is-jsx-intrinsicelements).",
}

M[7053] = {
  original = "Element implicitly has an 'any' type because expression of type '{0}' can't be used to index type '{1}'.",
  translated = "You can't use '{0}' to index into '{1}'. [This article](https://www.totaltypescript.com/concepts/type-string-cannot-be-used-to-index-type) might help.",
}

M[7057] = {
  original = "'yield' expression implicitly results in an 'any' type because its containing generator lacks a return-type annotation.",
  translated = "I don't know enough about your generator function's return type to safely infer here.",
}

M[7061] = {
  original = "A mapped type may not declare properties or methods.",
  translated = "You're trying to create a mapped type with both static and dynamic properties.",
}

M[8016] = {
  original = "Type assertion expressions can only be used in TypeScript files.",
  translated = "You can't use type assertions because this isn't a TypeScript file.",
}

M[95050] = {
  original = "Remove unreachable code",
  translated = "I've spotted a bit of code that will never be run.",
}

return M
