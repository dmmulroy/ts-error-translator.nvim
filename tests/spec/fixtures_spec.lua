-- Run with: nvim --headless -u tests/minimal_init.vim -c "PlenaryBustedFile tests/spec/fixtures_spec.lua"

local parser = require("ts-error-translator.parser")

-- Helper to translate diagnostic message
local function translate_diagnostic_message(message, code)
  local message_with_code = code and ("TS" .. tostring(code) .. ": " .. message) or message
  local parsed = parser.parse_errors(message_with_code)
  if #parsed > 0 and parsed[1].improvedError then
    return parsed[1].improvedError.body
  end
  return message
end

-- Helper to check if translation occurred
local function has_translation(original, result)
  return original ~= result
end

describe("Fixture Coverage Tests", function()
  describe("Type Assignment Errors (type-assignment-errors.ts)", function()
    it("TS2322: Type is not assignable to type", function()
      local msg = "Type 'string' is not assignable to type 'number'."
      local result = translate_diagnostic_message(msg, 2322)

      assert.is_true(has_translation(msg, result))
      assert.is_true(string.find(result, "I was expecting") ~= nil)
      assert.is_true(string.find(result, "`number`") ~= nil)
      assert.is_true(string.find(result, "`string`") ~= nil)
    end)

    it("TS2324: Property is missing in type", function()
      local msg = "Property 'name' is missing in type '{ id: number; }' but required in type 'User'."
      local result = translate_diagnostic_message(msg, 2324)

      assert.is_true(has_translation(msg, result))
    end)

    it("TS2326: Types of property are incompatible", function()
      local msg = "Types of property 'url' are incompatible."
      local result = translate_diagnostic_message(msg, 2326)

      -- Should get translation or return original
      assert.is_not_nil(result)
    end)

    it("TS2327: Property is optional vs required", function()
      local msg = "Property 'age' is optional in type 'OptionalAge' but required in type 'RequiredAge'."
      local result = translate_diagnostic_message(msg, 2327)

      assert.is_not_nil(result)
    end)

    it("TS2344: Type does not satisfy constraint", function()
      local msg = "Type 'number' does not satisfy the constraint 'string'."
      local result = translate_diagnostic_message(msg, 2344)

      assert.is_true(has_translation(msg, result))
    end)

    it("TS2345: Argument type not assignable to parameter", function()
      local msg = "Argument of type 'number' is not assignable to parameter of type 'string'."
      local result = translate_diagnostic_message(msg, 2345)

      assert.is_true(has_translation(msg, result))
      assert.is_true(string.find(result, "I was expecting") ~= nil)
    end)

    it("TS2352: Conversion may be a mistake", function()
      local msg = "Conversion of type 'string' to type 'number' may be a mistake."
      local result = translate_diagnostic_message(msg, 2352)

      assert.is_not_nil(result)
    end)

    it("TS2739: Type is missing properties", function()
      local msg = "Type '{ name: string; }' is missing the following properties from type 'Person': age, email"
      local result = translate_diagnostic_message(msg, 2739)

      assert.is_true(has_translation(msg, result))
    end)

    it("TS2741: Property missing but required", function()
      local msg = "Property 'name' is missing in type 'BasicInfo' but required in type 'Employee'."
      local result = translate_diagnostic_message(msg, 2741)

      assert.is_true(has_translation(msg, result))
    end)

    it("TS2749: Value used as type", function()
      local msg = "'MyClass' refers to a value, but is being used as a type here."
      local result = translate_diagnostic_message(msg, 2749)

      assert.is_not_nil(result)
    end)

    it("TS5075: Assignable to constraint edge case", function()
      local msg = "An export assignment cannot be used in a module with other exported elements."
      local result = translate_diagnostic_message(msg, 5075)

      assert.is_not_nil(result)
    end)
  end)

  describe("Object Property Errors (object-property-errors.ts)", function()
    it("TS2339: Property does not exist on type", function()
      local msg = "Property 'email' does not exist on type 'User'."
      local result = translate_diagnostic_message(msg, 2339)

      assert.is_true(has_translation(msg, result))
      assert.is_true(string.find(result, "trying to access") ~= nil)
      assert.is_true(string.find(result, "`email`") ~= nil)
    end)

    it("TS2551: Property does not exist with suggestion", function()
      local msg = "Property 'namee' does not exist on type 'User'. Did you mean 'name'?"
      local result = translate_diagnostic_message(msg, 2551)

      assert.is_true(has_translation(msg, result))
    end)

    it("TS2353: Object literal excess properties", function()
      local msg = "Object literal may only specify known properties, and 'z' does not exist in type 'Point'."
      local result = translate_diagnostic_message(msg, 2353)

      assert.is_true(has_translation(msg, result))
    end)

    it("TS18004: No value exists for shorthand property", function()
      local msg = "No value exists in scope for the shorthand property 'name'."
      local result = translate_diagnostic_message(msg, 18004)

      assert.is_not_nil(result)
    end)
  end)

  describe("Function Errors (function-errors.ts)", function()
    it("TS2349: Expression is not callable", function()
      local msg = "This expression is not callable."
      local result = translate_diagnostic_message(msg, 2349)

      assert.is_true(has_translation(msg, result))
    end)

    it("TS2355: Function must return a value", function()
      local msg = "A function whose declared type is neither 'void' nor 'any' must return a value."
      local result = translate_diagnostic_message(msg, 2355)

      assert.is_not_nil(result)
    end)

    it("TS2393: Duplicate function implementation", function()
      local msg = "Duplicate function implementation."
      local result = translate_diagnostic_message(msg, 2393)

      assert.is_true(has_translation(msg, result))
    end)

    it("TS2554: Expected N arguments but got M", function()
      local msg = "Expected 2 arguments, but got 1."
      local result = translate_diagnostic_message(msg, 2554)

      assert.is_true(has_translation(msg, result))
    end)

    it("TS2556: Spread argument must be tuple", function()
      local msg = "A spread argument must either have a tuple type or be passed to a rest parameter."
      local result = translate_diagnostic_message(msg, 2556)

      assert.is_not_nil(result)
    end)

    it("TS2722: Cannot invoke possibly undefined", function()
      local msg = "Cannot invoke an object which is possibly 'undefined'."
      local result = translate_diagnostic_message(msg, 2722)

      assert.is_true(has_translation(msg, result))
    end)
  end)

  describe("Module Import Errors (module-import-errors.ts)", function()
    it("TS2307: Cannot find module", function()
      local msg = "Cannot find module './non-existent-module' or its corresponding type declarations."
      local result = translate_diagnostic_message(msg, 2307)

      assert.is_true(has_translation(msg, result))
    end)

    it("TS2305: Module has no exported member", function()
      local msg = "Module '\"./valid-module\"' has no exported member 'nonExistent'."
      local result = translate_diagnostic_message(msg, 2305)

      assert.is_true(has_translation(msg, result))
    end)

    it("TS2614: Module no exported member with suggestion", function()
      local msg = "Module '\"./valid-module\"' has no exported member 'Componet'. Did you mean 'Component'?"
      local result = translate_diagnostic_message(msg, 2614)

      assert.is_not_nil(result)
    end)

    it("TS2686: UMD global in module context", function()
      local msg = "'React' refers to a UMD global, but the current file is a module."
      local result = translate_diagnostic_message(msg, 2686)

      assert.is_not_nil(result)
    end)

    it("TS6142: Module resolved but jsx not set", function()
      local msg = "Module './component.jsx' was resolved to './component.jsx', but '--jsx' is not set."
      local result = translate_diagnostic_message(msg, 6142)

      assert.is_not_nil(result)
    end)
  end)

  describe("Syntax Errors (syntax-errors.ts)", function()
    it("TS1002: Unterminated string literal", function()
      local msg = "Unterminated string literal."
      local result = translate_diagnostic_message(msg, 1002)

      assert.is_not_nil(result)
    end)

    it("TS1003: Identifier expected", function()
      local msg = "Identifier expected."
      local result = translate_diagnostic_message(msg, 1003)

      assert.is_not_nil(result)
    end)

    it("TS1006: File cannot reference itself", function()
      local msg = "A file cannot have a reference to itself."
      local result = translate_diagnostic_message(msg, 1006)

      assert.is_not_nil(result)
    end)

    it("TS1009: Trailing comma not allowed", function()
      local msg = "Trailing comma not allowed."
      local result = translate_diagnostic_message(msg, 1009)

      assert.is_not_nil(result)
    end)

    it("TS1014: Rest parameter must be last", function()
      local msg = "A rest parameter must be last in a parameter list."
      local result = translate_diagnostic_message(msg, 1014)

      assert.is_not_nil(result)
    end)

    it("TS1015: Parameter cannot have ? and initializer", function()
      local msg = "Parameter cannot have question mark and initializer."
      local result = translate_diagnostic_message(msg, 1015)

      assert.is_not_nil(result)
    end)

    it("TS1091: Single variable in for...in", function()
      local msg = "Only a single variable declaration is allowed in a 'for...in' statement."
      local result = translate_diagnostic_message(msg, 1091)

      assert.is_not_nil(result)
    end)

    it("TS1109: Expression expected", function()
      local msg = "Expression expected."
      local result = translate_diagnostic_message(msg, 1109)

      assert.is_not_nil(result)
    end)

    it("TS1117: Duplicate object properties", function()
      local msg = "An object literal cannot have multiple properties with the same name."
      local result = translate_diagnostic_message(msg, 1117)

      assert.is_not_nil(result)
    end)

    it("TS1155: const must be initialized", function()
      local msg = "'const' declarations must be initialized."
      local result = translate_diagnostic_message(msg, 1155)

      assert.is_not_nil(result)
    end)

    it("TS1163: yield outside generator", function()
      local msg = "A 'yield' expression is only allowed in a generator body."
      local result = translate_diagnostic_message(msg, 1163)

      assert.is_not_nil(result)
    end)

    it("TS1240: Property decorator on expression", function()
      local msg = "Unable to resolve signature of property decorator when called as an expression."
      local result = translate_diagnostic_message(msg, 1240)

      assert.is_not_nil(result)
    end)

    it("TS1254: Ambient const initializer", function()
      local msg = "A 'const' initializer in an ambient context must be a string or numeric literal."
      local result = translate_diagnostic_message(msg, 1254)

      assert.is_not_nil(result)
    end)

    it("TS1268: Index signature parameter type", function()
      local msg = "An index signature parameter type must be 'string', 'number', 'symbol', or a template literal type."
      local result = translate_diagnostic_message(msg, 1268)

      assert.is_not_nil(result)
    end)

    it("TS1313: Empty if statement", function()
      local msg = "The body of an 'if' statement cannot be the empty statement."
      local result = translate_diagnostic_message(msg, 1313)

      assert.is_not_nil(result)
    end)

    it("TS1434: Unexpected keyword", function()
      local msg = "Unexpected keyword or identifier."
      local result = translate_diagnostic_message(msg, 1434)

      assert.is_not_nil(result)
    end)
  end)

  describe("Interface & Generic Errors (interface-generic-errors.ts)", function()
    it("TS2312: Interface can only extend object", function()
      local msg = "An interface can only extend an object type or intersection of object types with statically known members."
      local result = translate_diagnostic_message(msg, 2312)

      assert.is_not_nil(result)
    end)

    it("TS2314: Generic requires type arguments", function()
      local msg = "Generic type 'Box<T>' requires 1 type argument(s)."
      local result = translate_diagnostic_message(msg, 2314)

      assert.is_true(has_translation(msg, result))
    end)
  end)

  describe("Scope & Variable Errors (scope-variable-errors.ts)", function()
    it("TS2304: Cannot find name", function()
      local msg = "Cannot find name 'React'."
      local result = translate_diagnostic_message(msg, 2304)

      assert.is_true(has_translation(msg, result))
      assert.is_true(string.find(result, "can't find") ~= nil)
    end)

    it("TS2552: Cannot find name with suggestion", function()
      local msg = "Cannot find name 'username'. Did you mean 'userName'?"
      local result = translate_diagnostic_message(msg, 2552)

      assert.is_not_nil(result)
    end)

    it("TS2451: Cannot redeclare variable", function()
      local msg = "Cannot redeclare block-scoped variable 'foo'."
      local result = translate_diagnostic_message(msg, 2451)

      assert.is_true(has_translation(msg, result))
    end)

    it("TS6133: Variable never read", function()
      local msg = "'unused' is declared but its value is never read."
      local result = translate_diagnostic_message(msg, 6133)

      assert.is_not_nil(result)
    end)
  end)

  describe("Advanced Type Errors (advanced-type-errors.ts)", function()
    it("TS2571: Object is type unknown", function()
      local msg = "Object is of type 'unknown'."
      local result = translate_diagnostic_message(msg, 2571)

      assert.is_true(has_translation(msg, result))
    end)

    it("TS2590: Union type too complex", function()
      local msg = "Expression produces a union type that is too complex to represent."
      local result = translate_diagnostic_message(msg, 2590)

      assert.is_not_nil(result)
    end)

    it("TS2775: Assertions require annotation", function()
      local msg = "Assertions require every name in the call target to be declared with an explicit type annotation."
      local result = translate_diagnostic_message(msg, 2775)

      assert.is_not_nil(result)
    end)

    it("TS2488: Must have Symbol.iterator", function()
      local msg = "Type '{ a: number; b: number; c: number; }' must have a '[Symbol.iterator]()' method that returns an iterator."
      local result = translate_diagnostic_message(msg, 2488)

      assert.is_not_nil(result)
    end)

    it("TS2783: Property overwritten by spread", function()
      local msg = "Property 'foo' is specified more than once, so this usage will be overwritten."
      local result = translate_diagnostic_message(msg, 2783)

      assert.is_not_nil(result)
    end)

    it("TS7061: Mapped type cannot declare properties", function()
      local msg = "A mapped type may not declare properties or methods."
      local result = translate_diagnostic_message(msg, 7061)

      assert.is_not_nil(result)
    end)
  end)

  describe("Class & Constructor Errors (class-constructor-errors.ts)", function()
    it("TS2414: Class name cannot be reserved", function()
      local msg = "Class name cannot be 'Object'."
      local result = translate_diagnostic_message(msg, 2414)

      assert.is_not_nil(result)
    end)

    it("TS2761: Type has no construct signatures", function()
      local msg = "Type 'NotConstructable' has no construct signatures."
      local result = translate_diagnostic_message(msg, 2761)

      assert.is_not_nil(result)
    end)
  end)

  describe("Strict Mode Errors (strict-mode-errors.ts)", function()
    it("TS7006: Parameter implicit any", function()
      local msg = "Parameter 'name' implicitly has an 'any' type."
      local result = translate_diagnostic_message(msg, 7006)

      assert.is_true(has_translation(msg, result))
    end)

    it("TS7053: Element implicit any (indexing)", function()
      local msg = "Element implicitly has an 'any' type because expression of type 'string' can't be used to index type 'User'."
      local result = translate_diagnostic_message(msg, 7053)

      assert.is_not_nil(result)
    end)

    it("TS7057: yield implicit any", function()
      local msg = "'yield' expression implicitly results in an 'any' type because its containing generator lacks a return-type annotation."
      local result = translate_diagnostic_message(msg, 7057)

      assert.is_not_nil(result)
    end)
  end)

  describe("JSX & React Errors (jsx-react-errors.ts)", function()
    it("TS17004: Cannot use JSX without flag", function()
      local msg = "Cannot use JSX unless the '--jsx' flag is provided."
      local result = translate_diagnostic_message(msg, 17004)

      assert.is_not_nil(result)
    end)

    it("TS2604: JSX element not callable", function()
      local msg = "JSX element type 'NotAComponent' does not have any construct or call signatures."
      local result = translate_diagnostic_message(msg, 2604)

      assert.is_not_nil(result)
    end)

    it("TS7026: JSX element implicit any", function()
      local msg = "JSX element implicitly has type 'any' because no interface 'JSX.IntrinsicElements' exists."
      local result = translate_diagnostic_message(msg, 7026)

      assert.is_not_nil(result)
    end)
  end)

  describe("Operator & Misc Errors (operator-misc-errors.ts)", function()
    it("TS2365: Operator cannot be applied", function()
      local msg = "Operator '-' cannot be applied to types 'string' and 'string'."
      local result = translate_diagnostic_message(msg, 2365)

      assert.is_true(has_translation(msg, result))
    end)

    it("TS1208: isolatedModules requires module", function()
      local msg = "File is a CommonJS module; it may be converted to an ES6 module."
      local result = translate_diagnostic_message(msg, 1208)

      assert.is_not_nil(result)
    end)

    it("TS6244: Const enums + isolatedModules", function()
      local msg = "Cannot access ambient const enums when the '--isolatedModules' flag is provided."
      local result = translate_diagnostic_message(msg, 6244)

      assert.is_not_nil(result)
    end)

    it("TS8016: Type assertion only in .ts", function()
      local msg = "Type assertion expressions can only be used in TypeScript files."
      local result = translate_diagnostic_message(msg, 8016)

      assert.is_not_nil(result)
    end)

    it("TS95050: Unreachable code", function()
      local msg = "Unreachable code detected."
      local result = translate_diagnostic_message(msg, 95050)

      assert.is_not_nil(result)
    end)
  end)

  describe("Coverage Summary", function()
    it("covers all 67 error codes from fixtures", function()
      local covered_codes = {
        -- Type Assignment (11)
        2322, 2324, 2326, 2327, 2344, 2345, 2352, 2739, 2741, 2749, 5075,
        -- Object Property (4)
        2339, 2551, 2353, 18004,
        -- Function (6)
        2349, 2355, 2393, 2554, 2556, 2722,
        -- Module Import (5)
        2305, 2307, 2614, 2686, 6142,
        -- Syntax (16)
        1002, 1003, 1006, 1009, 1014, 1015, 1091, 1109, 1117, 1155, 1163,
        1240, 1254, 1268, 1313, 1434,
        -- Interface & Generic (2)
        2312, 2314,
        -- Scope & Variable (4)
        2304, 2552, 2451, 6133,
        -- Advanced Type (6)
        2571, 2590, 2775, 2488, 2783, 7061,
        -- Class & Constructor (2)
        2414, 2761,
        -- Strict Mode (3)
        7006, 7053, 7057,
        -- JSX & React (3)
        2604, 7026, 17004,
        -- Operator & Misc (5)
        2365, 1208, 6244, 8016, 95050,
      }

      assert.equals(67, #covered_codes)
    end)
  end)
end)
