-- Run with: nvim --headless -u tests/minimal_init.vim -c "PlenaryBustedFile tests/spec/db_spec.lua"

local db = require("ts-error-translator.db")
local parser = require("ts-error-translator.parser")

describe("TypeScript Error Database", function()
  describe("Basic validation", function()
    local error_codes = {
      1002, 1003, 1006, 1009, 1014, 1015, 1091, 1109, 1117, 1155,
      1163, 1208, 1240, 1254, 1268, 1313, 1434, 2304, 2305, 2307,
      2312, 2314, 2322, 2324, 2326, 2327, 2339, 2344, 2345, 2349,
      2352, 2353, 2355, 2365, 2393, 2414, 2451, 2488, 2551, 2552,
      2554, 2556, 2571, 2590, 2604, 2614, 2686, 2722, 2739, 2741,
      2749, 2761, 2775, 2783, 5075, 6133, 6142, 6244, 7006, 7026,
      7053, 7057, 7061, 8016, 17004, 18004, 95050,
    }

    for _, code in ipairs(error_codes) do
      it("TS" .. code .. " exists and has required fields", function()
        assert.is_not_nil(db[code])
        assert.is_not_nil(db[code].pattern)
        assert.is_not_nil(db[code].category)
        assert.is_not_nil(db[code].improved_message)
        assert.is_string(db[code].pattern)
        assert.is_string(db[code].category)
        assert.is_string(db[code].improved_message)
      end)
    end
  end)

  describe("Realistic error parsing", function()
    it("TS1002 - Unterminated string literal", function()
      local result = parser.parse_errors("error TS1002: Unterminated string literal.")
      assert.equals(1, #result)
      assert.equals(1002, result[1].code)
      assert.are.same({}, result[1].parseInfo.items)
      assert.is_not_nil(result[1].improvedError)
    end)

    it("TS1003 - Identifier expected", function()
      local result = parser.parse_errors("error TS1003: Identifier expected.")
      assert.equals(1, #result)
      assert.equals(1003, result[1].code)
      assert.are.same({}, result[1].parseInfo.items)
      assert.is_not_nil(result[1].improvedError)
    end)

    it("TS1006 - A file cannot have a reference to itself", function()
      local result = parser.parse_errors("error TS1006: A file cannot have a reference to itself.")
      assert.equals(1, #result)
      assert.equals(1006, result[1].code)
      assert.are.same({}, result[1].parseInfo.items)
      assert.is_not_nil(result[1].improvedError)
    end)

    it("TS1009 - Trailing comma not allowed", function()
      local result = parser.parse_errors("error TS1009: Trailing comma not allowed.")
      assert.equals(1, #result)
      assert.equals(1009, result[1].code)
      assert.are.same({}, result[1].parseInfo.items)
      assert.is_not_nil(result[1].improvedError)
    end)

    it("TS1014 - A rest parameter must be last in a parameter list", function()
      local result = parser.parse_errors("error TS1014: A rest parameter must be last in a parameter list.")
      assert.equals(1, #result)
      assert.equals(1014, result[1].code)
      assert.are.same({}, result[1].parseInfo.items)
      assert.is_not_nil(result[1].improvedError)
    end)

    it("TS1015 - Parameter cannot have question mark and initializer", function()
      local result =
        parser.parse_errors("error TS1015: Parameter cannot have question mark and initializer.")
      assert.equals(1, #result)
      assert.equals(1015, result[1].code)
      assert.are.same({}, result[1].parseInfo.items)
      assert.is_not_nil(result[1].improvedError)
    end)

    it("TS1091 - Only a single variable declaration is allowed", function()
      local result = parser.parse_errors(
        "error TS1091: Only a single variable declaration is allowed in a 'for...in' statement."
      )
      assert.equals(1, #result)
      assert.equals(1091, result[1].code)
      assert.are.same({}, result[1].parseInfo.items)
      assert.is_not_nil(result[1].improvedError)
    end)

    it("TS1109 - Expression expected", function()
      local result = parser.parse_errors("error TS1109: Expression expected.")
      assert.equals(1, #result)
      assert.equals(1109, result[1].code)
      assert.are.same({}, result[1].parseInfo.items)
      assert.is_not_nil(result[1].improvedError)
    end)

    it("TS1117 - An object literal cannot have multiple properties with the same name", function()
      local result = parser.parse_errors(
        "error TS1117: An object literal cannot have multiple properties with the same name."
      )
      assert.equals(1, #result)
      assert.equals(1117, result[1].code)
      assert.are.same({}, result[1].parseInfo.items)
      assert.is_not_nil(result[1].improvedError)
    end)

    it("TS1155 - 'const' declarations must be initialized", function()
      local result = parser.parse_errors("error TS1155: 'const' declarations must be initialized.")
      assert.equals(1, #result)
      assert.equals(1155, result[1].code)
      assert.are.same({}, result[1].parseInfo.items)
      assert.is_not_nil(result[1].improvedError)
    end)

    it("TS1163 - A 'yield' expression is only allowed in a generator body", function()
      local result =
        parser.parse_errors("error TS1163: A 'yield' expression is only allowed in a generator body.")
      assert.equals(1, #result)
      assert.equals(1163, result[1].code)
      assert.are.same({}, result[1].parseInfo.items)
      assert.is_not_nil(result[1].improvedError)
    end)

    it("TS1208 - isolatedModules flag", function()
      local result = parser.parse_errors(
        "error TS1208: 'app.ts' cannot be compiled under '--isolatedModules' because it is considered a global script file. Add an import, export, or an empty 'export {}' statement to make it a module."
      )
      assert.equals(1, #result)
      assert.equals(1208, result[1].code)
      assert.are.same({ "app.ts" }, result[1].parseInfo.items)
      assert.is_not_nil(result[1].improvedError)
      -- Improved message doesn't use {0}, so don't check for backticks
    end)

    it("TS1240 - Unable to resolve signature of property decorator", function()
      local result = parser.parse_errors(
        "error TS1240: Unable to resolve signature of property decorator when called as an expression."
      )
      assert.equals(1, #result)
      assert.equals(1240, result[1].code)
      assert.are.same({}, result[1].parseInfo.items)
      assert.is_not_nil(result[1].improvedError)
    end)

    it("TS1254 - A 'const' initializer in an ambient context", function()
      local result = parser.parse_errors(
        "error TS1254: A 'const' initializer in an ambient context must be a string or numeric literal or literal enum reference."
      )
      assert.equals(1, #result)
      assert.equals(1254, result[1].code)
      assert.are.same({}, result[1].parseInfo.items)
      assert.is_not_nil(result[1].improvedError)
    end)

    it("TS1268 - An index signature parameter type", function()
      local result = parser.parse_errors(
        "error TS1268: An index signature parameter type must be 'string', 'number', 'symbol', or a template literal type."
      )
      assert.equals(1, #result)
      assert.equals(1268, result[1].code)
      assert.are.same({}, result[1].parseInfo.items)
      assert.is_not_nil(result[1].improvedError)
    end)

    it("TS1313 - The body of an 'if' statement cannot be the empty statement", function()
      local result = parser.parse_errors(
        "error TS1313: The body of an 'if' statement cannot be the empty statement."
      )
      assert.equals(1, #result)
      assert.equals(1313, result[1].code)
      assert.are.same({}, result[1].parseInfo.items)
      assert.is_not_nil(result[1].improvedError)
    end)

    it("TS1434 - Unexpected keyword or identifier", function()
      local result = parser.parse_errors("error TS1434: Unexpected keyword or identifier.")
      assert.equals(1, #result)
      assert.equals(1434, result[1].code)
      assert.are.same({}, result[1].parseInfo.items)
      assert.is_not_nil(result[1].improvedError)
    end)

    it("TS2304 - Cannot find name", function()
      local result = parser.parse_errors("error TS2304: Cannot find name 'React'.")
      assert.equals(1, #result)
      assert.equals(2304, result[1].code)
      assert.are.same({ "React" }, result[1].parseInfo.items)
      assert.is_not_nil(result[1].improvedError)
      -- Improved message doesn't use {0}, so don't check for backticks
    end)

    it("TS2305 - Module has no exported member", function()
      local result =
        parser.parse_errors("error TS2305: Module 'react' has no exported member 'Component'.")
      assert.equals(1, #result)
      assert.equals(2305, result[1].code)
      assert.are.same({ "react", "Component" }, result[1].parseInfo.items)
      assert.is_not_nil(result[1].improvedError)
      assert.is_true(string.find(result[1].improvedError.body, "`Component`") ~= nil)
      assert.is_true(string.find(result[1].improvedError.body, "`react`") ~= nil)
    end)

    it("TS2307 - Cannot find module", function()
      local result = parser.parse_errors(
        "error TS2307: Cannot find module './utils' or its corresponding type declarations."
      )
      assert.equals(1, #result)
      assert.equals(2307, result[1].code)
      assert.are.same({ "./utils" }, result[1].parseInfo.items)
      assert.is_not_nil(result[1].improvedError)
      assert.is_true(string.find(result[1].improvedError.body, "`./utils`") ~= nil)
    end)

    it("TS2312 - An interface can only extend an object type", function()
      local result = parser.parse_errors(
        "error TS2312: An interface can only extend an object type or intersection of object types with statically known members."
      )
      assert.equals(1, #result)
      assert.equals(2312, result[1].code)
      assert.are.same({}, result[1].parseInfo.items)
      assert.is_not_nil(result[1].improvedError)
    end)

    it("TS2314 - Generic type requires type arguments", function()
      local result =
        parser.parse_errors("error TS2314: Generic type 'Array' requires 1 type argument(s).")
      assert.equals(1, #result)
      assert.equals(2314, result[1].code)
      assert.are.same({ "Array", "1" }, result[1].parseInfo.items)
      assert.is_not_nil(result[1].improvedError)
      assert.is_true(string.find(result[1].improvedError.body, "`Array`") ~= nil)
      assert.is_true(string.find(result[1].improvedError.body, "`1`") ~= nil)
    end)

    it("TS2322 - Type is not assignable", function()
      local result =
        parser.parse_errors("error TS2322: Type 'string' is not assignable to type 'number'.")
      assert.equals(1, #result)
      assert.equals(2322, result[1].code)
      assert.are.same({ "string", "number" }, result[1].parseInfo.items)
      assert.is_not_nil(result[1].improvedError)
      assert.is_true(string.find(result[1].improvedError.body, "`string`") ~= nil)
      assert.is_true(string.find(result[1].improvedError.body, "`number`") ~= nil)
    end)

    it("TS2324 - Property is missing in type", function()
      local result = parser.parse_errors("error TS2324: Property 'name' is missing in type 'User'.")
      assert.equals(1, #result)
      assert.equals(2324, result[1].code)
      assert.are.same({ "name", "User" }, result[1].parseInfo.items)
      assert.is_not_nil(result[1].improvedError)
      assert.is_true(string.find(result[1].improvedError.body, "`name`") ~= nil)
      assert.is_true(string.find(result[1].improvedError.body, "`User`") ~= nil)
    end)

    it("TS2326 - Types of property are incompatible", function()
      local result = parser.parse_errors("error TS2326: Types of property 'id' are incompatible.")
      assert.equals(1, #result)
      assert.equals(2326, result[1].code)
      assert.are.same({ "id" }, result[1].parseInfo.items)
      assert.is_not_nil(result[1].improvedError)
      assert.is_true(string.find(result[1].improvedError.body, "`id`") ~= nil)
    end)

    it("TS2327 - Property is optional in one type but required in another", function()
      local result = parser.parse_errors(
        "error TS2327: Property 'age' is optional in type 'Person' but required in type 'Employee'."
      )
      assert.equals(1, #result)
      assert.equals(2327, result[1].code)
      assert.are.same({ "age", "Person", "Employee" }, result[1].parseInfo.items)
      assert.is_not_nil(result[1].improvedError)
      assert.is_true(string.find(result[1].improvedError.body, "`age`") ~= nil)
      assert.is_true(string.find(result[1].improvedError.body, "`Employee`") ~= nil)
    end)

    it("TS2339 - Property does not exist on type", function()
      local result =
        parser.parse_errors("error TS2339: Property 'foo' does not exist on type 'Bar'.")
      assert.equals(1, #result)
      assert.equals(2339, result[1].code)
      assert.are.same({ "foo", "Bar" }, result[1].parseInfo.items)
      assert.is_not_nil(result[1].improvedError)
      assert.is_true(string.find(result[1].improvedError.body, "`foo`") ~= nil)
      -- Improved message only uses {0}, not {1}
    end)

    it("TS2344 - Type does not satisfy the constraint", function()
      local result =
        parser.parse_errors("error TS2344: Type 'number' does not satisfy the constraint 'string'.")
      assert.equals(1, #result)
      assert.equals(2344, result[1].code)
      assert.are.same({ "number", "string" }, result[1].parseInfo.items)
      assert.is_not_nil(result[1].improvedError)
      assert.is_true(string.find(result[1].improvedError.body, "`number`") ~= nil)
      assert.is_true(string.find(result[1].improvedError.body, "`string`") ~= nil)
    end)

    it("TS2345 - Argument of type is not assignable to parameter", function()
      local result = parser.parse_errors(
        "error TS2345: Argument of type 'number' is not assignable to parameter of type 'string'."
      )
      assert.equals(1, #result)
      assert.equals(2345, result[1].code)
      assert.are.same({ "number", "string" }, result[1].parseInfo.items)
      assert.is_not_nil(result[1].improvedError)
      assert.is_true(string.find(result[1].improvedError.body, "`number`") ~= nil)
      assert.is_true(string.find(result[1].improvedError.body, "`string`") ~= nil)
    end)

    it("TS2349 - This expression is not callable", function()
      local result = parser.parse_errors("error TS2349: This expression is not callable.")
      assert.equals(1, #result)
      assert.equals(2349, result[1].code)
      assert.are.same({}, result[1].parseInfo.items)
      assert.is_not_nil(result[1].improvedError)
    end)

    it("TS2352 - Conversion may be a mistake", function()
      local result = parser.parse_errors(
        "error TS2352: Conversion of type 'string' to type 'number' may be a mistake because neither type sufficiently overlaps with the other. If this was intentional, convert the expression to 'unknown' first."
      )
      assert.equals(1, #result)
      assert.equals(2352, result[1].code)
      assert.are.same({ "string", "number" }, result[1].parseInfo.items)
      assert.is_not_nil(result[1].improvedError)
      assert.is_true(string.find(result[1].improvedError.body, "`string`") ~= nil)
      assert.is_true(string.find(result[1].improvedError.body, "`number`") ~= nil)
    end)

    it("TS2353 - Object literal may only specify known properties", function()
      local result = parser.parse_errors(
        "error TS2353: Object literal may only specify known properties, and 'extra' does not exist in type 'User'."
      )
      assert.equals(1, #result)
      assert.equals(2353, result[1].code)
      assert.are.same({ "extra", "User" }, result[1].parseInfo.items)
      assert.is_not_nil(result[1].improvedError)
      assert.is_true(string.find(result[1].improvedError.body, "`extra`") ~= nil)
      assert.is_true(string.find(result[1].improvedError.body, "`User`") ~= nil)
    end)

    it("TS2355 - A function must return a value", function()
      local result = parser.parse_errors(
        "error TS2355: A function whose declared type is neither 'void' nor 'any' must return a value."
      )
      assert.equals(1, #result)
      assert.equals(2355, result[1].code)
      assert.are.same({}, result[1].parseInfo.items)
      assert.is_not_nil(result[1].improvedError)
    end)

    it("TS2365 - Operator cannot be applied to types", function()
      local result = parser.parse_errors(
        "error TS2365: Operator '+' cannot be applied to types 'string' and 'number'."
      )
      assert.equals(1, #result)
      assert.equals(2365, result[1].code)
      assert.are.same({ "+", "string", "number" }, result[1].parseInfo.items)
      assert.is_not_nil(result[1].improvedError)
      -- Use plain text search (4th param = true) since + is a Lua pattern special char
      assert.is_true(string.find(result[1].improvedError.body, "`+`", 1, true) ~= nil)
      assert.is_true(string.find(result[1].improvedError.body, "`string`", 1, true) ~= nil)
      assert.is_true(string.find(result[1].improvedError.body, "`number`", 1, true) ~= nil)
    end)

    it("TS2393 - Duplicate function implementation", function()
      local result = parser.parse_errors("error TS2393: Duplicate function implementation.")
      assert.equals(1, #result)
      assert.equals(2393, result[1].code)
      assert.are.same({}, result[1].parseInfo.items)
      assert.is_not_nil(result[1].improvedError)
    end)

    it("TS2414 - Class name cannot be", function()
      local result = parser.parse_errors("error TS2414: Class name cannot be 'Object'.")
      assert.equals(1, #result)
      assert.equals(2414, result[1].code)
      assert.are.same({ "Object" }, result[1].parseInfo.items)
      assert.is_not_nil(result[1].improvedError)
      assert.is_true(string.find(result[1].improvedError.body, "`Object`") ~= nil)
    end)

    it("TS2451 - Cannot redeclare block-scoped variable", function()
      local result =
        parser.parse_errors("error TS2451: Cannot redeclare block-scoped variable 'foo'.")
      assert.equals(1, #result)
      assert.equals(2451, result[1].code)
      assert.are.same({ "foo" }, result[1].parseInfo.items)
      assert.is_not_nil(result[1].improvedError)
      assert.is_true(string.find(result[1].improvedError.body, "`foo`") ~= nil)
    end)

    it("TS2488 - Type must have Symbol.iterator", function()
      local result = parser.parse_errors(
        "error TS2488: Type 'Object' must have a '[Symbol.iterator]()' method that returns an iterator."
      )
      assert.equals(1, #result)
      assert.equals(2488, result[1].code)
      assert.are.same({ "Object" }, result[1].parseInfo.items)
      assert.is_not_nil(result[1].improvedError)
      assert.is_true(string.find(result[1].improvedError.body, "`Object`") ~= nil)
    end)

    it("TS2551 - Property does not exist - did you mean", function()
      local result = parser.parse_errors(
        "error TS2551: Property 'lenght' does not exist on type 'string'. Did you mean 'length'?"
      )
      assert.equals(1, #result)
      assert.equals(2551, result[1].code)
      assert.are.same({ "lenght", "string", "length" }, result[1].parseInfo.items)
      assert.is_not_nil(result[1].improvedError)
      assert.is_true(string.find(result[1].improvedError.body, "`lenght`") ~= nil)
      assert.is_true(string.find(result[1].improvedError.body, "`length`") ~= nil)
    end)

    it("TS2552 - Cannot find name - did you mean", function()
      local result =
        parser.parse_errors("error TS2552: Cannot find name 'consle'. Did you mean 'console'?")
      assert.equals(1, #result)
      assert.equals(2552, result[1].code)
      assert.are.same({ "consle", "console" }, result[1].parseInfo.items)
      assert.is_not_nil(result[1].improvedError)
    end)

    it("TS2554 - Expected arguments but got", function()
      local result = parser.parse_errors("error TS2554: Expected 2 arguments, but got 1.")
      assert.equals(1, #result)
      assert.equals(2554, result[1].code)
      assert.are.same({ "2", "1" }, result[1].parseInfo.items)
      assert.is_not_nil(result[1].improvedError)
      assert.is_true(string.find(result[1].improvedError.body, "`2`") ~= nil)
      assert.is_true(string.find(result[1].improvedError.body, "`1`") ~= nil)
    end)

    it("TS2556 - A spread argument must have a tuple type", function()
      local result = parser.parse_errors(
        "error TS2556: A spread argument must either have a tuple type or be passed to a rest parameter."
      )
      assert.equals(1, #result)
      assert.equals(2556, result[1].code)
      assert.are.same({}, result[1].parseInfo.items)
      assert.is_not_nil(result[1].improvedError)
    end)

    it("TS2571 - Object is of type 'unknown'", function()
      local result = parser.parse_errors("error TS2571: Object is of type 'unknown'.")
      assert.equals(1, #result)
      assert.equals(2571, result[1].code)
      assert.are.same({}, result[1].parseInfo.items)
      assert.is_not_nil(result[1].improvedError)
    end)

    it("TS2590 - Expression produces a union type that is too complex", function()
      local result = parser.parse_errors(
        "error TS2590: Expression produces a union type that is too complex to represent."
      )
      assert.equals(1, #result)
      assert.equals(2590, result[1].code)
      assert.are.same({}, result[1].parseInfo.items)
      assert.is_not_nil(result[1].improvedError)
    end)

    it("TS2604 - JSX element type does not have construct or call signatures", function()
      local result = parser.parse_errors(
        "error TS2604: JSX element type 'MyComponent' does not have any construct or call signatures."
      )
      assert.equals(1, #result)
      assert.equals(2604, result[1].code)
      assert.are.same({ "MyComponent" }, result[1].parseInfo.items)
      assert.is_not_nil(result[1].improvedError)
      assert.is_true(string.find(result[1].improvedError.body, "`MyComponent`") ~= nil)
    end)

    it("TS2614 - Module has no exported member - did you mean", function()
      local result = parser.parse_errors(
        "error TS2614: Module 'react' has no exported member 'Componet'. Did you mean to use 'import Componet from react' instead?"
      )
      assert.equals(1, #result)
      assert.equals(2614, result[1].code)
      assert.are.same({ "react", "Componet" }, result[1].parseInfo.items)
      assert.is_not_nil(result[1].improvedError)
      assert.is_true(string.find(result[1].improvedError.body, "`Componet`") ~= nil)
      assert.is_true(string.find(result[1].improvedError.body, "`react`") ~= nil)
    end)

    it("TS2686 - Refers to a UMD global", function()
      local result = parser.parse_errors(
        "error TS2686: 'React' refers to a UMD global, but the current file is a module. Consider adding an import instead."
      )
      assert.equals(1, #result)
      assert.equals(2686, result[1].code)
      assert.are.same({ "React" }, result[1].parseInfo.items)
      assert.is_not_nil(result[1].improvedError)
      -- Improved message doesn't use {0}, so don't check for backticks
    end)

    it("TS2722 - Cannot invoke an object which is possibly 'undefined'", function()
      local result =
        parser.parse_errors("error TS2722: Cannot invoke an object which is possibly 'undefined'.")
      assert.equals(1, #result)
      assert.equals(2722, result[1].code)
      assert.are.same({}, result[1].parseInfo.items)
      assert.is_not_nil(result[1].improvedError)
    end)

    it("TS2739 - Type is missing properties", function()
      local result = parser.parse_errors(
        "error TS2739: Type 'User' is missing the following properties from type 'Employee': name, age"
      )
      assert.equals(1, #result)
      assert.equals(2739, result[1].code)
      assert.are.same({ "User", "Employee", "name, age" }, result[1].parseInfo.items)
      assert.is_not_nil(result[1].improvedError)
      assert.is_true(string.find(result[1].improvedError.body, "`User`") ~= nil)
      assert.is_true(string.find(result[1].improvedError.body, "`Employee`") ~= nil)
      assert.is_true(string.find(result[1].improvedError.body, "`name, age`") ~= nil)
    end)

    it("TS2741 - Property is missing but required", function()
      local result = parser.parse_errors(
        "error TS2741: Property 'name' is missing in type 'User' but required in type 'Employee'."
      )
      assert.equals(1, #result)
      assert.equals(2741, result[1].code)
      assert.are.same({ "name", "User", "Employee" }, result[1].parseInfo.items)
      assert.is_not_nil(result[1].improvedError)
      assert.is_true(string.find(result[1].improvedError.body, "`name`") ~= nil)
      assert.is_true(string.find(result[1].improvedError.body, "`User`") ~= nil)
      assert.is_true(string.find(result[1].improvedError.body, "`Employee`") ~= nil)
    end)

    it("TS2749 - Refers to a value but is being used as a type", function()
      local result = parser.parse_errors(
        "error TS2749: 'MyClass' refers to a value, but is being used as a type here. Did you mean 'typeof MyClass'?"
      )
      assert.equals(1, #result)
      assert.equals(2749, result[1].code)
      assert.are.same({ "MyClass" }, result[1].parseInfo.items)
      assert.is_not_nil(result[1].improvedError)
      -- Improved message doesn't use {0}, so don't check for backticks
    end)

    it("TS2761 - Type has no construct signatures", function()
      local result = parser.parse_errors("error TS2761: Type 'Function' has no construct signatures.")
      assert.equals(1, #result)
      assert.equals(2761, result[1].code)
      assert.are.same({ "Function" }, result[1].parseInfo.items)
      assert.is_not_nil(result[1].improvedError)
      assert.is_true(string.find(result[1].improvedError.body, "`Function`") ~= nil)
    end)

    it("TS2775 - Assertions require explicit type annotation", function()
      local result = parser.parse_errors(
        "error TS2775: Assertions require every name in the call target to be declared with an explicit type annotation."
      )
      assert.equals(1, #result)
      assert.equals(2775, result[1].code)
      assert.are.same({}, result[1].parseInfo.items)
      assert.is_not_nil(result[1].improvedError)
    end)

    it("TS2783 - Property will be overwritten", function()
      local result = parser.parse_errors(
        "error TS2783: 'foo' is specified more than once, so this usage will be overwritten."
      )
      assert.equals(1, #result)
      assert.equals(2783, result[1].code)
      assert.are.same({ "foo" }, result[1].parseInfo.items)
      assert.is_not_nil(result[1].improvedError)
      assert.is_true(string.find(result[1].improvedError.body, "`foo`") ~= nil)
    end)

    it("TS5075 - Type assignable to constraint but could be instantiated with different subtype", function()
      local result = parser.parse_errors(
        "error TS5075: 'string' is assignable to the constraint of type 'T', but 'T' could be instantiated with a different subtype of constraint 'string | number'."
      )
      assert.equals(1, #result)
      assert.equals(5075, result[1].code)
      assert.are.same({ "string", "T", "string | number" }, result[1].parseInfo.items)
      assert.is_not_nil(result[1].improvedError)
      assert.is_true(string.find(result[1].improvedError.body, "`string`") ~= nil)
      -- Improved message uses {0} and {2}, but not {1}
      assert.is_true(string.find(result[1].improvedError.body, "`string | number`") ~= nil)
    end)

    it("TS6133 - Variable is declared but never used", function()
      local result =
        parser.parse_errors("error TS6133: 'myVar' is declared but its value is never read.")
      assert.equals(1, #result)
      assert.equals(6133, result[1].code)
      assert.are.same({ "myVar" }, result[1].parseInfo.items)
      assert.is_not_nil(result[1].improvedError)
      assert.is_true(string.find(result[1].improvedError.body, "`myVar`") ~= nil)
    end)

    it("TS6142 - Module resolved but jsx not set", function()
      local result = parser.parse_errors(
        "error TS6142: Module 'react' was resolved to '/node_modules/react/index.js', but '--jsx' is not set."
      )
      assert.equals(1, #result)
      assert.equals(6142, result[1].code)
      assert.are.same({ "react", "/node_modules/react/index.js" }, result[1].parseInfo.items)
      assert.is_not_nil(result[1].improvedError)
    end)

    it("TS6244 - Cannot access ambient const enums with isolatedModules", function()
      local result =
        parser.parse_errors("error TS6244: Cannot access ambient const enums when 'isolatedModules' is enabled.")
      assert.equals(1, #result)
      assert.equals(6244, result[1].code)
      assert.are.same({}, result[1].parseInfo.items)
      assert.is_not_nil(result[1].improvedError)
    end)

    it("TS7006 - Parameter implicitly has an 'any' type", function()
      local result =
        parser.parse_errors("error TS7006: Parameter 'foo' implicitly has an 'any' type.")
      assert.equals(1, #result)
      assert.equals(7006, result[1].code)
      assert.are.same({ "foo", "any" }, result[1].parseInfo.items)
      assert.is_not_nil(result[1].improvedError)
      assert.is_true(string.find(result[1].improvedError.body, "`foo`") ~= nil)
      assert.is_true(string.find(result[1].improvedError.body, "`any`") ~= nil)
    end)

    it("TS7026 - JSX element implicitly has type 'any'", function()
      local result = parser.parse_errors(
        "error TS7026: JSX element implicitly has type 'any' because no interface 'JSX.IntrinsicElements' exists."
      )
      assert.equals(1, #result)
      assert.equals(7026, result[1].code)
      assert.are.same({ "IntrinsicElements" }, result[1].parseInfo.items)
      assert.is_not_nil(result[1].improvedError)
    end)

    it("TS7053 - Element implicitly has an 'any' type", function()
      local result = parser.parse_errors(
        "error TS7053: Element implicitly has an 'any' type because expression of type 'string' can't be used to index type 'User'."
      )
      assert.equals(1, #result)
      assert.equals(7053, result[1].code)
      assert.are.same({ "string", "User" }, result[1].parseInfo.items)
      assert.is_not_nil(result[1].improvedError)
      assert.is_true(string.find(result[1].improvedError.body, "`string`") ~= nil)
      assert.is_true(string.find(result[1].improvedError.body, "`User`") ~= nil)
    end)

    it("TS7057 - 'yield' expression implicitly results in 'any' type", function()
      local result = parser.parse_errors(
        "error TS7057: 'yield' expression implicitly results in an 'any' type because its containing generator lacks a return-type annotation."
      )
      assert.equals(1, #result)
      assert.equals(7057, result[1].code)
      assert.are.same({}, result[1].parseInfo.items)
      assert.is_not_nil(result[1].improvedError)
    end)

    it("TS7061 - A mapped type may not declare properties or methods", function()
      local result = parser.parse_errors(
        "error TS7061: A mapped type may not declare properties or methods."
      )
      assert.equals(1, #result)
      assert.equals(7061, result[1].code)
      assert.are.same({}, result[1].parseInfo.items)
      assert.is_not_nil(result[1].improvedError)
    end)

    it("TS8016 - Type assertion expressions can only be used in TypeScript files", function()
      local result = parser.parse_errors(
        "error TS8016: Type assertion expressions can only be used in TypeScript files."
      )
      assert.equals(1, #result)
      assert.equals(8016, result[1].code)
      assert.are.same({}, result[1].parseInfo.items)
      assert.is_not_nil(result[1].improvedError)
    end)

    it("TS17004 - Cannot use JSX unless the '--jsx' flag is provided", function()
      local result =
        parser.parse_errors("error TS17004: Cannot use JSX unless the '--jsx' flag is provided.")
      assert.equals(1, #result)
      assert.equals(17004, result[1].code)
      assert.are.same({}, result[1].parseInfo.items)
      assert.is_not_nil(result[1].improvedError)
    end)

    it("TS18004 - No value exists in scope for shorthand property", function()
      local result = parser.parse_errors(
        "error TS18004: No value exists in scope for the shorthand property 'name'. Either declare one or provide an initializer."
      )
      assert.equals(1, #result)
      assert.equals(18004, result[1].code)
      assert.are.same({ "name" }, result[1].parseInfo.items)
      assert.is_not_nil(result[1].improvedError)
      assert.is_true(string.find(result[1].improvedError.body, "`name`") ~= nil)
    end)

    it("TS95050 - Remove unreachable code", function()
      local result = parser.parse_errors("error TS95050: Remove unreachable code")
      assert.equals(1, #result)
      assert.equals(95050, result[1].code)
      assert.are.same({}, result[1].parseInfo.items)
      assert.is_not_nil(result[1].improvedError)
    end)
  end)
end)
