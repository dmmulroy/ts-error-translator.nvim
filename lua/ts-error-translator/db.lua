return {
  [1002] = {
    pattern = "Unterminated string literal.",
    category = "Error",
    improved_message = "You've started a string (via a single or double quote) but haven't ended it."
  },
  [1003] = {
    pattern = "Identifier expected.",
    category = "Error",
    improved_message = "I was expecting a name but none was provided."
  },
  [1006] = {
    pattern = "A file cannot have a reference to itself.",
    category = "Error",
    improved_message = "You've got a triple-slash reference inside a file that's referencing itself."
  },
  [1009] = {
    pattern = "Trailing comma not allowed.",
    category = "Error",
    improved_message = "You've added a trailing comma when you're not supposed to add it."
  },
  [1014] = {
    pattern = "A rest parameter must be last in a parameter list.",
    category = "Error",
    improved_message = "A parameter in a function that starts with `...` must be the last one in the list."
  },
  [1015] = {
    pattern = "Parameter cannot have question mark and initializer.",
    category = "Error",
    improved_message = "You can use a question mark or an default value, but not both at once."
  },
  [1091] = {
    pattern = "Only a single variable declaration is allowed in a 'for...in' statement.",
    category = "Error",
    improved_message = "You can only create a single variable in a 'for...in' statement"
  },
  [1109] = {
    pattern = "Expression expected.",
    category = "Error",
    improved_message = "I am expecting a code that resolves to a value."
  },
  [1117] = {
    pattern = "An object literal cannot have multiple properties with the same name.",
    category = "Error",
    improved_message = "You can't add the same property multiple times to an object."
  },
  [1155] = {
    pattern = "'const' declarations must be initialized.",
    category = "Error",
    improved_message = "A `const` must be given a value when it's declared."
  },
  [1163] = {
    pattern = "A 'yield' expression is only allowed in a generator body.",
    category = "Error",
    improved_message = "The `yield` keyword can only be used inside a generator function"
  },
  [1208] = {
    pattern = "'{0}' cannot be compiled under '--isolatedModules' because it is considered a global script file. Add an import, export, or an empty 'export {}' statement to make it a module.",
    category = "Error",
    improved_message = "You have set the 'isolatedModules' flag. Therefore all implementation files must be modules (which means it has some form of import/export). Add an import, export, or an empty 'export {}' statement to make it a module."
  },
  [1240] = {
    pattern = "Unable to resolve signature of property decorator when called as an expression.",
    category = "Error",
    improved_message = "You can't use a decorator on an expression, like an arrow function."
  },
  [1254] = {
    pattern = "A 'const' initializer in an ambient context must be a string or numeric literal or literal enum reference.",
    category = "Error",
    improved_message = "You can't use runtime code in a declaration file."
  },
  [1268] = {
    pattern = "An index signature parameter type must be 'string', 'number', 'symbol', or a template literal type.",
    category = "Error",
    improved_message = "Objects in TypeScript (and JavaScript!) can only have strings, numbers or symbols as keys. [Template literal types](https://www.typescriptlang.org/docs/handbook/2/template-literal-types.html) are a way of constructing strings."
  },
  [1313] = {
    pattern = "The body of an 'if' statement cannot be the empty statement.",
    category = "Error",
    improved_message = "An if statement shouldn't be empty"
  },
  [1434] = {
    pattern = "Unexpected keyword or identifier.",
    category = "Error",
    improved_message = "There's a syntax error in your code, so I can't tell exactly what's wrong."
  },
  [2304] = {
    pattern = "Cannot find name '{0}'.",
    category = "Error",
    improved_message = "I can't find the variable you're trying to access."
  },
  [2305] = {
    pattern = "Module '{0}' has no exported member '{1}'.",
    category = "Error",
    improved_message = "'{1}' is not one of the things exported from '{0}'."
  },
  [2307] = {
    pattern = "Cannot find module '{0}' or its corresponding type declarations.",
    category = "Error",
    improved_message = "This could be one of two things - either '{0}' doesn't exist on your file system, or I can't find any type declarations for it."
  },
  [2312] = {
    pattern = "An interface can only extend an object type or intersection of object types with statically known members.",
    category = "Error",
    improved_message = "You might be trying to use an interface to extend a union type. This isn't possible."
  },
  [2314] = {
    pattern = "Generic type '{0}' requires {1} type argument(s).",
    category = "Error",
    improved_message = "It looks like '{0}' requires '{1}' type arguments, which means you need to pass them in via a generic."
  },
  [2322] = {
    pattern = "Type '{0}' is not assignable to type '{1}'.",
    category = "Error",
    improved_message = "I was expecting a type matching '{1}', but instead you passed '{0}'."
  },
  [2324] = {
    pattern = "Property '{0}' is missing in type '{1}'.",
    category = "Error",
    improved_message = "You haven't passed all the required properties to '{1}' - you've missed out '{0}'"
  },
  [2326] = {
    pattern = "Types of property '{0}' are incompatible.",
    category = "Error",
    improved_message = "Two similar types have a property '{0}' which is different, making them incompatible."
  },
  [2327] = {
    pattern = "Property '{0}' is optional in type '{1}' but required in type '{2}'.",
    category = "Error",
    improved_message = "Property '{0}' in type '{2}' must exist."
  },
  [2339] = {
    pattern = "Property '{0}' does not exist on type '{1}'.",
    category = "Error",
    improved_message = "You're trying to access '{0}' on an object that doesn't contain it. [Learn more](https://totaltypescript.com/concepts/property-does-not-exist-on-type)."
  },
  [2344] = {
    pattern = "Type '{0}' does not satisfy the constraint '{1}'.",
    category = "Error",
    improved_message = "You're trying to pass in '{0}' into a slot where I can see only '{1}' can be passed."
  },
  [2345] = {
    pattern = "Argument of type '{0}' is not assignable to parameter of type '{1}'.",
    category = "Error",
    improved_message = "I was expecting '{1}', but you passed '{0}'."
  },
  [2349] = {
    pattern = "This expression is not callable.",
    category = "Error",
    improved_message = "I can't call this expression because I can't call it like a function."
  },
  [2352] = {
    pattern = "Conversion of type '{0}' to type '{1}' may be a mistake because neither type sufficiently overlaps with the other. If this was intentional, convert the expression to 'unknown' first.",
    category = "Error",
    improved_message = "You can't use 'as' to convert '{0}' into a '{1}' - they don't share enough in common."
  },
  [2353] = {
    pattern = "Object literal may only specify known properties, and '{0}' does not exist in type '{1}'.",
    category = "Error",
    improved_message = "You can't pass property '{0}' to type '{1}'."
  },
  [2355] = {
    pattern = "A function whose declared type is neither 'void' nor 'any' must return a value.",
    category = "Error",
    improved_message = "You set the function return type but it is not returning anything."
  },
  [2365] = {
    pattern = "Operator '{0}' cannot be applied to types '{1}' and '{2}'.",
    category = "Error",
    improved_message = "You can't use '{0}' on the types '{1}' and '{2}'."
  },
  [2393] = {
    pattern = "Duplicate function implementation.",
    category = "Error",
    improved_message = "You've already declared a function with the same name."
  },
  [2414] = {
    pattern = "Class name cannot be '{0}'.",
    category = "Error",
    improved_message = "You can't give a class the name of '{0}' because it's protected by TypeScript."
  },
  [2451] = {
    pattern = "Cannot redeclare block-scoped variable '{0}'.",
    category = "Error",
    improved_message = "'{0}' has already been declared - you can't declare it again. [Learn more](https://www.totaltypescript.com/cannot-redeclare-block-scoped-variable)."
  },
  [2488] = {
    pattern = "Type '{0}' must have a '[Symbol.iterator]()' method that returns an iterator.",
    category = "Error",
    improved_message = "Type '{0}' isn't iterable. To make it iterable, add a [`Symbol.iterator`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Symbol/iterator) key."
  },
  [2551] = {
    pattern = "Property '{0}' does not exist on type '{1}'. Did you mean '{2}'?",
    category = "Error",
    improved_message = "You're trying to access '{0}' on an object that doesn't contain it. Did you mean '{2}'?"
  },
  [2552] = {
    pattern = "Cannot find name '{0}'. Did you mean '{1}'?",
    category = "Error",
    improved_message = "You are trying to reference a function or variable which I can't find in the current scope."
  },
  [2554] = {
    pattern = "Expected {0} arguments, but got {1}.",
    category = "Error",
    improved_message = "The function you're trying to call needs {0} arguments, but you're passing {1}."
  },
  [2556] = {
    pattern = "A spread argument must either have a tuple type or be passed to a rest parameter.",
    category = "Error",
    improved_message = "You're spreading arguments into a function. To do that, either the argument needs to be a tuple OR the function needs to accept a dynamic number of arguments."
  },
  [2571] = {
    pattern = "Object is of type 'unknown'.",
    category = "Error",
    improved_message = "I don't know what type this object is, so I've defaulted it to 'unknown'. [Learn more](https://www.totaltypescript.com/concepts/object-is-of-type-unknown)."
  },
  [2590] = {
    pattern = "Expression produces a union type that is too complex to represent.",
    category = "Error",
    improved_message = "You've created a union type that's too complex for me to handle! 🤯 I can only represent 100,000 combinations in the same union, and you've gone over that limit."
  },
  [2604] = {
    pattern = "JSX element type '{0}' does not have any construct or call signatures.",
    category = "Error",
    improved_message = "'{0}' cannot be used as a JSX component because it isn't a function."
  },
  [2614] = {
    pattern = "Module '{0}' has no exported member '{1}'. Did you mean to use 'import {1} from {0}' instead?",
    category = "Error",
    improved_message = "'{1}' is not one of the things exported from '{0}'. Did you mean to import '{1}' from '{0}' instead?"
  },
  [2686] = {
    pattern = "'{0}' refers to a UMD global, but the current file is a module. Consider adding an import instead.",
    category = "Error",
    improved_message = "You might not have configured `jsx` in your `tsconfig.json` correctly. [Learn more](https://www.totaltypescript.com/react-refers-to-a-umd-global)."
  },
  [2722] = {
    pattern = "Cannot invoke an object which is possibly 'undefined'.",
    category = "Error",
    improved_message = "This function might be undefined. You'll need to check it's defined before calling it."
  },
  [2739] = {
    pattern = "Type '{0}' is missing the following properties from type '{1}': {2}",
    category = "Error",
    improved_message = "'{0}' is missing some required properties from type '{1}': {2}."
  },
  [2741] = {
    pattern = "Property '{0}' is missing in type '{1}' but required in type '{2}'.",
    category = "Error",
    improved_message = "You haven't passed all the required properties to '{2}' - '{1}' is missing the '{0}' property."
  },
  [2749] = {
    pattern = "'{0}' refers to a value, but is being used as a type here. Did you mean 'typeof {0}'?",
    category = "Error",
    improved_message = "You're trying to use a JavaScript variable where you should be passing a type."
  },
  [2761] = {
    pattern = "Type '{0}' has no construct signatures.",
    category = "Error",
    improved_message = "Type '{0}' is not a class."
  },
  [2775] = {
    pattern = "Assertions require every name in the call target to be declared with an explicit type annotation.",
    category = "Error",
    improved_message = "You might be using an `asserts` keyword on an arrow function. If you are, change the function to use the `function` keyword."
  },
  [2783] = {
    pattern = "'{0}' is specified more than once, so this usage will be overwritten.",
    category = "Error",
    improved_message = "'{0}' will be overwritten by the spread."
  },
  [5075] = {
    pattern = "'{0}' is assignable to the constraint of type '{1}', but '{1}' could be instantiated with a different subtype of constraint '{2}'.",
    category = "Error",
    improved_message = "You're passing a type '{0}' into a slot which is too narrow. It could be as wide as anything assignable to '{2}'."
  },
  [6133] = {
    pattern = "'{0}' is declared but its value is never read.",
    category = "Error",
    improved_message = "I noticed that '{0}' has been declared, but it's never used in the code."
  },
  [6142] = {
    pattern = "Module '{0}' was resolved to '{1}', but '--jsx' is not set.",
    category = "Error",
    improved_message = "You can't import `.jsx` or `.tsx` files until you set `jsx` in your `tsconfig.json`."
  },
  [6244] = {
    pattern = "Cannot access ambient const enums when 'isolatedModules' is enabled.",
    category = "Message",
    improved_message = "You can't use const enums when `isolatedModules` is enabled."
  },
  [7006] = {
    pattern = "Parameter '{0}' implicitly has an '{1}' type.",
    category = "Error",
    improved_message = "I don't know what type '{0}' is supposed to be, so I've defaulted it to '{1}'. Your `tsconfig.json` file says I should throw an error here. [Learn more](https://www.totaltypescript.com/tutorials/beginners-typescript/beginner-s-typescript-section/implicit-any-type-error)."
  },
  [7026] = {
    pattern = "JSX element implicitly has type 'any' because no interface 'JSX.{0}' exists.",
    category = "Error",
    improved_message = "`JSX.IntrinsicElements` has not been declared in the global scope. [Learn more](https://www.totaltypescript.com/what-is-jsx-intrinsicelements)."
  },
  [7053] = {
    pattern = "Element implicitly has an 'any' type because expression of type '{0}' can't be used to index type '{1}'.",
    category = "Error",
    improved_message = "You can't use '{0}' to index into '{1}'. [This article](https://www.totaltypescript.com/concepts/type-string-cannot-be-used-to-index-type) might help."
  },
  [7057] = {
    pattern = "'yield' expression implicitly results in an 'any' type because its containing generator lacks a return-type annotation.",
    category = "Error",
    improved_message = "I don't know enough about your generator function's return type to safely infer here."
  },
  [7061] = {
    pattern = "A mapped type may not declare properties or methods.",
    category = "Error",
    improved_message = "You're trying to create a mapped type with both static and dynamic properties."
  },
  [8016] = {
    pattern = "Type assertion expressions can only be used in TypeScript files.",
    category = "Error",
    improved_message = "You can't use type assertions because this isn't a TypeScript file."
  },
  [17004] = {
    pattern = "Cannot use JSX unless the '--jsx' flag is provided.",
    category = "Error",
    improved_message = "You can't use JSX yet because you haven't added `jsx` to your `tsconfig.json`. [Learn more](https://www.totaltypescript.com/cannot-use-jsx-unless-the-jsx-flag-is-provided)."
  },
  [18004] = {
    pattern = "No value exists in scope for the shorthand property '{0}'. Either declare one or provide an initializer.",
    category = "Error",
    improved_message = "You're trying to pass '{0}' as a key AND value to this object using a shorthand. You'll need to declare '{0}' as a variable first."
  },
  [95050] = {
    pattern = "Remove unreachable code",
    category = "Message",
    improved_message = "I've spotted a bit of code that will never be run."
  },
}
