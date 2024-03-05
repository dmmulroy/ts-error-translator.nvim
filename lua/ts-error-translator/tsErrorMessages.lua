local error_db = {
	["Unterminated string literal."] = {
		category = "Error",
		code = 1002,
	},
	["Identifier expected."] = {
		category = "Error",
		code = 1003,
	},
	["'{0}' expected."] = {
		category = "Error",
		code = 1005,
	},
	["A file cannot have a reference to itself."] = {
		category = "Error",
		code = 1006,
	},
	["The parser expected to find a '{1}' to match the '{0}' token here."] = {
		category = "Error",
		code = 1007,
	},
	["Trailing comma not allowed."] = {
		category = "Error",
		code = 1009,
	},
	["'*/' expected."] = {
		category = "Error",
		code = 1010,
	},
	["An element access expression should take an argument."] = {
		category = "Error",
		code = 1011,
	},
	["Unexpected token."] = {
		category = "Error",
		code = 1012,
	},
	["A rest parameter or binding pattern may not have a trailing comma."] = {
		category = "Error",
		code = 1013,
	},
	["A rest parameter must be last in a parameter list."] = {
		category = "Error",
		code = 1014,
	},
	["Parameter cannot have question mark and initializer."] = {
		category = "Error",
		code = 1015,
	},
	["A required parameter cannot follow an optional parameter."] = {
		category = "Error",
		code = 1016,
	},
	["An index signature cannot have a rest parameter."] = {
		category = "Error",
		code = 1017,
	},
	["An index signature parameter cannot have an accessibility modifier."] = {
		category = "Error",
		code = 1018,
	},
	["An index signature parameter cannot have a question mark."] = {
		category = "Error",
		code = 1019,
	},
	["An index signature parameter cannot have an initializer."] = {
		category = "Error",
		code = 1020,
	},
	["An index signature must have a type annotation."] = {
		category = "Error",
		code = 1021,
	},
	["An index signature parameter must have a type annotation."] = {
		category = "Error",
		code = 1022,
	},
	["'readonly' modifier can only appear on a property declaration or index signature."] = {
		category = "Error",
		code = 1024,
	},
	["An index signature cannot have a trailing comma."] = {
		category = "Error",
		code = 1025,
	},
	["Accessibility modifier already seen."] = {
		category = "Error",
		code = 1028,
	},
	["'{0}' modifier must precede '{1}' modifier."] = {
		category = "Error",
		code = 1029,
	},
	["'{0}' modifier already seen."] = {
		category = "Error",
		code = 1030,
	},
	["'{0}' modifier cannot appear on class elements of this kind."] = {
		category = "Error",
		code = 1031,
	},
	["'super' must be followed by an argument list or member access."] = {
		category = "Error",
		code = 1034,
	},
	["Only ambient modules can use quoted names."] = {
		category = "Error",
		code = 1035,
	},
	["Statements are not allowed in ambient contexts."] = {
		category = "Error",
		code = 1036,
	},
	["A 'declare' modifier cannot be used in an already ambient context."] = {
		category = "Error",
		code = 1038,
	},
	["Initializers are not allowed in ambient contexts."] = {
		category = "Error",
		code = 1039,
	},
	["'{0}' modifier cannot be used in an ambient context."] = {
		category = "Error",
		code = 1040,
	},
	["'{0}' modifier cannot be used here."] = {
		category = "Error",
		code = 1042,
	},
	["'{0}' modifier cannot appear on a module or namespace element."] = {
		category = "Error",
		code = 1044,
	},
	["Top-level declarations in .d.ts files must start with either a 'declare' or 'export' modifier."] = {
		category = "Error",
		code = 1046,
	},
	["A rest parameter cannot be optional."] = {
		category = "Error",
		code = 1047,
	},
	["A rest parameter cannot have an initializer."] = {
		category = "Error",
		code = 1048,
	},
	["A 'set' accessor must have exactly one parameter."] = {
		category = "Error",
		code = 1049,
	},
	["A 'set' accessor cannot have an optional parameter."] = {
		category = "Error",
		code = 1051,
	},
	["A 'set' accessor parameter cannot have an initializer."] = {
		category = "Error",
		code = 1052,
	},
	["A 'set' accessor cannot have rest parameter."] = {
		category = "Error",
		code = 1053,
	},
	["A 'get' accessor cannot have parameters."] = {
		category = "Error",
		code = 1054,
	},
	["Type '{0}' is not a valid async function return type in ES5/ES3 because it does not refer to a Promise-compatible constructor value."] = {
		category = "Error",
		code = 1055,
	},
	["Accessors are only available when targeting ECMAScript 5 and higher."] = {
		category = "Error",
		code = 1056,
	},
	["The return type of an async function must either be a valid promise or must not contain a callable 'then' member."] = {
		category = "Error",
		code = 1058,
	},
	["A promise must have a 'then' method."] = {
		category = "Error",
		code = 1059,
	},
	["The first parameter of the 'then' method of a promise must be a callback."] = {
		category = "Error",
		code = 1060,
	},
	["Enum member must have initializer."] = {
		category = "Error",
		code = 1061,
	},
	["Type is referenced directly or indirectly in the fulfillment callback of its own 'then' method."] = {
		category = "Error",
		code = 1062,
	},
	["An export assignment cannot be used in a namespace."] = {
		category = "Error",
		code = 1063,
	},
	["The return type of an async function or method must be the global Promise<T> type. Did you mean to write 'Promise<{0}>'?"] = {
		category = "Error",
		code = 1064,
	},
	["In ambient enum declarations member initializer must be constant expression."] = {
		category = "Error",
		code = 1066,
	},
	["Unexpected token. A constructor, method, accessor, or property was expected."] = {
		category = "Error",
		code = 1068,
	},
	["Unexpected token. A type parameter name was expected without curly braces."] = {
		category = "Error",
		code = 1069,
	},
	["'{0}' modifier cannot appear on a type member."] = {
		category = "Error",
		code = 1070,
	},
	["'{0}' modifier cannot appear on an index signature."] = {
		category = "Error",
		code = 1071,
	},
	["A '{0}' modifier cannot be used with an import declaration."] = {
		category = "Error",
		code = 1079,
	},
	["Invalid 'reference' directive syntax."] = {
		category = "Error",
		code = 1084,
	},
	["Octal literals are not available when targeting ECMAScript 5 and higher. Use the syntax '{0}'."] = {
		category = "Error",
		code = 1085,
	},
	["'{0}' modifier cannot appear on a constructor declaration."] = {
		category = "Error",
		code = 1089,
	},
	["'{0}' modifier cannot appear on a parameter."] = {
		category = "Error",
		code = 1090,
	},
	["Only a single variable declaration is allowed in a 'for...in' statement."] = {
		category = "Error",
		code = 1091,
	},
	["Type parameters cannot appear on a constructor declaration."] = {
		category = "Error",
		code = 1092,
	},
	["Type annotation cannot appear on a constructor declaration."] = {
		category = "Error",
		code = 1093,
	},
	["An accessor cannot have type parameters."] = {
		category = "Error",
		code = 1094,
	},
	["A 'set' accessor cannot have a return type annotation."] = {
		category = "Error",
		code = 1095,
	},
	["An index signature must have exactly one parameter."] = {
		category = "Error",
		code = 1096,
	},
	["'{0}' list cannot be empty."] = {
		category = "Error",
		code = 1097,
	},
	["Type parameter list cannot be empty."] = {
		category = "Error",
		code = 1098,
	},
	["Type argument list cannot be empty."] = {
		category = "Error",
		code = 1099,
	},
	["Invalid use of '{0}' in strict mode."] = {
		category = "Error",
		code = 1100,
	},
	["'with' statements are not allowed in strict mode."] = {
		category = "Error",
		code = 1101,
	},
	["'delete' cannot be called on an identifier in strict mode."] = {
		category = "Error",
		code = 1102,
	},
	["'for await' loops are only allowed within async functions and at the top levels of modules."] = {
		category = "Error",
		code = 1103,
	},
	["A 'continue' statement can only be used within an enclosing iteration statement."] = {
		category = "Error",
		code = 1104,
	},
	["A 'break' statement can only be used within an enclosing iteration or switch statement."] = {
		category = "Error",
		code = 1105,
	},
	["The left-hand side of a 'for...of' statement may not be 'async'."] = {
		category = "Error",
		code = 1106,
	},
	["Jump target cannot cross function boundary."] = {
		category = "Error",
		code = 1107,
	},
	["A 'return' statement can only be used within a function body."] = {
		category = "Error",
		code = 1108,
	},
	["Expression expected."] = {
		category = "Error",
		code = 1109,
	},
	["Type expected."] = {
		category = "Error",
		code = 1110,
	},
	["A 'default' clause cannot appear more than once in a 'switch' statement."] = {
		category = "Error",
		code = 1113,
	},
	["Duplicate label '{0}'."] = {
		category = "Error",
		code = 1114,
	},
	["A 'continue' statement can only jump to a label of an enclosing iteration statement."] = {
		category = "Error",
		code = 1115,
	},
	["A 'break' statement can only jump to a label of an enclosing statement."] = {
		category = "Error",
		code = 1116,
	},
	["An object literal cannot have multiple properties with the same name."] = {
		category = "Error",
		code = 1117,
	},
	["An object literal cannot have multiple get/set accessors with the same name."] = {
		category = "Error",
		code = 1118,
	},
	["An object literal cannot have property and accessor with the same name."] = {
		category = "Error",
		code = 1119,
	},
	["An export assignment cannot have modifiers."] = {
		category = "Error",
		code = 1120,
	},
	["Octal literals are not allowed in strict mode."] = {
		category = "Error",
		code = 1121,
	},
	["Variable declaration list cannot be empty."] = {
		category = "Error",
		code = 1123,
	},
	["Digit expected."] = {
		category = "Error",
		code = 1124,
	},
	["Hexadecimal digit expected."] = {
		category = "Error",
		code = 1125,
	},
	["Unexpected end of text."] = {
		category = "Error",
		code = 1126,
	},
	["Invalid character."] = {
		category = "Error",
		code = 1127,
	},
	["Declaration or statement expected."] = {
		category = "Error",
		code = 1128,
	},
	["Statement expected."] = {
		category = "Error",
		code = 1129,
	},
	["'case' or 'default' expected."] = {
		category = "Error",
		code = 1130,
	},
	["Property or signature expected."] = {
		category = "Error",
		code = 1131,
	},
	["Enum member expected."] = {
		category = "Error",
		code = 1132,
	},
	["Variable declaration expected."] = {
		category = "Error",
		code = 1134,
	},
	["Argument expression expected."] = {
		category = "Error",
		code = 1135,
	},
	["Property assignment expected."] = {
		category = "Error",
		code = 1136,
	},
	["Expression or comma expected."] = {
		category = "Error",
		code = 1137,
	},
	["Parameter declaration expected."] = {
		category = "Error",
		code = 1138,
	},
	["Type parameter declaration expected."] = {
		category = "Error",
		code = 1139,
	},
	["Type argument expected."] = {
		category = "Error",
		code = 1140,
	},
	["String literal expected."] = {
		category = "Error",
		code = 1141,
	},
	["Line break not permitted here."] = {
		category = "Error",
		code = 1142,
	},
	["'{' or ';' expected."] = {
		category = "Error",
		code = 1144,
	},
	["Declaration expected."] = {
		category = "Error",
		code = 1146,
	},
	["Import declarations in a namespace cannot reference a module."] = {
		category = "Error",
		code = 1147,
	},
	["Cannot use imports, exports, or module augmentations when '--module' is 'none'."] = {
		category = "Error",
		code = 1148,
	},
	["File name '{0}' differs from already included file name '{1}' only in casing."] = {
		category = "Error",
		code = 1149,
	},
	["'const' declarations must be initialized."] = {
		category = "Error",
		code = 1155,
	},
	["'const' declarations can only be declared inside a block."] = {
		category = "Error",
		code = 1156,
	},
	["'let' declarations can only be declared inside a block."] = {
		category = "Error",
		code = 1157,
	},
	["Unterminated template literal."] = {
		category = "Error",
		code = 1160,
	},
	["Unterminated regular expression literal."] = {
		category = "Error",
		code = 1161,
	},
	["An object member cannot be declared optional."] = {
		category = "Error",
		code = 1162,
	},
	["A 'yield' expression is only allowed in a generator body."] = {
		category = "Error",
		code = 1163,
	},
	["Computed property names are not allowed in enums."] = {
		category = "Error",
		code = 1164,
	},
	["A computed property name in an ambient context must refer to an expression whose type is a literal type or a 'unique symbol' type."] = {
		category = "Error",
		code = 1165,
	},
	["A computed property name in a class property declaration must have a simple literal type or a 'unique symbol' type."] = {
		category = "Error",
		code = 1166,
	},
	["A computed property name in a method overload must refer to an expression whose type is a literal type or a 'unique symbol' type."] = {
		category = "Error",
		code = 1168,
	},
	["A computed property name in an interface must refer to an expression whose type is a literal type or a 'unique symbol' type."] = {
		category = "Error",
		code = 1169,
	},
	["A computed property name in a type literal must refer to an expression whose type is a literal type or a 'unique symbol' type."] = {
		category = "Error",
		code = 1170,
	},
	["A comma expression is not allowed in a computed property name."] = {
		category = "Error",
		code = 1171,
	},
	["'extends' clause already seen."] = {
		category = "Error",
		code = 1172,
	},
	["'extends' clause must precede 'implements' clause."] = {
		category = "Error",
		code = 1173,
	},
	["Classes can only extend a single class."] = {
		category = "Error",
		code = 1174,
	},
	["'implements' clause already seen."] = {
		category = "Error",
		code = 1175,
	},
	["Interface declaration cannot have 'implements' clause."] = {
		category = "Error",
		code = 1176,
	},
	["Binary digit expected."] = {
		category = "Error",
		code = 1177,
	},
	["Octal digit expected."] = {
		category = "Error",
		code = 1178,
	},
	["Unexpected token. '{' expected."] = {
		category = "Error",
		code = 1179,
	},
	["Property destructuring pattern expected."] = {
		category = "Error",
		code = 1180,
	},
	["Array element destructuring pattern expected."] = {
		category = "Error",
		code = 1181,
	},
	["A destructuring declaration must have an initializer."] = {
		category = "Error",
		code = 1182,
	},
	["An implementation cannot be declared in ambient contexts."] = {
		category = "Error",
		code = 1183,
	},
	["Modifiers cannot appear here."] = {
		category = "Error",
		code = 1184,
	},
	["Merge conflict marker encountered."] = {
		category = "Error",
		code = 1185,
	},
	["A rest element cannot have an initializer."] = {
		category = "Error",
		code = 1186,
	},
	["A parameter property may not be declared using a binding pattern."] = {
		category = "Error",
		code = 1187,
	},
	["Only a single variable declaration is allowed in a 'for...of' statement."] = {
		category = "Error",
		code = 1188,
	},
	["The variable declaration of a 'for...in' statement cannot have an initializer."] = {
		category = "Error",
		code = 1189,
	},
	["The variable declaration of a 'for...of' statement cannot have an initializer."] = {
		category = "Error",
		code = 1190,
	},
	["An import declaration cannot have modifiers."] = {
		category = "Error",
		code = 1191,
	},
	["Module '{0}' has no default export."] = {
		category = "Error",
		code = 1192,
	},
	["An export declaration cannot have modifiers."] = {
		category = "Error",
		code = 1193,
	},
	["Export declarations are not permitted in a namespace."] = {
		category = "Error",
		code = 1194,
	},
	["'export *' does not re-export a default."] = {
		category = "Error",
		code = 1195,
	},
	["Catch clause variable type annotation must be 'any' or 'unknown' if specified."] = {
		category = "Error",
		code = 1196,
	},
	["Catch clause variable cannot have an initializer."] = {
		category = "Error",
		code = 1197,
	},
	["An extended Unicode escape value must be between 0x0 and 0x10FFFF inclusive."] = {
		category = "Error",
		code = 1198,
	},
	["Unterminated Unicode escape sequence."] = {
		category = "Error",
		code = 1199,
	},
	["Line terminator not permitted before arrow."] = {
		category = "Error",
		code = 1200,
	},
	["Import assignment cannot be used when targeting ECMAScript modules. Consider using 'import * as ns from \"mod\"', 'import {a} from \"mod\"', 'import d from \"mod\"', or another module format instead."] = {
		category = "Error",
		code = 1202,
	},
	["Export assignment cannot be used when targeting ECMAScript modules. Consider using 'export default' or another module format instead."] = {
		category = "Error",
		code = 1203,
	},
	["Re-exporting a type when the '--isolatedModules' flag is provided requires using 'export type'."] = {
		category = "Error",
		code = 1205,
	},
	["Decorators are not valid here."] = {
		category = "Error",
		code = 1206,
	},
	["Decorators cannot be applied to multiple get/set accessors of the same name."] = {
		category = "Error",
		code = 1207,
	},
	["'{0}' cannot be compiled under '--isolatedModules' because it is considered a global script file. Add an import, export, or an empty 'export {}' statement to make it a module."] = {
		category = "Error",
		code = 1208,
	},
	["Code contained in a class is evaluated in JavaScript's strict mode which does not allow this use of '{0}'. For more information, see https] =//developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Strict_mode."] = {
		category = "Error",
		code = 1210,
	},
	["A class declaration without the 'default' modifier must have a name."] = {
		category = "Error",
		code = 1211,
	},
	["Identifier expected. '{0}' is a reserved word in strict mode."] = {
		category = "Error",
		code = 1212,
	},
	["Identifier expected. '{0}' is a reserved word in strict mode. Class definitions are automatically in strict mode."] = {
		category = "Error",
		code = 1213,
	},
	["Identifier expected. '{0}' is a reserved word in strict mode. Modules are automatically in strict mode."] = {
		category = "Error",
		code = 1214,
	},
	["Invalid use of '{0}'. Modules are automatically in strict mode."] = {
		category = "Error",
		code = 1215,
	},
	["Identifier expected. '__esModule' is reserved as an exported marker when transforming ECMAScript modules."] = {
		category = "Error",
		code = 1216,
	},
	["Export assignment is not supported when '--module' flag is 'system'."] = {
		category = "Error",
		code = 1218,
	},
	["Experimental support for decorators is a feature that is subject to change in a future release. Set the 'experimentalDecorators' option in your 'tsconfig' or 'jsconfig' to remove this warning."] = {
		category = "Error",
		code = 1219,
	},
	["Generators are not allowed in an ambient context."] = {
		category = "Error",
		code = 1221,
	},
	["An overload signature cannot be declared as a generator."] = {
		category = "Error",
		code = 1222,
	},
	["'{0}' tag already specified."] = {
		category = "Error",
		code = 1223,
	},
	["Signature '{0}' must be a type predicate."] = {
		category = "Error",
		code = 1224,
	},
	["Cannot find parameter '{0}'."] = {
		category = "Error",
		code = 1225,
	},
	["Type predicate '{0}' is not assignable to '{1}'."] = {
		category = "Error",
		code = 1226,
	},
	["Parameter '{0}' is not in the same position as parameter '{1}'."] = {
		category = "Error",
		code = 1227,
	},
	["A type predicate is only allowed in return type position for functions and methods."] = {
		category = "Error",
		code = 1228,
	},
	["A type predicate cannot reference a rest parameter."] = {
		category = "Error",
		code = 1229,
	},
	["A type predicate cannot reference element '{0}' in a binding pattern."] = {
		category = "Error",
		code = 1230,
	},
	["An export assignment must be at the top level of a file or module declaration."] = {
		category = "Error",
		code = 1231,
	},
	["An import declaration can only be used at the top level of a namespace or module."] = {
		category = "Error",
		code = 1232,
	},
	["An export declaration can only be used at the top level of a namespace or module."] = {
		category = "Error",
		code = 1233,
	},
	["An ambient module declaration is only allowed at the top level in a file."] = {
		category = "Error",
		code = 1234,
	},
	["A namespace declaration is only allowed at the top level of a namespace or module."] = {
		category = "Error",
		code = 1235,
	},
	["The return type of a property decorator function must be either 'void' or 'any'."] = {
		category = "Error",
		code = 1236,
	},
	["The return type of a parameter decorator function must be either 'void' or 'any'."] = {
		category = "Error",
		code = 1237,
	},
	["Unable to resolve signature of class decorator when called as an expression."] = {
		category = "Error",
		code = 1238,
	},
	["Unable to resolve signature of parameter decorator when called as an expression."] = {
		category = "Error",
		code = 1239,
	},
	["Unable to resolve signature of property decorator when called as an expression."] = {
		category = "Error",
		code = 1240,
	},
	["Unable to resolve signature of method decorator when called as an expression."] = {
		category = "Error",
		code = 1241,
	},
	["'abstract' modifier can only appear on a class, method, or property declaration."] = {
		category = "Error",
		code = 1242,
	},
	["'{0}' modifier cannot be used with '{1}' modifier."] = {
		category = "Error",
		code = 1243,
	},
	["Abstract methods can only appear within an abstract class."] = {
		category = "Error",
		code = 1244,
	},
	["Method '{0}' cannot have an implementation because it is marked abstract."] = {
		category = "Error",
		code = 1245,
	},
	["An interface property cannot have an initializer."] = {
		category = "Error",
		code = 1246,
	},
	["A type literal property cannot have an initializer."] = {
		category = "Error",
		code = 1247,
	},
	["A class member cannot have the '{0}' keyword."] = {
		category = "Error",
		code = 1248,
	},
	["A decorator can only decorate a method implementation, not an overload."] = {
		category = "Error",
		code = 1249,
	},
	["Function declarations are not allowed inside blocks in strict mode when targeting 'ES3' or 'ES5'."] = {
		category = "Error",
		code = 1250,
	},
	["Function declarations are not allowed inside blocks in strict mode when targeting 'ES3' or 'ES5'. Class definitions are automatically in strict mode."] = {
		category = "Error",
		code = 1251,
	},
	["Function declarations are not allowed inside blocks in strict mode when targeting 'ES3' or 'ES5'. Modules are automatically in strict mode."] = {
		category = "Error",
		code = 1252,
	},
	["A 'const' initializer in an ambient context must be a string or numeric literal or literal enum reference."] = {
		category = "Error",
		code = 1254,
	},
	["A definite assignment assertion '!' is not permitted in this context."] = {
		category = "Error",
		code = 1255,
	},
	["A required element cannot follow an optional element."] = {
		category = "Error",
		code = 1257,
	},
	["A default export must be at the top level of a file or module declaration."] = {
		category = "Error",
		code = 1258,
	},
	["Module '{0}' can only be default-imported using the '{1}' flag"] = {
		category = "Error",
		code = 1259,
	},
	["Keywords cannot contain escape characters."] = {
		category = "Error",
		code = 1260,
	},
	["Already included file name '{0}' differs from file name '{1}' only in casing."] = {
		category = "Error",
		code = 1261,
	},
	["Identifier expected. '{0}' is a reserved word at the top-level of a module."] = {
		category = "Error",
		code = 1262,
	},
	["Declarations with initializers cannot also have definite assignment assertions."] = {
		category = "Error",
		code = 1263,
	},
	["Declarations with definite assignment assertions must also have type annotations."] = {
		category = "Error",
		code = 1264,
	},
	["A rest element cannot follow another rest element."] = {
		category = "Error",
		code = 1265,
	},
	["An optional element cannot follow a rest element."] = {
		category = "Error",
		code = 1266,
	},
	["Property '{0}' cannot have an initializer because it is marked abstract."] = {
		category = "Error",
		code = 1267,
	},
	["An index signature parameter type must be 'string', 'number', 'symbol', or a template literal type."] = {
		category = "Error",
		code = 1268,
	},
	["Cannot use 'export import' on a type or type-only namespace when the '--isolatedModules' flag is provided."] = {
		category = "Error",
		code = 1269,
	},
	["Decorator function return type '{0}' is not assignable to type '{1}'."] = {
		category = "Error",
		code = 1270,
	},
	["Decorator function return type is '{0}' but is expected to be 'void' or 'any'."] = {
		category = "Error",
		code = 1271,
	},
	["A type referenced in a decorated signature must be imported with 'import type' or a namespace import when 'isolatedModules' and 'emitDecoratorMetadata' are enabled."] = {
		category = "Error",
		code = 1272,
	},
	["'{0}' modifier cannot appear on a type parameter"] = {
		category = "Error",
		code = 1273,
	},
	["'{0}' modifier can only appear on a type parameter of a class, interface or type alias"] = {
		category = "Error",
		code = 1274,
	},
	["'with' statements are not allowed in an async function block."] = {
		category = "Error",
		code = 1300,
	},
	["'await' expressions are only allowed within async functions and at the top levels of modules."] = {
		category = "Error",
		code = 1308,
	},
	["Did you mean to use a '] ='? An '=' can only follow a property name when the containing object literal is part of a destructuring pattern."] = {
		category = "Error",
		code = 1312,
	},
	["The body of an 'if' statement cannot be the empty statement."] = {
		category = "Error",
		code = 1313,
	},
	["Global module exports may only appear in module files."] = {
		category = "Error",
		code = 1314,
	},
	["Global module exports may only appear in declaration files."] = {
		category = "Error",
		code = 1315,
	},
	["Global module exports may only appear at top level."] = {
		category = "Error",
		code = 1316,
	},
	["A parameter property cannot be declared using a rest parameter."] = {
		category = "Error",
		code = 1317,
	},
	["An abstract accessor cannot have an implementation."] = {
		category = "Error",
		code = 1318,
	},
	["A default export can only be used in an ECMAScript-style module."] = {
		category = "Error",
		code = 1319,
	},
	["Type of 'await' operand must either be a valid promise or must not contain a callable 'then' member."] = {
		category = "Error",
		code = 1320,
	},
	["Type of 'yield' operand in an async generator must either be a valid promise or must not contain a callable 'then' member."] = {
		category = "Error",
		code = 1321,
	},
	["Type of iterated elements of a 'yield*' operand must either be a valid promise or must not contain a callable 'then' member."] = {
		category = "Error",
		code = 1322,
	},
	["Dynamic imports are only supported when the '--module' flag is set to 'es2020', 'es2022', 'esnext', 'commonjs', 'amd', 'system', 'umd', 'node12', or 'nodenext'."] = {
		category = "Error",
		code = 1323,
	},
	["Dynamic imports only support a second argument when the '--module' option is set to 'esnext' or 'nodenext'."] = {
		category = "Error",
		code = 1324,
	},
	["Argument of dynamic import cannot be spread element."] = {
		category = "Error",
		code = 1325,
	},
	["Dynamic import cannot have type arguments."] = {
		category = "Error",
		code = 1326,
	},
	["String literal with double quotes expected."] = {
		category = "Error",
		code = 1327,
	},
	["Property value can only be string literal, numeric literal, 'true', 'false', 'null', object literal or array literal."] = {
		category = "Error",
		code = 1328,
	},
	["'{0}' accepts too few arguments to be used as a decorator here. Did you mean to call it first and write '@{0}()'?"] = {
		category = "Error",
		code = 1329,
	},
	["A property of an interface or type literal whose type is a 'unique symbol' type must be 'readonly'."] = {
		category = "Error",
		code = 1330,
	},
	["A property of a class whose type is a 'unique symbol' type must be both 'static' and 'readonly'."] = {
		category = "Error",
		code = 1331,
	},
	["A variable whose type is a 'unique symbol' type must be 'const'."] = {
		category = "Error",
		code = 1332,
	},
	["'unique symbol' types may not be used on a variable declaration with a binding name."] = {
		category = "Error",
		code = 1333,
	},
	["'unique symbol' types are only allowed on variables in a variable statement."] = {
		category = "Error",
		code = 1334,
	},
	["'unique symbol' types are not allowed here."] = {
		category = "Error",
		code = 1335,
	},
	["An index signature parameter type cannot be a literal type or generic type. Consider using a mapped object type instead."] = {
		category = "Error",
		code = 1337,
	},
	["'infer' declarations are only permitted in the 'extends' clause of a conditional type."] = {
		category = "Error",
		code = 1338,
	},
	["Module '{0}' does not refer to a value, but is used as a value here."] = {
		category = "Error",
		code = 1339,
	},
	["Module '{0}' does not refer to a type, but is used as a type here. Did you mean 'typeof import('{0}')'?"] = {
		category = "Error",
		code = 1340,
	},
	["Type arguments cannot be used here."] = {
		category = "Error",
		code = 1342,
	},
	["The 'import.meta' meta-property is only allowed when the '--module' option is 'es2020', 'es2022', 'esnext', 'system', 'node12', or 'nodenext'."] = {
		category = "Error",
		code = 1343,
	},
	["'A label is not allowed here."] = {
		category = "Error",
		code = 1344,
	},
	["An expression of type 'void' cannot be tested for truthiness."] = {
		category = "Error",
		code = 1345,
	},
	["This parameter is not allowed with 'use strict' directive."] = {
		category = "Error",
		code = 1346,
	},
	["'use strict' directive cannot be used with non-simple parameter list."] = {
		category = "Error",
		code = 1347,
	},
	["Non-simple parameter declared here."] = {
		category = "Error",
		code = 1348,
	},
	["'use strict' directive used here."] = {
		category = "Error",
		code = 1349,
	},
	["Print the final configuration instead of building."] = {
		category = "Message",
		code = 1350,
	},
	["An identifier or keyword cannot immediately follow a numeric literal."] = {
		category = "Error",
		code = 1351,
	},
	["A bigint literal cannot use exponential notation."] = {
		category = "Error",
		code = 1352,
	},
	["A bigint literal must be an integer."] = {
		category = "Error",
		code = 1353,
	},
	["'readonly' type modifier is only permitted on array and tuple literal types."] = {
		category = "Error",
		code = 1354,
	},
	["A 'const' assertions can only be applied to references to enum members, or string, number, boolean, array, or object literals."] = {
		category = "Error",
		code = 1355,
	},
	["Did you mean to mark this function as 'async'?"] = {
		category = "Error",
		code = 1356,
	},
	["An enum member name must be followed by a ',', '=', or '}'."] = {
		category = "Error",
		code = 1357,
	},
	["Tagged template expressions are not permitted in an optional chain."] = {
		category = "Error",
		code = 1358,
	},
	["Identifier expected. '{0}' is a reserved word that cannot be used here."] = {
		category = "Error",
		code = 1359,
	},
	["'{0}' cannot be used as a value because it was imported using 'import type'."] = {
		category = "Error",
		code = 1361,
	},
	["'{0}' cannot be used as a value because it was exported using 'export type'."] = {
		category = "Error",
		code = 1362,
	},
	["A type-only import can specify a default import or named bindings, but not both."] = {
		category = "Error",
		code = 1363,
	},
	["This import is never used as a value and must use 'import type' because 'importsNotUsedAsValues' is set to 'error'."] = {
		category = "Error",
		code = 1371,
	},
	["'await' expressions are only allowed at the top level of a file when that file is a module, but this file has no imports or exports. Consider adding an empty 'export {}' to make this file a module."] = {
		category = "Error",
		code = 1375,
	},
	["'{0}' was imported here."] = {
		category = "Message",
		code = 1376,
	},
	["'{0}' was exported here."] = {
		category = "Message",
		code = 1377,
	},
	["Top-level 'await' expressions are only allowed when the 'module' option is set to 'es2022', 'esnext', 'system', or 'nodenext', and the 'target' option is set to 'es2017' or higher."] = {
		category = "Error",
		code = 1378,
	},
	["An import alias cannot reference a declaration that was exported using 'export type'."] = {
		category = "Error",
		code = 1379,
	},
	["An import alias cannot reference a declaration that was imported using 'import type'."] = {
		category = "Error",
		code = 1380,
	},
	["Unexpected token. Did you mean `{'}'}` or `&rbrace;`?"] = {
		category = "Error",
		code = 1381,
	},
	["Unexpected token. Did you mean `{'>'}` or `&gt;`?"] = {
		category = "Error",
		code = 1382,
	},
	["Only named exports may use 'export type'."] = {
		category = "Error",
		code = 1383,
	},
	["Function type notation must be parenthesized when used in a union type."] = {
		category = "Error",
		code = 1385,
	},
	["Constructor type notation must be parenthesized when used in a union type."] = {
		category = "Error",
		code = 1386,
	},
	["Function type notation must be parenthesized when used in an intersection type."] = {
		category = "Error",
		code = 1387,
	},
	["Constructor type notation must be parenthesized when used in an intersection type."] = {
		category = "Error",
		code = 1388,
	},
	["'{0}' is not allowed as a variable declaration name."] = {
		category = "Error",
		code = 1389,
	},
	["'{0}' is not allowed as a parameter name."] = {
		category = "Error",
		code = 1390,
	},
	["An import alias cannot use 'import type'"] = {
		category = "Error",
		code = 1392,
	},
	["Imported via {0} from file '{1}'"] = {
		category = "Message",
		code = 1393,
	},
	["Imported via {0} from file '{1}' with packageId '{2}'"] = {
		category = "Message",
		code = 1394,
	},
	["Imported via {0} from file '{1}' to import 'importHelpers' as specified in compilerOptions"] = {
		category = "Message",
		code = 1395,
	},
	["Imported via {0} from file '{1}' with packageId '{2}' to import 'importHelpers' as specified in compilerOptions"] = {
		category = "Message",
		code = 1396,
	},
	["Imported via {0} from file '{1}' to import 'jsx' and 'jsxs' factory functions"] = {
		category = "Message",
		code = 1397,
	},
	["Imported via {0} from file '{1}' with packageId '{2}' to import 'jsx' and 'jsxs' factory functions"] = {
		category = "Message",
		code = 1398,
	},
	["File is included via import here."] = {
		category = "Message",
		code = 1399,
	},
	["Referenced via '{0}' from file '{1}'"] = {
		category = "Message",
		code = 1400,
	},
	["File is included via reference here."] = {
		category = "Message",
		code = 1401,
	},
	["Type library referenced via '{0}' from file '{1}'"] = {
		category = "Message",
		code = 1402,
	},
	["Type library referenced via '{0}' from file '{1}' with packageId '{2}'"] = {
		category = "Message",
		code = 1403,
	},
	["File is included via type library reference here."] = {
		category = "Message",
		code = 1404,
	},
	["Library referenced via '{0}' from file '{1}'"] = {
		category = "Message",
		code = 1405,
	},
	["File is included via library reference here."] = {
		category = "Message",
		code = 1406,
	},
	["Matched by include pattern '{0}' in '{1}'"] = {
		category = "Message",
		code = 1407,
	},
	["File is matched by include pattern specified here."] = {
		category = "Message",
		code = 1408,
	},
	["Part of 'files' list in tsconfig.json"] = {
		category = "Message",
		code = 1409,
	},
	["File is matched by 'files' list specified here."] = {
		category = "Message",
		code = 1410,
	},
	["Output from referenced project '{0}' included because '{1}' specified"] = {
		category = "Message",
		code = 1411,
	},
	["Output from referenced project '{0}' included because '--module' is specified as 'none'"] = {
		category = "Message",
		code = 1412,
	},
	["File is output from referenced project specified here."] = {
		category = "Message",
		code = 1413,
	},
	["Source from referenced project '{0}' included because '{1}' specified"] = {
		category = "Message",
		code = 1414,
	},
	["Source from referenced project '{0}' included because '--module' is specified as 'none'"] = {
		category = "Message",
		code = 1415,
	},
	["File is source from referenced project specified here."] = {
		category = "Message",
		code = 1416,
	},
	["Entry point of type library '{0}' specified in compilerOptions"] = {
		category = "Message",
		code = 1417,
	},
	["Entry point of type library '{0}' specified in compilerOptions with packageId '{1}'"] = {
		category = "Message",
		code = 1418,
	},
	["File is entry point of type library specified here."] = {
		category = "Message",
		code = 1419,
	},
	["Entry point for implicit type library '{0}'"] = {
		category = "Message",
		code = 1420,
	},
	["Entry point for implicit type library '{0}' with packageId '{1}'"] = {
		category = "Message",
		code = 1421,
	},
	["Library '{0}' specified in compilerOptions"] = {
		category = "Message",
		code = 1422,
	},
	["File is library specified here."] = {
		category = "Message",
		code = 1423,
	},
	["Default library"] = {
		category = "Message",
		code = 1424,
	},
	["Default library for target '{0}'"] = {
		category = "Message",
		code = 1425,
	},
	["File is default library for target specified here."] = {
		category = "Message",
		code = 1426,
	},
	["Root file specified for compilation"] = {
		category = "Message",
		code = 1427,
	},
	["File is output of project reference source '{0}'"] = {
		category = "Message",
		code = 1428,
	},
	["File redirects to file '{0}'"] = {
		category = "Message",
		code = 1429,
	},
	["The file is in the program because] ="] = {
		category = "Message",
		code = 1430,
	},
	["'for await' loops are only allowed at the top level of a file when that file is a module, but this file has no imports or exports. Consider adding an empty 'export {}' to make this file a module."] = {
		category = "Error",
		code = 1431,
	},
	["Top-level 'for await' loops are only allowed when the 'module' option is set to 'es2022', 'esnext', 'system', or 'nodenext', and the 'target' option is set to 'es2017' or higher."] = {
		category = "Error",
		code = 1432,
	},
	["Decorators may not be applied to 'this' parameters."] = {
		category = "Error",
		code = 1433,
	},
	["Unexpected keyword or identifier."] = {
		category = "Error",
		code = 1434,
	},
	["Unknown keyword or identifier. Did you mean '{0}'?"] = {
		category = "Error",
		code = 1435,
	},
	["Decorators must precede the name and all keywords of property declarations."] = {
		category = "Error",
		code = 1436,
	},
	["Namespace must be given a name."] = {
		category = "Error",
		code = 1437,
	},
	["Interface must be given a name."] = {
		category = "Error",
		code = 1438,
	},
	["Type alias must be given a name."] = {
		category = "Error",
		code = 1439,
	},
	["Variable declaration not allowed at this location."] = {
		category = "Error",
		code = 1440,
	},
	["Cannot start a function call in a type annotation."] = {
		category = "Error",
		code = 1441,
	},
	["Expected '=' for property initializer."] = {
		category = "Error",
		code = 1442,
	},
	["Module declaration names may only use ' or \" quoted strings."] = {
		category = "Error",
		code = 1443,
	},
	["'{0}' is a type and must be imported using a type-only import when 'preserveValueImports' and 'isolatedModules' are both enabled."] = {
		category = "Error",
		code = 1444,
	},
	["'{0}' resolves to a type-only declaration and must be imported using a type-only import when 'preserveValueImports' and 'isolatedModules' are both enabled."] = {
		category = "Error",
		code = 1446,
	},
	["'{0}' resolves to a type-only declaration and must be re-exported using a type-only re-export when 'isolatedModules' is enabled."] = {
		category = "Error",
		code = 1448,
	},
	["Preserve unused imported values in the JavaScript output that would otherwise be removed."] = {
		category = "Message",
		code = 1449,
	},
	["Dynamic imports can only accept a module specifier and an optional assertion as arguments"] = {
		category = "Message",
		code = 1450,
	},
	["Private identifiers are only allowed in class bodies and may only be used as part of a class member declaration, property access, or on the left-hand-side of an 'in' expression"] = {
		category = "Error",
		code = 1451,
	},
	["Resolution modes are only supported when `moduleResolution` is `node12` or `nodenext`."] = {
		category = "Error",
		code = 1452,
	},
	["`resolution-mode` should be either `require` or `import`."] = {
		category = "Error",
		code = 1453,
	},
	["`resolution-mode` can only be set for type-only imports."] = {
		category = "Error",
		code = 1454,
	},
	["`resolution-mode` is the only valid key for type import assertions."] = {
		category = "Error",
		code = 1455,
	},
	["Type import assertions should have exactly one key - `resolution-mode` - with value `import` or `require`."] = {
		category = "Error",
		code = 1456,
	},
	["The 'import.meta' meta-property is not allowed in files which will build into CommonJS output."] = {
		category = "Error",
		code = 1470,
	},
	["Module '{0}' cannot be imported using this construct. The specifier only resolves to an ES module, which cannot be imported synchronously. Use dynamic import instead."] = {
		category = "Error",
		code = 1471,
	},
	["'catch' or 'finally' expected."] = {
		category = "Error",
		code = 1472,
	},
	["An import declaration can only be used at the top level of a module."] = {
		category = "Error",
		code = 1473,
	},
	["An export declaration can only be used at the top level of a module."] = {
		category = "Error",
		code = 1474,
	},
	["Control what method is used to detect module-format JS files."] = {
		category = "Message",
		code = 1475,
	},
	['"auto"] = Treat files with imports, exports, import.meta, jsx (with jsx: react-jsx), or esm format (with module: node12+) as modules.'] = {
		category = "Message",
		code = 1476,
	},
	["The types of '{0}' are incompatible between these types."] = {
		category = "Error",
		code = 2200,
	},
	["The types returned by '{0}' are incompatible between these types."] = {
		category = "Error",
		code = 2201,
	},
	["Call signature return types '{0}' and '{1}' are incompatible."] = {
		category = "Error",
		code = 2202,
		elidedInCompatabilityPyramid = true,
	},
	["Construct signature return types '{0}' and '{1}' are incompatible."] = {
		category = "Error",
		code = 2203,
		elidedInCompatabilityPyramid = true,
	},
	["Call signatures with no arguments have incompatible return types '{0}' and '{1}'."] = {
		category = "Error",
		code = 2204,
		elidedInCompatabilityPyramid = true,
	},
	["Construct signatures with no arguments have incompatible return types '{0}' and '{1}'."] = {
		category = "Error",
		code = 2205,
		elidedInCompatabilityPyramid = true,
	},
	["The 'type' modifier cannot be used on a named import when 'import type' is used on its import statement."] = {
		category = "Error",
		code = 2206,
	},
	["The 'type' modifier cannot be used on a named export when 'export type' is used on its export statement."] = {
		category = "Error",
		code = 2207,
	},
	["This type parameter probably needs an `extends object` constraint."] = {
		category = "Error",
		code = 2208,
	},
	["Duplicate identifier '{0}'."] = {
		category = "Error",
		code = 2300,
	},
	["Initializer of instance member variable '{0}' cannot reference identifier '{1}' declared in the constructor."] = {
		category = "Error",
		code = 2301,
	},
	["Static members cannot reference class type parameters."] = {
		category = "Error",
		code = 2302,
	},
	["Circular definition of import alias '{0}'."] = {
		category = "Error",
		code = 2303,
	},
	["Cannot find name '{0}'."] = {
		category = "Error",
		code = 2304,
	},
	["Module '{0}' has no exported member '{1}'."] = {
		category = "Error",
		code = 2305,
	},
	["File '{0}' is not a module."] = {
		category = "Error",
		code = 2306,
	},
	["Cannot find module '{0}' or its corresponding type declarations."] = {
		category = "Error",
		code = 2307,
	},
	["Module {0} has already exported a member named '{1}'. Consider explicitly re-exporting to resolve the ambiguity."] = {
		category = "Error",
		code = 2308,
	},
	["An export assignment cannot be used in a module with other exported elements."] = {
		category = "Error",
		code = 2309,
	},
	["Type '{0}' recursively references itself as a base type."] = {
		category = "Error",
		code = 2310,
	},
	["Cannot find name '{0}'. Did you mean to write this in an async function?"] = {
		category = "Error",
		code = 2311,
	},
	["An interface can only extend an object type or intersection of object types with statically known members."] = {
		category = "Error",
		code = 2312,
	},
	["Type parameter '{0}' has a circular constraint."] = {
		category = "Error",
		code = 2313,
	},
	["Generic type '{0}' requires {1} type argument(s)."] = {
		category = "Error",
		code = 2314,
	},
	["Type '{0}' is not generic."] = {
		category = "Error",
		code = 2315,
	},
	["Global type '{0}' must be a class or interface type."] = {
		category = "Error",
		code = 2316,
	},
	["Global type '{0}' must have {1} type parameter(s)."] = {
		category = "Error",
		code = 2317,
	},
	["Cannot find global type '{0}'."] = {
		category = "Error",
		code = 2318,
	},
	["Named property '{0}' of types '{1}' and '{2}' are not identical."] = {
		category = "Error",
		code = 2319,
	},
	["Interface '{0}' cannot simultaneously extend types '{1}' and '{2}'."] = {
		category = "Error",
		code = 2320,
	},
	["Excessive stack depth comparing types '{0}' and '{1}'."] = {
		category = "Error",
		code = 2321,
	},
	["Type '{0}' is not assignable to type '{1}'."] = {
		category = "Error",
		code = 2322,
	},
	["Cannot redeclare exported variable '{0}'."] = {
		category = "Error",
		code = 2323,
	},
	["Property '{0}' is missing in type '{1}'."] = {
		category = "Error",
		code = 2324,
	},
	["Property '{0}' is private in type '{1}' but not in type '{2}'."] = {
		category = "Error",
		code = 2325,
	},
	["Types of property '{0}' are incompatible."] = {
		category = "Error",
		code = 2326,
	},
	["Property '{0}' is optional in type '{1}' but required in type '{2}'."] = {
		category = "Error",
		code = 2327,
	},
	["Types of parameters '{0}' and '{1}' are incompatible."] = {
		category = "Error",
		code = 2328,
	},
	["Index signature for type '{0}' is missing in type '{1}'."] = {
		category = "Error",
		code = 2329,
	},
	["'{0}' and '{1}' index signatures are incompatible."] = {
		category = "Error",
		code = 2330,
	},
	["'this' cannot be referenced in a module or namespace body."] = {
		category = "Error",
		code = 2331,
	},
	["'this' cannot be referenced in current location."] = {
		category = "Error",
		code = 2332,
	},
	["'this' cannot be referenced in constructor arguments."] = {
		category = "Error",
		code = 2333,
	},
	["'this' cannot be referenced in a static property initializer."] = {
		category = "Error",
		code = 2334,
	},
	["'super' can only be referenced in a derived class."] = {
		category = "Error",
		code = 2335,
	},
	["'super' cannot be referenced in constructor arguments."] = {
		category = "Error",
		code = 2336,
	},
	["Super calls are not permitted outside constructors or in nested functions inside constructors."] = {
		category = "Error",
		code = 2337,
	},
	["'super' property access is permitted only in a constructor, member function, or member accessor of a derived class."] = {
		category = "Error",
		code = 2338,
	},
	["Property '{0}' does not exist on type '{1}'."] = {
		category = "Error",
		code = 2339,
	},
	["Only public and protected methods of the base class are accessible via the 'super' keyword."] = {
		category = "Error",
		code = 2340,
	},
	["Property '{0}' is private and only accessible within class '{1}'."] = {
		category = "Error",
		code = 2341,
	},
	["This syntax requires an imported helper named '{1}' which does not exist in '{0}'. Consider upgrading your version of '{0}'."] = {
		category = "Error",
		code = 2343,
	},
	["Type '{0}' does not satisfy the constraint '{1}'."] = {
		category = "Error",
		code = 2344,
	},
	["Argument of type '{0}' is not assignable to parameter of type '{1}'."] = {
		category = "Error",
		code = 2345,
	},
	["Call target does not contain any signatures."] = {
		category = "Error",
		code = 2346,
	},
	["Untyped function calls may not accept type arguments."] = {
		category = "Error",
		code = 2347,
	},
	["Value of type '{0}' is not callable. Did you mean to include 'new'?"] = {
		category = "Error",
		code = 2348,
	},
	["This expression is not callable."] = {
		category = "Error",
		code = 2349,
	},
	["Only a void function can be called with the 'new' keyword."] = {
		category = "Error",
		code = 2350,
	},
	["This expression is not constructable."] = {
		category = "Error",
		code = 2351,
	},
	["Conversion of type '{0}' to type '{1}' may be a mistake because neither type sufficiently overlaps with the other. If this was intentional, convert the expression to 'unknown' first."] = {
		category = "Error",
		code = 2352,
	},
	["Object literal may only specify known properties, and '{0}' does not exist in type '{1}'."] = {
		category = "Error",
		code = 2353,
	},
	["This syntax requires an imported helper but module '{0}' cannot be found."] = {
		category = "Error",
		code = 2354,
	},
	["A function whose declared type is neither 'void' nor 'any' must return a value."] = {
		category = "Error",
		code = 2355,
	},
	["An arithmetic operand must be of type 'any', 'number', 'bigint' or an enum type."] = {
		category = "Error",
		code = 2356,
	},
	["The operand of an increment or decrement operator must be a variable or a property access."] = {
		category = "Error",
		code = 2357,
	},
	["The left-hand side of an 'instanceof' expression must be of type 'any', an object type or a type parameter."] = {
		category = "Error",
		code = 2358,
	},
	["The right-hand side of an 'instanceof' expression must be of type 'any' or of a type assignable to the 'Function' interface type."] = {
		category = "Error",
		code = 2359,
	},
	["The left-hand side of an 'in' expression must be a private identifier or of type 'any', 'string', 'number', or 'symbol'."] = {
		category = "Error",
		code = 2360,
	},
	["The right-hand side of an 'in' expression must not be a primitive."] = {
		category = "Error",
		code = 2361,
	},
	["The left-hand side of an arithmetic operation must be of type 'any', 'number', 'bigint' or an enum type."] = {
		category = "Error",
		code = 2362,
	},
	["The right-hand side of an arithmetic operation must be of type 'any', 'number', 'bigint' or an enum type."] = {
		category = "Error",
		code = 2363,
	},
	["The left-hand side of an assignment expression must be a variable or a property access."] = {
		category = "Error",
		code = 2364,
	},
	["Operator '{0}' cannot be applied to types '{1}' and '{2}'."] = {
		category = "Error",
		code = 2365,
	},
	["Function lacks ending return statement and return type does not include 'undefined'."] = {
		category = "Error",
		code = 2366,
	},
	["This condition will always return '{0}' since the types '{1}' and '{2}' have no overlap."] = {
		category = "Error",
		code = 2367,
	},
	["Type parameter name cannot be '{0}'."] = {
		category = "Error",
		code = 2368,
	},
	["A parameter property is only allowed in a constructor implementation."] = {
		category = "Error",
		code = 2369,
	},
	["A rest parameter must be of an array type."] = {
		category = "Error",
		code = 2370,
	},
	["A parameter initializer is only allowed in a function or constructor implementation."] = {
		category = "Error",
		code = 2371,
	},
	["Parameter '{0}' cannot reference itself."] = {
		category = "Error",
		code = 2372,
	},
	["Parameter '{0}' cannot reference identifier '{1}' declared after it."] = {
		category = "Error",
		code = 2373,
	},
	["Duplicate index signature for type '{0}'."] = {
		category = "Error",
		code = 2374,
	},
	["Type '{0}' is not assignable to type '{1}' with 'exactOptionalPropertyTypes: true'. Consider adding 'undefined' to the types of the target's properties."] = {
		category = "Error",
		code = 2375,
	},
	["A 'super' call must be the first statement in the constructor to refer to 'super' or 'this' when a derived class contains initialized properties, parameter properties, or private identifiers."] = {
		category = "Error",
		code = 2376,
	},
	["Constructors for derived classes must contain a 'super' call."] = {
		category = "Error",
		code = 2377,
	},
	["A 'get' accessor must return a value."] = {
		category = "Error",
		code = 2378,
	},
	["Argument of type '{0}' is not assignable to parameter of type '{1}' with 'exactOptionalPropertyTypes: true'. Consider adding 'undefined' to the types of the target's properties."] = {
		category = "Error",
		code = 2379,
	},
	["The return type of a 'get' accessor must be assignable to its 'set' accessor type"] = {
		category = "Error",
		code = 2380,
	},
	["Overload signatures must all be exported or non-exported."] = {
		category = "Error",
		code = 2383,
	},
	["Overload signatures must all be ambient or non-ambient."] = {
		category = "Error",
		code = 2384,
	},
	["Overload signatures must all be public, private or protected."] = {
		category = "Error",
		code = 2385,
	},
	["Overload signatures must all be optional or required."] = {
		category = "Error",
		code = 2386,
	},
	["Function overload must be static."] = {
		category = "Error",
		code = 2387,
	},
	["Function overload must not be static."] = {
		category = "Error",
		code = 2388,
	},
	["Function implementation name must be '{0}'."] = {
		category = "Error",
		code = 2389,
	},
	["Constructor implementation is missing."] = {
		category = "Error",
		code = 2390,
	},
	["Function implementation is missing or not immediately following the declaration."] = {
		category = "Error",
		code = 2391,
	},
	["Multiple constructor implementations are not allowed."] = {
		category = "Error",
		code = 2392,
	},
	["Duplicate function implementation."] = {
		category = "Error",
		code = 2393,
	},
	["This overload signature is not compatible with its implementation signature."] = {
		category = "Error",
		code = 2394,
	},
	["Individual declarations in merged declaration '{0}' must be all exported or all local."] = {
		category = "Error",
		code = 2395,
	},
	["Duplicate identifier 'arguments'. Compiler uses 'arguments' to initialize rest parameters."] = {
		category = "Error",
		code = 2396,
	},
	["Declaration name conflicts with built-in global identifier '{0}'."] = {
		category = "Error",
		code = 2397,
	},
	["'constructor' cannot be used as a parameter property name."] = {
		category = "Error",
		code = 2398,
	},
	["Duplicate identifier '_this'. Compiler uses variable declaration '_this' to capture 'this' reference."] = {
		category = "Error",
		code = 2399,
	},
	["Expression resolves to variable declaration '_this' that compiler uses to capture 'this' reference."] = {
		category = "Error",
		code = 2400,
	},
	["A 'super' call must be a root-level statement within a constructor of a derived class that contains initialized properties, parameter properties, or private identifiers."] = {
		category = "Error",
		code = 2401,
	},
	["Expression resolves to '_super' that compiler uses to capture base class reference."] = {
		category = "Error",
		code = 2402,
	},
	["Subsequent variable declarations must have the same type.  Variable '{0}' must be of type '{1}', but here has type '{2}'."] = {
		category = "Error",
		code = 2403,
	},
	["The left-hand side of a 'for...in' statement cannot use a type annotation."] = {
		category = "Error",
		code = 2404,
	},
	["The left-hand side of a 'for...in' statement must be of type 'string' or 'any'."] = {
		category = "Error",
		code = 2405,
	},
	["The left-hand side of a 'for...in' statement must be a variable or a property access."] = {
		category = "Error",
		code = 2406,
	},
	["The right-hand side of a 'for...in' statement must be of type 'any', an object type or a type parameter, but here has type '{0}'."] = {
		category = "Error",
		code = 2407,
	},
	["Setters cannot return a value."] = {
		category = "Error",
		code = 2408,
	},
	["Return type of constructor signature must be assignable to the instance type of the class."] = {
		category = "Error",
		code = 2409,
	},
	["The 'with' statement is not supported. All symbols in a 'with' block will have type 'any'."] = {
		category = "Error",
		code = 2410,
	},
	["Type '{0}' is not assignable to type '{1}' with 'exactOptionalPropertyTypes: true'. Consider adding 'undefined' to the type of the target."] = {
		category = "Error",
		code = 2412,
	},
	["Property '{0}' of type '{1}' is not assignable to '{2}' index type '{3}'."] = {
		category = "Error",
		code = 2411,
	},
	["'{0}' index type '{1}' is not assignable to '{2}' index type '{3}'."] = {
		category = "Error",
		code = 2413,
	},
	["Class name cannot be '{0}'."] = {
		category = "Error",
		code = 2414,
	},
	["Class '{0}' incorrectly extends base class '{1}'."] = {
		category = "Error",
		code = 2415,
	},
	["Property '{0}' in type '{1}' is not assignable to the same property in base type '{2}'."] = {
		category = "Error",
		code = 2416,
	},
	["Class static side '{0}' incorrectly extends base class static side '{1}'."] = {
		category = "Error",
		code = 2417,
	},
	["Type of computed property's value is '{0}', which is not assignable to type '{1}'."] = {
		category = "Error",
		code = 2418,
	},
	["Types of construct signatures are incompatible."] = {
		category = "Error",
		code = 2419,
	},
	["Class '{0}' incorrectly implements interface '{1}'."] = {
		category = "Error",
		code = 2420,
	},
	["A class can only implement an object type or intersection of object types with statically known members."] = {
		category = "Error",
		code = 2422,
	},
	["Class '{0}' defines instance member function '{1}', but extended class '{2}' defines it as instance member accessor."] = {
		category = "Error",
		code = 2423,
	},
	["Class '{0}' defines instance member property '{1}', but extended class '{2}' defines it as instance member function."] = {
		category = "Error",
		code = 2425,
	},
	["Class '{0}' defines instance member accessor '{1}', but extended class '{2}' defines it as instance member function."] = {
		category = "Error",
		code = 2426,
	},
	["Interface name cannot be '{0}'."] = {
		category = "Error",
		code = 2427,
	},
	["All declarations of '{0}' must have identical type parameters."] = {
		category = "Error",
		code = 2428,
	},
	["Interface '{0}' incorrectly extends interface '{1}'."] = {
		category = "Error",
		code = 2430,
	},
	["Enum name cannot be '{0}'."] = {
		category = "Error",
		code = 2431,
	},
	["In an enum with multiple declarations, only one declaration can omit an initializer for its first enum element."] = {
		category = "Error",
		code = 2432,
	},
	["A namespace declaration cannot be in a different file from a class or function with which it is merged."] = {
		category = "Error",
		code = 2433,
	},
	["A namespace declaration cannot be located prior to a class or function with which it is merged."] = {
		category = "Error",
		code = 2434,
	},
	["Ambient modules cannot be nested in other modules or namespaces."] = {
		category = "Error",
		code = 2435,
	},
	["Ambient module declaration cannot specify relative module name."] = {
		category = "Error",
		code = 2436,
	},
	["Module '{0}' is hidden by a local declaration with the same name."] = {
		category = "Error",
		code = 2437,
	},
	["Import name cannot be '{0}'."] = {
		category = "Error",
		code = 2438,
	},
	["Import or export declaration in an ambient module declaration cannot reference module through relative module name."] = {
		category = "Error",
		code = 2439,
	},
	["Import declaration conflicts with local declaration of '{0}'."] = {
		category = "Error",
		code = 2440,
	},
	["Duplicate identifier '{0}'. Compiler reserves name '{1}' in top level scope of a module."] = {
		category = "Error",
		code = 2441,
	},
	["Types have separate declarations of a private property '{0}'."] = {
		category = "Error",
		code = 2442,
	},
	["Property '{0}' is protected but type '{1}' is not a class derived from '{2}'."] = {
		category = "Error",
		code = 2443,
	},
	["Property '{0}' is protected in type '{1}' but public in type '{2}'."] = {
		category = "Error",
		code = 2444,
	},
	["Property '{0}' is protected and only accessible within class '{1}' and its subclasses."] = {
		category = "Error",
		code = 2445,
	},
	["Property '{0}' is protected and only accessible through an instance of class '{1}'. This is an instance of class '{2}'."] = {
		category = "Error",
		code = 2446,
	},
	["The '{0}' operator is not allowed for boolean types. Consider using '{1}' instead."] = {
		category = "Error",
		code = 2447,
	},
	["Block-scoped variable '{0}' used before its declaration."] = {
		category = "Error",
		code = 2448,
	},
	["Class '{0}' used before its declaration."] = {
		category = "Error",
		code = 2449,
	},
	["Enum '{0}' used before its declaration."] = {
		category = "Error",
		code = 2450,
	},
	["Cannot redeclare block-scoped variable '{0}'."] = {
		category = "Error",
		code = 2451,
	},
	["An enum member cannot have a numeric name."] = {
		category = "Error",
		code = 2452,
	},
	["Variable '{0}' is used before being assigned."] = {
		category = "Error",
		code = 2454,
	},
	["Type alias '{0}' circularly references itself."] = {
		category = "Error",
		code = 2456,
	},
	["Type alias name cannot be '{0}'."] = {
		category = "Error",
		code = 2457,
	},
	["An AMD module cannot have multiple name assignments."] = {
		category = "Error",
		code = 2458,
	},
	["Module '{0}' declares '{1}' locally, but it is not exported."] = {
		category = "Error",
		code = 2459,
	},
	["Module '{0}' declares '{1}' locally, but it is exported as '{2}'."] = {
		category = "Error",
		code = 2460,
	},
	["Type '{0}' is not an array type."] = {
		category = "Error",
		code = 2461,
	},
	["A rest element must be last in a destructuring pattern."] = {
		category = "Error",
		code = 2462,
	},
	["A binding pattern parameter cannot be optional in an implementation signature."] = {
		category = "Error",
		code = 2463,
	},
	["A computed property name must be of type 'string', 'number', 'symbol', or 'any'."] = {
		category = "Error",
		code = 2464,
	},
	["'this' cannot be referenced in a computed property name."] = {
		category = "Error",
		code = 2465,
	},
	["'super' cannot be referenced in a computed property name."] = {
		category = "Error",
		code = 2466,
	},
	["A computed property name cannot reference a type parameter from its containing type."] = {
		category = "Error",
		code = 2467,
	},
	["Cannot find global value '{0}'."] = {
		category = "Error",
		code = 2468,
	},
	["The '{0}' operator cannot be applied to type 'symbol'."] = {
		category = "Error",
		code = 2469,
	},
	["Spread operator in 'new' expressions is only available when targeting ECMAScript 5 and higher."] = {
		category = "Error",
		code = 2472,
	},
	["Enum declarations must all be const or non-const."] = {
		category = "Error",
		code = 2473,
	},
	["const enum member initializers can only contain literal values and other computed enum values."] = {
		category = "Error",
		code = 2474,
	},
	["'const' enums can only be used in property or index access expressions or the right hand side of an import declaration or export assignment or type query."] = {
		category = "Error",
		code = 2475,
	},
	["A const enum member can only be accessed using a string literal."] = {
		category = "Error",
		code = 2476,
	},
	["'const' enum member initializer was evaluated to a non-finite value."] = {
		category = "Error",
		code = 2477,
	},
	["'const' enum member initializer was evaluated to disallowed value 'NaN'."] = {
		category = "Error",
		code = 2478,
	},
	["'let' is not allowed to be used as a name in 'let' or 'const' declarations."] = {
		category = "Error",
		code = 2480,
	},
	["Cannot initialize outer scoped variable '{0}' in the same scope as block scoped declaration '{1}'."] = {
		category = "Error",
		code = 2481,
	},
	["The left-hand side of a 'for...of' statement cannot use a type annotation."] = {
		category = "Error",
		code = 2483,
	},
	["Export declaration conflicts with exported declaration of '{0}'."] = {
		category = "Error",
		code = 2484,
	},
	["The left-hand side of a 'for...of' statement must be a variable or a property access."] = {
		category = "Error",
		code = 2487,
	},
	["Type '{0}' must have a '[Symbol.iterator]()' method that returns an iterator."] = {
		category = "Error",
		code = 2488,
	},
	["An iterator must have a 'next()' method."] = {
		category = "Error",
		code = 2489,
	},
	["The type returned by the '{0}()' method of an iterator must have a 'value' property."] = {
		category = "Error",
		code = 2490,
	},
	["The left-hand side of a 'for...in' statement cannot be a destructuring pattern."] = {
		category = "Error",
		code = 2491,
	},
	["Cannot redeclare identifier '{0}' in catch clause."] = {
		category = "Error",
		code = 2492,
	},
	["Tuple type '{0}' of length '{1}' has no element at index '{2}'."] = {
		category = "Error",
		code = 2493,
	},
	["Using a string in a 'for...of' statement is only supported in ECMAScript 5 and higher."] = {
		category = "Error",
		code = 2494,
	},
	["Type '{0}' is not an array type or a string type."] = {
		category = "Error",
		code = 2495,
	},
	["The 'arguments' object cannot be referenced in an arrow function in ES3 and ES5. Consider using a standard function expression."] = {
		category = "Error",
		code = 2496,
	},
	["This module can only be referenced with ECMAScript imports/exports by turning on the '{0}' flag and referencing its default export."] = {
		category = "Error",
		code = 2497,
	},
	["Module '{0}' uses 'export =' and cannot be used with 'export *'."] = {
		category = "Error",
		code = 2498,
	},
	["An interface can only extend an identifier/qualified-name with optional type arguments."] = {
		category = "Error",
		code = 2499,
	},
	["A class can only implement an identifier/qualified-name with optional type arguments."] = {
		category = "Error",
		code = 2500,
	},
	["A rest element cannot contain a binding pattern."] = {
		category = "Error",
		code = 2501,
	},
	["'{0}' is referenced directly or indirectly in its own type annotation."] = {
		category = "Error",
		code = 2502,
	},
	["Cannot find namespace '{0}'."] = {
		category = "Error",
		code = 2503,
	},
	["Type '{0}' must have a '[Symbol.asyncIterator]()' method that returns an async iterator."] = {
		category = "Error",
		code = 2504,
	},
	["A generator cannot have a 'void' type annotation."] = {
		category = "Error",
		code = 2505,
	},
	["'{0}' is referenced directly or indirectly in its own base expression."] = {
		category = "Error",
		code = 2506,
	},
	["Type '{0}' is not a constructor function type."] = {
		category = "Error",
		code = 2507,
	},
	["No base constructor has the specified number of type arguments."] = {
		category = "Error",
		code = 2508,
	},
	["Base constructor return type '{0}' is not an object type or intersection of object types with statically known members."] = {
		category = "Error",
		code = 2509,
	},
	["Base constructors must all have the same return type."] = {
		category = "Error",
		code = 2510,
	},
	["Cannot create an instance of an abstract class."] = {
		category = "Error",
		code = 2511,
	},
	["Overload signatures must all be abstract or non-abstract."] = {
		category = "Error",
		code = 2512,
	},
	["Abstract method '{0}' in class '{1}' cannot be accessed via super expression."] = {
		category = "Error",
		code = 2513,
	},
	["Non-abstract class '{0}' does not implement inherited abstract member '{1}' from class '{2}'."] = {
		category = "Error",
		code = 2515,
	},
	["All declarations of an abstract method must be consecutive."] = {
		category = "Error",
		code = 2516,
	},
	["Cannot assign an abstract constructor type to a non-abstract constructor type."] = {
		category = "Error",
		code = 2517,
	},
	["A 'this'-based type guard is not compatible with a parameter-based type guard."] = {
		category = "Error",
		code = 2518,
	},
	["An async iterator must have a 'next()' method."] = {
		category = "Error",
		code = 2519,
	},
	["Duplicate identifier '{0}'. Compiler uses declaration '{1}' to support async functions."] = {
		category = "Error",
		code = 2520,
	},
	["The 'arguments' object cannot be referenced in an async function or method in ES3 and ES5. Consider using a standard function or method."] = {
		category = "Error",
		code = 2522,
	},
	["'yield' expressions cannot be used in a parameter initializer."] = {
		category = "Error",
		code = 2523,
	},
	["'await' expressions cannot be used in a parameter initializer."] = {
		category = "Error",
		code = 2524,
	},
	["Initializer provides no value for this binding element and the binding element has no default value."] = {
		category = "Error",
		code = 2525,
	},
	["A 'this' type is available only in a non-static member of a class or interface."] = {
		category = "Error",
		code = 2526,
	},
	["The inferred type of '{0}' references an inaccessible '{1}' type. A type annotation is necessary."] = {
		category = "Error",
		code = 2527,
	},
	["A module cannot have multiple default exports."] = {
		category = "Error",
		code = 2528,
	},
	["Duplicate identifier '{0}'. Compiler reserves name '{1}' in top level scope of a module containing async functions."] = {
		category = "Error",
		code = 2529,
	},
	["Property '{0}' is incompatible with index signature."] = {
		category = "Error",
		code = 2530,
	},
	["Object is possibly 'null'."] = {
		category = "Error",
		code = 2531,
	},
	["Object is possibly 'undefined'."] = {
		category = "Error",
		code = 2532,
	},
	["Object is possibly 'null' or 'undefined'."] = {
		category = "Error",
		code = 2533,
	},
	["A function returning 'never' cannot have a reachable end point."] = {
		category = "Error",
		code = 2534,
	},
	["Enum type '{0}' has members with initializers that are not literals."] = {
		category = "Error",
		code = 2535,
	},
	["Type '{0}' cannot be used to index type '{1}'."] = {
		category = "Error",
		code = 2536,
	},
	["Type '{0}' has no matching index signature for type '{1}'."] = {
		category = "Error",
		code = 2537,
	},
	["Type '{0}' cannot be used as an index type."] = {
		category = "Error",
		code = 2538,
	},
	["Cannot assign to '{0}' because it is not a variable."] = {
		category = "Error",
		code = 2539,
	},
	["Cannot assign to '{0}' because it is a read-only property."] = {
		category = "Error",
		code = 2540,
	},
	["Index signature in type '{0}' only permits reading."] = {
		category = "Error",
		code = 2542,
	},
	["Duplicate identifier '_newTarget'. Compiler uses variable declaration '_newTarget' to capture 'new.target' meta-property reference."] = {
		category = "Error",
		code = 2543,
	},
	["Expression resolves to variable declaration '_newTarget' that compiler uses to capture 'new.target' meta-property reference."] = {
		category = "Error",
		code = 2544,
	},
	["A mixin class must have a constructor with a single rest parameter of type 'any[]'."] = {
		category = "Error",
		code = 2545,
	},
	["The type returned by the '{0}()' method of an async iterator must be a promise for a type with a 'value' property."] = {
		category = "Error",
		code = 2547,
	},
	["Type '{0}' is not an array type or does not have a '[Symbol.iterator]()' method that returns an iterator."] = {
		category = "Error",
		code = 2548,
	},
	["Type '{0}' is not an array type or a string type or does not have a '[Symbol.iterator]()' method that returns an iterator."] = {
		category = "Error",
		code = 2549,
	},
	["Property '{0}' does not exist on type '{1}'. Do you need to change your target library? Try changing the 'lib' compiler option to '{2}' or later."] = {
		category = "Error",
		code = 2550,
	},
	["Property '{0}' does not exist on type '{1}'. Did you mean '{2}'?"] = {
		category = "Error",
		code = 2551,
	},
	["Cannot find name '{0}'. Did you mean '{1}'?"] = {
		category = "Error",
		code = 2552,
	},
	["Computed values are not permitted in an enum with string valued members."] = {
		category = "Error",
		code = 2553,
	},
	["Expected {0} arguments, but got {1}."] = {
		category = "Error",
		code = 2554,
	},
	["Expected at least {0} arguments, but got {1}."] = {
		category = "Error",
		code = 2555,
	},
	["A spread argument must either have a tuple type or be passed to a rest parameter."] = {
		category = "Error",
		code = 2556,
	},
	["Expected {0} type arguments, but got {1}."] = {
		category = "Error",
		code = 2558,
	},
	["Type '{0}' has no properties in common with type '{1}'."] = {
		category = "Error",
		code = 2559,
	},
	["Value of type '{0}' has no properties in common with type '{1}'. Did you mean to call it?"] = {
		category = "Error",
		code = 2560,
	},
	["Object literal may only specify known properties, but '{0}' does not exist in type '{1}'. Did you mean to write '{2}'?"] = {
		category = "Error",
		code = 2561,
	},
	["Base class expressions cannot reference class type parameters."] = {
		category = "Error",
		code = 2562,
	},
	["The containing function or module body is too large for control flow analysis."] = {
		category = "Error",
		code = 2563,
	},
	["Property '{0}' has no initializer and is not definitely assigned in the constructor."] = {
		category = "Error",
		code = 2564,
	},
	["Property '{0}' is used before being assigned."] = {
		category = "Error",
		code = 2565,
	},
	["A rest element cannot have a property name."] = {
		category = "Error",
		code = 2566,
	},
	["Enum declarations can only merge with namespace or other enum declarations."] = {
		category = "Error",
		code = 2567,
	},
	["Property '{0}' may not exist on type '{1}'. Did you mean '{2}'?"] = {
		category = "Error",
		code = 2568,
	},
	["Type '{0}' is not an array type or a string type. Use compiler option '--downlevelIteration' to allow iterating of iterators."] = {
		category = "Error",
		code = 2569,
	},
	["Could not find name '{0}'. Did you mean '{1}'?"] = {
		category = "Error",
		code = 2570,
	},
	["Object is of type 'unknown'."] = {
		category = "Error",
		code = 2571,
	},
	["A rest element type must be an array type."] = {
		category = "Error",
		code = 2574,
	},
	["No overload expects {0} arguments, but overloads do exist that expect either {1} or {2} arguments."] = {
		category = "Error",
		code = 2575,
	},
	["Property '{0}' does not exist on type '{1}'. Did you mean to access the static member '{2}' instead?"] = {
		category = "Error",
		code = 2576,
	},
	["Return type annotation circularly references itself."] = {
		category = "Error",
		code = 2577,
	},
	["Unused '@ts-expect-error' directive."] = {
		category = "Error",
		code = 2578,
	},
	["Cannot find name '{0}'. Do you need to install type definitions for node? Try `npm i --save-dev @types/node`."] = {
		category = "Error",
		code = 2580,
	},
	["Cannot find name '{0}'. Do you need to install type definitions for jQuery? Try `npm i --save-dev @types/jquery`."] = {
		category = "Error",
		code = 2581,
	},
	["Cannot find name '{0}'. Do you need to install type definitions for a test runner? Try `npm i --save-dev @types/jest` or `npm i --save-dev @types/mocha`."] = {
		category = "Error",
		code = 2582,
	},
	["Cannot find name '{0}'. Do you need to change your target library? Try changing the 'lib' compiler option to '{1}' or later."] = {
		category = "Error",
		code = 2583,
	},
	["Cannot find name '{0}'. Do you need to change your target library? Try changing the 'lib' compiler option to include 'dom'."] = {
		category = "Error",
		code = 2584,
	},
	["'{0}' only refers to a type, but is being used as a value here. Do you need to change your target library? Try changing the 'lib' compiler option to es2015 or later."] = {
		category = "Error",
		code = 2585,
	},
	["Cannot assign to '{0}' because it is a constant."] = {
		category = "Error",
		code = 2588,
	},
	["Type instantiation is excessively deep and possibly infinite."] = {
		category = "Error",
		code = 2589,
	},
	["Expression produces a union type that is too complex to represent."] = {
		category = "Error",
		code = 2590,
	},
	["Cannot find name '{0}'. Do you need to install type definitions for node? Try `npm i --save-dev @types/node` and then add 'node' to the types field in your tsconfig."] = {
		category = "Error",
		code = 2591,
	},
	["Cannot find name '{0}'. Do you need to install type definitions for jQuery? Try `npm i --save-dev @types/jquery` and then add 'jquery' to the types field in your tsconfig."] = {
		category = "Error",
		code = 2592,
	},
	["Cannot find name '{0}'. Do you need to install type definitions for a test runner? Try `npm i --save-dev @types/jest` or `npm i --save-dev @types/mocha` and then add 'jest' or 'mocha' to the types field in your tsconfig."] = {
		category = "Error",
		code = 2593,
	},
	["This module is declared with using 'export =', and can only be used with a default import when using the '{0}' flag."] = {
		category = "Error",
		code = 2594,
	},
	["'{0}' can only be imported by using a default import."] = {
		category = "Error",
		code = 2595,
	},
	["'{0}' can only be imported by turning on the 'esModuleInterop' flag and using a default import."] = {
		category = "Error",
		code = 2596,
	},
	["'{0}' can only be imported by using a 'require' call or by using a default import."] = {
		category = "Error",
		code = 2597,
	},
	["'{0}' can only be imported by using a 'require' call or by turning on the 'esModuleInterop' flag and using a default import."] = {
		category = "Error",
		code = 2598,
	},
	["JSX element implicitly has type 'any' because the global type 'JSX.Element' does not exist."] = {
		category = "Error",
		code = 2602,
	},
	["Property '{0}' in type '{1}' is not assignable to type '{2}'."] = {
		category = "Error",
		code = 2603,
	},
	["JSX element type '{0}' does not have any construct or call signatures."] = {
		category = "Error",
		code = 2604,
	},
	["Property '{0}' of JSX spread attribute is not assignable to target property."] = {
		category = "Error",
		code = 2606,
	},
	["JSX element class does not support attributes because it does not have a '{0}' property."] = {
		category = "Error",
		code = 2607,
	},
	["The global type 'JSX.{0}' may not have more than one property."] = {
		category = "Error",
		code = 2608,
	},
	["JSX spread child must be an array type."] = {
		category = "Error",
		code = 2609,
	},
	["'{0}' is defined as an accessor in class '{1}', but is overridden here in '{2}' as an instance property."] = {
		category = "Error",
		code = 2610,
	},
	["'{0}' is defined as a property in class '{1}', but is overridden here in '{2}' as an accessor."] = {
		category = "Error",
		code = 2611,
	},
	["Property '{0}' will overwrite the base property in '{1}'. If this is intentional, add an initializer. Otherwise, add a 'declare' modifier or remove the redundant declaration."] = {
		category = "Error",
		code = 2612,
	},
	["Module '{0}' has no default export. Did you mean to use 'import { {1} } from {0}' instead?"] = {
		category = "Error",
		code = 2613,
	},
	["Module '{0}' has no exported member '{1}'. Did you mean to use 'import {1} from {0}' instead?"] = {
		category = "Error",
		code = 2614,
	},
	["Type of property '{0}' circularly references itself in mapped type '{1}'."] = {
		category = "Error",
		code = 2615,
	},
	["'{0}' can only be imported by using 'import {1} = require({2})' or a default import."] = {
		category = "Error",
		code = 2616,
	},
	["'{0}' can only be imported by using 'import {1} = require({2})' or by turning on the 'esModuleInterop' flag and using a default import."] = {
		category = "Error",
		code = 2617,
	},
	["Source has {0} element(s) but target requires {1}."] = {
		category = "Error",
		code = 2618,
	},
	["Source has {0} element(s) but target allows only {1}."] = {
		category = "Error",
		code = 2619,
	},
	["Target requires {0} element(s) but source may have fewer."] = {
		category = "Error",
		code = 2620,
	},
	["Target allows only {0} element(s) but source may have more."] = {
		category = "Error",
		code = 2621,
	},
	["Source provides no match for required element at position {0} in target."] = {
		category = "Error",
		code = 2623,
	},
	["Source provides no match for variadic element at position {0} in target."] = {
		category = "Error",
		code = 2624,
	},
	["Variadic element at position {0} in source does not match element at position {1} in target."] = {
		category = "Error",
		code = 2625,
	},
	["Type at position {0} in source is not compatible with type at position {1} in target."] = {
		category = "Error",
		code = 2626,
	},
	["Type at positions {0} through {1} in source is not compatible with type at position {2} in target."] = {
		category = "Error",
		code = 2627,
	},
	["Cannot assign to '{0}' because it is an enum."] = {
		category = "Error",
		code = 2628,
	},
	["Cannot assign to '{0}' because it is a class."] = {
		category = "Error",
		code = 2629,
	},
	["Cannot assign to '{0}' because it is a function."] = {
		category = "Error",
		code = 2630,
	},
	["Cannot assign to '{0}' because it is a namespace."] = {
		category = "Error",
		code = 2631,
	},
	["Cannot assign to '{0}' because it is an import."] = {
		category = "Error",
		code = 2632,
	},
	["JSX property access expressions cannot include JSX namespace names"] = {
		category = "Error",
		code = 2633,
	},
	["'{0}' index signatures are incompatible."] = {
		category = "Error",
		code = 2634,
	},
	["Type '{0}' has no signatures for which the type argument list is applicable."] = {
		category = "Error",
		code = 2635,
	},
	["Type '{0}' is not assignable to type '{1}' as implied by variance annotation."] = {
		category = "Error",
		code = 2636,
	},
	["Variance annotations are only supported in type aliases for object, function, constructor, and mapped types."] = {
		category = "Error",
		code = 2637,
	},
	["Cannot augment module '{0}' with value exports because it resolves to a non-module entity."] = {
		category = "Error",
		code = 2649,
	},
	["A member initializer in a enum declaration cannot reference members declared after it, including members defined in other enums."] = {
		category = "Error",
		code = 2651,
	},
	["Merged declaration '{0}' cannot include a default export declaration. Consider adding a separate 'export default {0}' declaration instead."] = {
		category = "Error",
		code = 2652,
	},
	["Non-abstract class expression does not implement inherited abstract member '{0}' from class '{1}'."] = {
		category = "Error",
		code = 2653,
	},
	["JSX expressions must have one parent element."] = {
		category = "Error",
		code = 2657,
	},
	["Type '{0}' provides no match for the signature '{1}'."] = {
		category = "Error",
		code = 2658,
	},
	["'super' is only allowed in members of object literal expressions when option 'target' is 'ES2015' or higher."] = {
		category = "Error",
		code = 2659,
	},
	["'super' can only be referenced in members of derived classes or object literal expressions."] = {
		category = "Error",
		code = 2660,
	},
	["Cannot export '{0}'. Only local declarations can be exported from a module."] = {
		category = "Error",
		code = 2661,
	},
	["Cannot find name '{0}'. Did you mean the static member '{1}.{0}'?"] = {
		category = "Error",
		code = 2662,
	},
	["Cannot find name '{0}'. Did you mean the instance member 'this.{0}'?"] = {
		category = "Error",
		code = 2663,
	},
	["Invalid module name in augmentation, module '{0}' cannot be found."] = {
		category = "Error",
		code = 2664,
	},
	["Invalid module name in augmentation. Module '{0}' resolves to an untyped module at '{1}', which cannot be augmented."] = {
		category = "Error",
		code = 2665,
	},
	["Exports and export assignments are not permitted in module augmentations."] = {
		category = "Error",
		code = 2666,
	},
	["Imports are not permitted in module augmentations. Consider moving them to the enclosing external module."] = {
		category = "Error",
		code = 2667,
	},
	["'export' modifier cannot be applied to ambient modules and module augmentations since they are always visible."] = {
		category = "Error",
		code = 2668,
	},
	["Augmentations for the global scope can only be directly nested in external modules or ambient module declarations."] = {
		category = "Error",
		code = 2669,
	},
	["Augmentations for the global scope should have 'declare' modifier unless they appear in already ambient context."] = {
		category = "Error",
		code = 2670,
	},
	["Cannot augment module '{0}' because it resolves to a non-module entity."] = {
		category = "Error",
		code = 2671,
	},
	["Cannot assign a '{0}' constructor type to a '{1}' constructor type."] = {
		category = "Error",
		code = 2672,
	},
	["Constructor of class '{0}' is private and only accessible within the class declaration."] = {
		category = "Error",
		code = 2673,
	},
	["Constructor of class '{0}' is protected and only accessible within the class declaration."] = {
		category = "Error",
		code = 2674,
	},
	["Cannot extend a class '{0}'. Class constructor is marked as private."] = {
		category = "Error",
		code = 2675,
	},
	["Accessors must both be abstract or non-abstract."] = {
		category = "Error",
		code = 2676,
	},
	["A type predicate's type must be assignable to its parameter's type."] = {
		category = "Error",
		code = 2677,
	},
	["Type '{0}' is not comparable to type '{1}'."] = {
		category = "Error",
		code = 2678,
	},
	["A function that is called with the 'new' keyword cannot have a 'this' type that is 'void'."] = {
		category = "Error",
		code = 2679,
	},
	["A '{0}' parameter must be the first parameter."] = {
		category = "Error",
		code = 2680,
	},
	["A constructor cannot have a 'this' parameter."] = {
		category = "Error",
		code = 2681,
	},
	["'this' implicitly has type 'any' because it does not have a type annotation."] = {
		category = "Error",
		code = 2683,
	},
	["The 'this' context of type '{0}' is not assignable to method's 'this' of type '{1}'."] = {
		category = "Error",
		code = 2684,
	},
	["The 'this' types of each signature are incompatible."] = {
		category = "Error",
		code = 2685,
	},
	["'{0}' refers to a UMD global, but the current file is a module. Consider adding an import instead."] = {
		category = "Error",
		code = 2686,
	},
	["All declarations of '{0}' must have identical modifiers."] = {
		category = "Error",
		code = 2687,
	},
	["Cannot find type definition file for '{0}'."] = {
		category = "Error",
		code = 2688,
	},
	["Cannot extend an interface '{0}'. Did you mean 'implements'?"] = {
		category = "Error",
		code = 2689,
	},
	["'{0}' only refers to a type, but is being used as a value here. Did you mean to use '{1} in {0}'?"] = {
		category = "Error",
		code = 2690,
	},
	["An import path cannot end with a '{0}' extension. Consider importing '{1}' instead."] = {
		category = "Error",
		code = 2691,
	},
	["'{0}' is a primitive, but '{1}' is a wrapper object. Prefer using '{0}' when possible."] = {
		category = "Error",
		code = 2692,
	},
	["'{0}' only refers to a type, but is being used as a value here."] = {
		category = "Error",
		code = 2693,
	},
	["Namespace '{0}' has no exported member '{1}'."] = {
		category = "Error",
		code = 2694,
	},
	["Left side of comma operator is unused and has no side effects."] = {
		category = "Error",
		code = 2695,
		reportsUnnecessary = true,
	},
	["The 'Object' type is assignable to very few other types. Did you mean to use the 'any' type instead?"] = {
		category = "Error",
		code = 2696,
	},
	["An async function or method must return a 'Promise'. Make sure you have a declaration for 'Promise' or include 'ES2015' in your '--lib' option."] = {
		category = "Error",
		code = 2697,
	},
	["Spread types may only be created from object types."] = {
		category = "Error",
		code = 2698,
	},
	["Static property '{0}' conflicts with built-in property 'Function.{0}' of constructor function '{1}'."] = {
		category = "Error",
		code = 2699,
	},
	["Rest types may only be created from object types."] = {
		category = "Error",
		code = 2700,
	},
	["The target of an object rest assignment must be a variable or a property access."] = {
		category = "Error",
		code = 2701,
	},
	["'{0}' only refers to a type, but is being used as a namespace here."] = {
		category = "Error",
		code = 2702,
	},
	["The operand of a 'delete' operator must be a property reference."] = {
		category = "Error",
		code = 2703,
	},
	["The operand of a 'delete' operator cannot be a read-only property."] = {
		category = "Error",
		code = 2704,
	},
	["An async function or method in ES5/ES3 requires the 'Promise' constructor.  Make sure you have a declaration for the 'Promise' constructor or include 'ES2015' in your '--lib' option."] = {
		category = "Error",
		code = 2705,
	},
	["Required type parameters may not follow optional type parameters."] = {
		category = "Error",
		code = 2706,
	},
	["Generic type '{0}' requires between {1} and {2} type arguments."] = {
		category = "Error",
		code = 2707,
	},
	["Cannot use namespace '{0}' as a value."] = {
		category = "Error",
		code = 2708,
	},
	["Cannot use namespace '{0}' as a type."] = {
		category = "Error",
		code = 2709,
	},
	["'{0}' are specified twice. The attribute named '{0}' will be overwritten."] = {
		category = "Error",
		code = 2710,
	},
	["A dynamic import call returns a 'Promise'. Make sure you have a declaration for 'Promise' or include 'ES2015' in your '--lib' option."] = {
		category = "Error",
		code = 2711,
	},
	["A dynamic import call in ES5/ES3 requires the 'Promise' constructor.  Make sure you have a declaration for the 'Promise' constructor or include 'ES2015' in your '--lib' option."] = {
		category = "Error",
		code = 2712,
	},
	["Cannot access '{0}.{1}' because '{0}' is a type, but not a namespace. Did you mean to retrieve the type of the property '{1}' in '{0}' with '{0}[\"{1}\"]'?"] = {
		category = "Error",
		code = 2713,
	},
	["The expression of an export assignment must be an identifier or qualified name in an ambient context."] = {
		category = "Error",
		code = 2714,
	},
	["Abstract property '{0}' in class '{1}' cannot be accessed in the constructor."] = {
		category = "Error",
		code = 2715,
	},
	["Type parameter '{0}' has a circular default."] = {
		category = "Error",
		code = 2716,
	},
	["Subsequent property declarations must have the same type.  Property '{0}' must be of type '{1}', but here has type '{2}'."] = {
		category = "Error",
		code = 2717,
	},
	["Duplicate property '{0}'."] = {
		category = "Error",
		code = 2718,
	},
	["Type '{0}' is not assignable to type '{1}'. Two different types with this name exist, but they are unrelated."] = {
		category = "Error",
		code = 2719,
	},
	["Class '{0}' incorrectly implements class '{1}'. Did you mean to extend '{1}' and inherit its members as a subclass?"] = {
		category = "Error",
		code = 2720,
	},
	["Cannot invoke an object which is possibly 'null'."] = {
		category = "Error",
		code = 2721,
	},
	["Cannot invoke an object which is possibly 'undefined'."] = {
		category = "Error",
		code = 2722,
	},
	["Cannot invoke an object which is possibly 'null' or 'undefined'."] = {
		category = "Error",
		code = 2723,
	},
	["'{0}' has no exported member named '{1}'. Did you mean '{2}'?"] = {
		category = "Error",
		code = 2724,
	},
	["Class name cannot be 'Object' when targeting ES5 with module {0}."] = {
		category = "Error",
		code = 2725,
	},
	["Cannot find lib definition for '{0}'."] = {
		category = "Error",
		code = 2726,
	},
	["Cannot find lib definition for '{0}'. Did you mean '{1}'?"] = {
		category = "Error",
		code = 2727,
	},
	["'{0}' is declared here."] = {
		category = "Message",
		code = 2728,
	},
	["Property '{0}' is used before its initialization."] = {
		category = "Error",
		code = 2729,
	},
	["An arrow function cannot have a 'this' parameter."] = {
		category = "Error",
		code = 2730,
	},
	["Implicit conversion of a 'symbol' to a 'string' will fail at runtime. Consider wrapping this expression in 'String(...)'."] = {
		category = "Error",
		code = 2731,
	},
	["Cannot find module '{0}'. Consider using '--resolveJsonModule' to import module with '.json' extension."] = {
		category = "Error",
		code = 2732,
	},
	["Property '{0}' was also declared here."] = {
		category = "Error",
		code = 2733,
	},
	["Are you missing a semicolon?"] = {
		category = "Error",
		code = 2734,
	},
	["Did you mean for '{0}' to be constrained to type 'new (...args: any[]) => {1}'?"] = {
		category = "Error",
		code = 2735,
	},
	["Operator '{0}' cannot be applied to type '{1}'."] = {
		category = "Error",
		code = 2736,
	},
	["BigInt literals are not available when targeting lower than ES2020."] = {
		category = "Error",
		code = 2737,
	},
	["An outer value of 'this' is shadowed by this container."] = {
		category = "Message",
		code = 2738,
	},
	["Type '{0}' is missing the following properties from type '{1}': {2}"] = {
		category = "Error",
		code = 2739,
	},
	["Type '{0}' is missing the following properties from type '{1}': {2}, and {3} more."] = {
		category = "Error",
		code = 2740,
	},
	["Property '{0}' is missing in type '{1}' but required in type '{2}'."] = {
		category = "Error",
		code = 2741,
	},
	["The inferred type of '{0}' cannot be named without a reference to '{1}'. This is likely not portable. A type annotation is necessary."] = {
		category = "Error",
		code = 2742,
	},
	["No overload expects {0} type arguments, but overloads do exist that expect either {1} or {2} type arguments."] = {
		category = "Error",
		code = 2743,
	},
	["Type parameter defaults can only reference previously declared type parameters."] = {
		category = "Error",
		code = 2744,
	},
	["This JSX tag's '{0}' prop expects type '{1}' which requires multiple children, but only a single child was provided."] = {
		category = "Error",
		code = 2745,
	},
	["This JSX tag's '{0}' prop expects a single child of type '{1}', but multiple children were provided."] = {
		category = "Error",
		code = 2746,
	},
	["'{0}' components don't accept text as child elements. Text in JSX has the type 'string', but the expected type of '{1}' is '{2}'."] = {
		category = "Error",
		code = 2747,
	},
	["Cannot access ambient const enums when the '--isolatedModules' flag is provided."] = {
		category = "Error",
		code = 2748,
	},
	["'{0}' refers to a value, but is being used as a type here. Did you mean 'typeof {0}'?"] = {
		category = "Error",
		code = 2749,
	},
	["The implementation signature is declared here."] = {
		category = "Error",
		code = 2750,
	},
	["Circularity originates in type at this location."] = {
		category = "Error",
		code = 2751,
	},
	["The first export default is here."] = {
		category = "Error",
		code = 2752,
	},
	["Another export default is here."] = {
		category = "Error",
		code = 2753,
	},
	["'super' may not use type arguments."] = {
		category = "Error",
		code = 2754,
	},
	["No constituent of type '{0}' is callable."] = {
		category = "Error",
		code = 2755,
	},
	["Not all constituents of type '{0}' are callable."] = {
		category = "Error",
		code = 2756,
	},
	["Type '{0}' has no call signatures."] = {
		category = "Error",
		code = 2757,
	},
	["Each member of the union type '{0}' has signatures, but none of those signatures are compatible with each other."] = {
		category = "Error",
		code = 2758,
	},
	["No constituent of type '{0}' is constructable."] = {
		category = "Error",
		code = 2759,
	},
	["Not all constituents of type '{0}' are constructable."] = {
		category = "Error",
		code = 2760,
	},
	["Type '{0}' has no construct signatures."] = {
		category = "Error",
		code = 2761,
	},
	["Each member of the union type '{0}' has construct signatures, but none of those signatures are compatible with each other."] = {
		category = "Error",
		code = 2762,
	},
	["Cannot iterate value because the 'next' method of its iterator expects type '{1}', but for-of will always send '{0}'."] = {
		category = "Error",
		code = 2763,
	},
	["Cannot iterate value because the 'next' method of its iterator expects type '{1}', but array spread will always send '{0}'."] = {
		category = "Error",
		code = 2764,
	},
	["Cannot iterate value because the 'next' method of its iterator expects type '{1}', but array destructuring will always send '{0}'."] = {
		category = "Error",
		code = 2765,
	},
	["Cannot delegate iteration to value because the 'next' method of its iterator expects type '{1}', but the containing generator will always send '{0}'."] = {
		category = "Error",
		code = 2766,
	},
	["The '{0}' property of an iterator must be a method."] = {
		category = "Error",
		code = 2767,
	},
	["The '{0}' property of an async iterator must be a method."] = {
		category = "Error",
		code = 2768,
	},
	["No overload matches this call."] = {
		category = "Error",
		code = 2769,
	},
	["The last overload gave the following error."] = {
		category = "Error",
		code = 2770,
	},
	["The last overload is declared here."] = {
		category = "Error",
		code = 2771,
	},
	["Overload {0} of {1}, '{2}', gave the following error."] = {
		category = "Error",
		code = 2772,
	},
	["Did you forget to use 'await'?"] = {
		category = "Error",
		code = 2773,
	},
	["This condition will always return true since this function is always defined. Did you mean to call it instead?"] = {
		category = "Error",
		code = 2774,
	},
	["Assertions require every name in the call target to be declared with an explicit type annotation."] = {
		category = "Error",
		code = 2775,
	},
	["Assertions require the call target to be an identifier or qualified name."] = {
		category = "Error",
		code = 2776,
	},
	["The operand of an increment or decrement operator may not be an optional property access."] = {
		category = "Error",
		code = 2777,
	},
	["The target of an object rest assignment may not be an optional property access."] = {
		category = "Error",
		code = 2778,
	},
	["The left-hand side of an assignment expression may not be an optional property access."] = {
		category = "Error",
		code = 2779,
	},
	["The left-hand side of a 'for...in' statement may not be an optional property access."] = {
		category = "Error",
		code = 2780,
	},
	["The left-hand side of a 'for...of' statement may not be an optional property access."] = {
		category = "Error",
		code = 2781,
	},
	["'{0}' needs an explicit type annotation."] = {
		category = "Message",
		code = 2782,
	},
	["'{0}' is specified more than once, so this usage will be overwritten."] = {
		category = "Error",
		code = 2783,
	},
	["'get' and 'set' accessors cannot declare 'this' parameters."] = {
		category = "Error",
		code = 2784,
	},
	["This spread always overwrites this property."] = {
		category = "Error",
		code = 2785,
	},
	["'{0}' cannot be used as a JSX component."] = {
		category = "Error",
		code = 2786,
	},
	["Its return type '{0}' is not a valid JSX element."] = {
		category = "Error",
		code = 2787,
	},
	["Its instance type '{0}' is not a valid JSX element."] = {
		category = "Error",
		code = 2788,
	},
	["Its element type '{0}' is not a valid JSX element."] = {
		category = "Error",
		code = 2789,
	},
	["The operand of a 'delete' operator must be optional."] = {
		category = "Error",
		code = 2790,
	},
	["Exponentiation cannot be performed on 'bigint' values unless the 'target' option is set to 'es2016' or later."] = {
		category = "Error",
		code = 2791,
	},
	["Cannot find module '{0}'. Did you mean to set the 'moduleResolution' option to 'node', or to add aliases to the 'paths' option?"] = {
		category = "Error",
		code = 2792,
	},
	["The call would have succeeded against this implementation, but implementation signatures of overloads are not externally visible."] = {
		category = "Error",
		code = 2793,
	},
	["Expected {0} arguments, but got {1}. Did you forget to include 'void' in your type argument to 'Promise'?"] = {
		category = "Error",
		code = 2794,
	},
	["The 'intrinsic' keyword can only be used to declare compiler provided intrinsic types."] = {
		category = "Error",
		code = 2795,
	},
	["It is likely that you are missing a comma to separate these two template expressions. They form a tagged template expression which cannot be invoked."] = {
		category = "Error",
		code = 2796,
	},
	["A mixin class that extends from a type variable containing an abstract construct signature must also be declared 'abstract'."] = {
		category = "Error",
		code = 2797,
	},
	["The declaration was marked as deprecated here."] = {
		category = "Error",
		code = 2798,
	},
	["Type produces a tuple type that is too large to represent."] = {
		category = "Error",
		code = 2799,
	},
	["Expression produces a tuple type that is too large to represent."] = {
		category = "Error",
		code = 2800,
	},
	["This condition will always return true since this '{0}' is always defined."] = {
		category = "Error",
		code = 2801,
	},
	["Type '{0}' can only be iterated through when using the '--downlevelIteration' flag or with a '--target' of 'es2015' or higher."] = {
		category = "Error",
		code = 2802,
	},
	["Cannot assign to private method '{0}'. Private methods are not writable."] = {
		category = "Error",
		code = 2803,
	},
	["Duplicate identifier '{0}'. Static and instance elements cannot share the same private name."] = {
		category = "Error",
		code = 2804,
	},
	["Private accessor was defined without a getter."] = {
		category = "Error",
		code = 2806,
	},
	["This syntax requires an imported helper named '{1}' with {2} parameters, which is not compatible with the one in '{0}'. Consider upgrading your version of '{0}'."] = {
		category = "Error",
		code = 2807,
	},
	["A get accessor must be at least as accessible as the setter"] = {
		category = "Error",
		code = 2808,
	},
	["Declaration or statement expected. This '=' follows a block of statements, so if you intended to write a destructuring assignment, you might need to wrap the the whole assignment in parentheses."] = {
		category = "Error",
		code = 2809,
	},
	["Initializer for property '{0}'"] = {
		category = "Error",
		code = 2811,
	},
	["Property '{0}' does not exist on type '{1}'. Try changing the 'lib' compiler option to include 'dom'."] = {
		category = "Error",
		code = 2812,
	},
	["Class declaration cannot implement overload list for '{0}'."] = {
		category = "Error",
		code = 2813,
	},
	["Function with bodies can only merge with classes that are ambient."] = {
		category = "Error",
		code = 2814,
	},
	["'arguments' cannot be referenced in property initializers."] = {
		category = "Error",
		code = 2815,
	},
	["Cannot use 'this' in a static property initializer of a decorated class."] = {
		category = "Error",
		code = 2816,
	},
	["Property '{0}' has no initializer and is not definitely assigned in a class static block."] = {
		category = "Error",
		code = 2817,
	},
	["Duplicate identifier '{0}'. Compiler reserves name '{1}' when emitting 'super' references in static initializers."] = {
		category = "Error",
		code = 2818,
	},
	["Namespace name cannot be '{0}'."] = {
		category = "Error",
		code = 2819,
	},
	["Type '{0}' is not assignable to type '{1}'. Did you mean '{2}'?"] = {
		category = "Error",
		code = 2820,
	},
	["Import assertions are only supported when the '--module' option is set to 'esnext' or 'nodenext'."] = {
		category = "Error",
		code = 2821,
	},
	["Import assertions cannot be used with type-only imports or exports."] = {
		category = "Error",
		code = 2822,
	},
	["Cannot find namespace '{0}'. Did you mean '{1}'?"] = {
		category = "Error",
		code = 2833,
	},
	["Relative import paths need explicit file extensions in EcmaScript imports when '--moduleResolution' is 'node12' or 'nodenext'. Consider adding an extension to the import path."] = {
		category = "Error",
		code = 2834,
	},
	["Relative import paths need explicit file extensions in EcmaScript imports when '--moduleResolution' is 'node12' or 'nodenext'. Did you mean '{0}'?"] = {
		category = "Error",
		code = 2835,
	},
	["Import assertions are not allowed on statements that transpile to commonjs 'require' calls."] = {
		category = "Error",
		code = 2836,
	},
	["Import assertion values must be string literal expressions."] = {
		category = "Error",
		code = 2837,
	},
	["All declarations of '{0}' must have identical constraints."] = {
		category = "Error",
		code = 2838,
	},
	["Import declaration '{0}' is using private name '{1}'."] = {
		category = "Error",
		code = 4000,
	},
	["Type parameter '{0}' of exported class has or is using private name '{1}'."] = {
		category = "Error",
		code = 4002,
	},
	["Type parameter '{0}' of exported interface has or is using private name '{1}'."] = {
		category = "Error",
		code = 4004,
	},
	["Type parameter '{0}' of constructor signature from exported interface has or is using private name '{1}'."] = {
		category = "Error",
		code = 4006,
	},
	["Type parameter '{0}' of call signature from exported interface has or is using private name '{1}'."] = {
		category = "Error",
		code = 4008,
	},
	["Type parameter '{0}' of public static method from exported class has or is using private name '{1}'."] = {
		category = "Error",
		code = 4010,
	},
	["Type parameter '{0}' of public method from exported class has or is using private name '{1}'."] = {
		category = "Error",
		code = 4012,
	},
	["Type parameter '{0}' of method from exported interface has or is using private name '{1}'."] = {
		category = "Error",
		code = 4014,
	},
	["Type parameter '{0}' of exported function has or is using private name '{1}'."] = {
		category = "Error",
		code = 4016,
	},
	["Implements clause of exported class '{0}' has or is using private name '{1}'."] = {
		category = "Error",
		code = 4019,
	},
	["'extends' clause of exported class '{0}' has or is using private name '{1}'."] = {
		category = "Error",
		code = 4020,
	},
	["'extends' clause of exported class has or is using private name '{0}'."] = {
		category = "Error",
		code = 4021,
	},
	["'extends' clause of exported interface '{0}' has or is using private name '{1}'."] = {
		category = "Error",
		code = 4022,
	},
	["Exported variable '{0}' has or is using name '{1}' from external module {2} but cannot be named."] = {
		category = "Error",
		code = 4023,
	},
	["Exported variable '{0}' has or is using name '{1}' from private module '{2}'."] = {
		category = "Error",
		code = 4024,
	},
	["Exported variable '{0}' has or is using private name '{1}'."] = {
		category = "Error",
		code = 4025,
	},
	["Public static property '{0}' of exported class has or is using name '{1}' from external module {2} but cannot be named."] = {
		category = "Error",
		code = 4026,
	},
	["Public static property '{0}' of exported class has or is using name '{1}' from private module '{2}'."] = {
		category = "Error",
		code = 4027,
	},
	["Public static property '{0}' of exported class has or is using private name '{1}'."] = {
		category = "Error",
		code = 4028,
	},
	["Public property '{0}' of exported class has or is using name '{1}' from external module {2} but cannot be named."] = {
		category = "Error",
		code = 4029,
	},
	["Public property '{0}' of exported class has or is using name '{1}' from private module '{2}'."] = {
		category = "Error",
		code = 4030,
	},
	["Public property '{0}' of exported class has or is using private name '{1}'."] = {
		category = "Error",
		code = 4031,
	},
	["Property '{0}' of exported interface has or is using name '{1}' from private module '{2}'."] = {
		category = "Error",
		code = 4032,
	},
	["Property '{0}' of exported interface has or is using private name '{1}'."] = {
		category = "Error",
		code = 4033,
	},
	["Parameter type of public static setter '{0}' from exported class has or is using name '{1}' from private module '{2}'."] = {
		category = "Error",
		code = 4034,
	},
	["Parameter type of public static setter '{0}' from exported class has or is using private name '{1}'."] = {
		category = "Error",
		code = 4035,
	},
	["Parameter type of public setter '{0}' from exported class has or is using name '{1}' from private module '{2}'."] = {
		category = "Error",
		code = 4036,
	},
	["Parameter type of public setter '{0}' from exported class has or is using private name '{1}'."] = {
		category = "Error",
		code = 4037,
	},
	["Return type of public static getter '{0}' from exported class has or is using name '{1}' from external module {2} but cannot be named."] = {
		category = "Error",
		code = 4038,
	},
	["Return type of public static getter '{0}' from exported class has or is using name '{1}' from private module '{2}'."] = {
		category = "Error",
		code = 4039,
	},
	["Return type of public static getter '{0}' from exported class has or is using private name '{1}'."] = {
		category = "Error",
		code = 4040,
	},
	["Return type of public getter '{0}' from exported class has or is using name '{1}' from external module {2} but cannot be named."] = {
		category = "Error",
		code = 4041,
	},
	["Return type of public getter '{0}' from exported class has or is using name '{1}' from private module '{2}'."] = {
		category = "Error",
		code = 4042,
	},
	["Return type of public getter '{0}' from exported class has or is using private name '{1}'."] = {
		category = "Error",
		code = 4043,
	},
	["Return type of constructor signature from exported interface has or is using name '{0}' from private module '{1}'."] = {
		category = "Error",
		code = 4044,
	},
	["Return type of constructor signature from exported interface has or is using private name '{0}'."] = {
		category = "Error",
		code = 4045,
	},
	["Return type of call signature from exported interface has or is using name '{0}' from private module '{1}'."] = {
		category = "Error",
		code = 4046,
	},
	["Return type of call signature from exported interface has or is using private name '{0}'."] = {
		category = "Error",
		code = 4047,
	},
	["Return type of index signature from exported interface has or is using name '{0}' from private module '{1}'."] = {
		category = "Error",
		code = 4048,
	},
	["Return type of index signature from exported interface has or is using private name '{0}'."] = {
		category = "Error",
		code = 4049,
	},
	["Return type of public static method from exported class has or is using name '{0}' from external module {1} but cannot be named."] = {
		category = "Error",
		code = 4050,
	},
	["Return type of public static method from exported class has or is using name '{0}' from private module '{1}'."] = {
		category = "Error",
		code = 4051,
	},
	["Return type of public static method from exported class has or is using private name '{0}'."] = {
		category = "Error",
		code = 4052,
	},
	["Return type of public method from exported class has or is using name '{0}' from external module {1} but cannot be named."] = {
		category = "Error",
		code = 4053,
	},
	["Return type of public method from exported class has or is using name '{0}' from private module '{1}'."] = {
		category = "Error",
		code = 4054,
	},
	["Return type of public method from exported class has or is using private name '{0}'."] = {
		category = "Error",
		code = 4055,
	},
	["Return type of method from exported interface has or is using name '{0}' from private module '{1}'."] = {
		category = "Error",
		code = 4056,
	},
	["Return type of method from exported interface has or is using private name '{0}'."] = {
		category = "Error",
		code = 4057,
	},
	["Return type of exported function has or is using name '{0}' from external module {1} but cannot be named."] = {
		category = "Error",
		code = 4058,
	},
	["Return type of exported function has or is using name '{0}' from private module '{1}'."] = {
		category = "Error",
		code = 4059,
	},
	["Return type of exported function has or is using private name '{0}'."] = {
		category = "Error",
		code = 4060,
	},
	["Parameter '{0}' of constructor from exported class has or is using name '{1}' from external module {2} but cannot be named."] = {
		category = "Error",
		code = 4061,
	},
	["Parameter '{0}' of constructor from exported class has or is using name '{1}' from private module '{2}'."] = {
		category = "Error",
		code = 4062,
	},
	["Parameter '{0}' of constructor from exported class has or is using private name '{1}'."] = {
		category = "Error",
		code = 4063,
	},
	["Parameter '{0}' of constructor signature from exported interface has or is using name '{1}' from private module '{2}'."] = {
		category = "Error",
		code = 4064,
	},
	["Parameter '{0}' of constructor signature from exported interface has or is using private name '{1}'."] = {
		category = "Error",
		code = 4065,
	},
	["Parameter '{0}' of call signature from exported interface has or is using name '{1}' from private module '{2}'."] = {
		category = "Error",
		code = 4066,
	},
	["Parameter '{0}' of call signature from exported interface has or is using private name '{1}'."] = {
		category = "Error",
		code = 4067,
	},
	["Parameter '{0}' of public static method from exported class has or is using name '{1}' from external module {2} but cannot be named."] = {
		category = "Error",
		code = 4068,
	},
	["Parameter '{0}' of public static method from exported class has or is using name '{1}' from private module '{2}'."] = {
		category = "Error",
		code = 4069,
	},
	["Parameter '{0}' of public static method from exported class has or is using private name '{1}'."] = {
		category = "Error",
		code = 4070,
	},
	["Parameter '{0}' of public method from exported class has or is using name '{1}' from external module {2} but cannot be named."] = {
		category = "Error",
		code = 4071,
	},
	["Parameter '{0}' of public method from exported class has or is using name '{1}' from private module '{2}'."] = {
		category = "Error",
		code = 4072,
	},
	["Parameter '{0}' of public method from exported class has or is using private name '{1}'."] = {
		category = "Error",
		code = 4073,
	},
	["Parameter '{0}' of method from exported interface has or is using name '{1}' from private module '{2}'."] = {
		category = "Error",
		code = 4074,
	},
	["Parameter '{0}' of method from exported interface has or is using private name '{1}'."] = {
		category = "Error",
		code = 4075,
	},
	["Parameter '{0}' of exported function has or is using name '{1}' from external module {2} but cannot be named."] = {
		category = "Error",
		code = 4076,
	},
	["Parameter '{0}' of exported function has or is using name '{1}' from private module '{2}'."] = {
		category = "Error",
		code = 4077,
	},
	["Parameter '{0}' of exported function has or is using private name '{1}'."] = {
		category = "Error",
		code = 4078,
	},
	["Exported type alias '{0}' has or is using private name '{1}'."] = {
		category = "Error",
		code = 4081,
	},
	["Default export of the module has or is using private name '{0}'."] = {
		category = "Error",
		code = 4082,
	},
	["Type parameter '{0}' of exported type alias has or is using private name '{1}'."] = {
		category = "Error",
		code = 4083,
	},
	["Exported type alias '{0}' has or is using private name '{1}' from module {2}."] = {
		category = "Error",
		code = 4084,
	},
	["Conflicting definitions for '{0}' found at '{1}' and '{2}'. Consider installing a specific version of this library to resolve the conflict."] = {
		category = "Error",
		code = 4090,
	},
	["Parameter '{0}' of index signature from exported interface has or is using name '{1}' from private module '{2}'."] = {
		category = "Error",
		code = 4091,
	},
	["Parameter '{0}' of index signature from exported interface has or is using private name '{1}'."] = {
		category = "Error",
		code = 4092,
	},
	["Property '{0}' of exported class expression may not be private or protected."] = {
		category = "Error",
		code = 4094,
	},
	["Public static method '{0}' of exported class has or is using name '{1}' from external module {2} but cannot be named."] = {
		category = "Error",
		code = 4095,
	},
	["Public static method '{0}' of exported class has or is using name '{1}' from private module '{2}'."] = {
		category = "Error",
		code = 4096,
	},
	["Public static method '{0}' of exported class has or is using private name '{1}'."] = {
		category = "Error",
		code = 4097,
	},
	["Public method '{0}' of exported class has or is using name '{1}' from external module {2} but cannot be named."] = {
		category = "Error",
		code = 4098,
	},
	["Public method '{0}' of exported class has or is using name '{1}' from private module '{2}'."] = {
		category = "Error",
		code = 4099,
	},
	["Public method '{0}' of exported class has or is using private name '{1}'."] = {
		category = "Error",
		code = 4100,
	},
	["Method '{0}' of exported interface has or is using name '{1}' from private module '{2}'."] = {
		category = "Error",
		code = 4101,
	},
	["Method '{0}' of exported interface has or is using private name '{1}'."] = {
		category = "Error",
		code = 4102,
	},
	["Type parameter '{0}' of exported mapped object type is using private name '{1}'."] = {
		category = "Error",
		code = 4103,
	},
	["The type '{0}' is 'readonly' and cannot be assigned to the mutable type '{1}'."] = {
		category = "Error",
		code = 4104,
	},
	["Private or protected member '{0}' cannot be accessed on a type parameter."] = {
		category = "Error",
		code = 4105,
	},
	["Parameter '{0}' of accessor has or is using private name '{1}'."] = {
		category = "Error",
		code = 4106,
	},
	["Parameter '{0}' of accessor has or is using name '{1}' from private module '{2}'."] = {
		category = "Error",
		code = 4107,
	},
	["Parameter '{0}' of accessor has or is using name '{1}' from external module '{2}' but cannot be named."] = {
		category = "Error",
		code = 4108,
	},
	["Type arguments for '{0}' circularly reference themselves."] = {
		category = "Error",
		code = 4109,
	},
	["Tuple type arguments circularly reference themselves."] = {
		category = "Error",
		code = 4110,
	},
	["Property '{0}' comes from an index signature, so it must be accessed with ['{0}']."] = {
		category = "Error",
		code = 4111,
	},
	["This member cannot have an 'override' modifier because its containing class '{0}' does not extend another class."] = {
		category = "Error",
		code = 4112,
	},
	["This member cannot have an 'override' modifier because it is not declared in the base class '{0}'."] = {
		category = "Error",
		code = 4113,
	},
	["This member must have an 'override' modifier because it overrides a member in the base class '{0}'."] = {
		category = "Error",
		code = 4114,
	},
	["This parameter property must have an 'override' modifier because it overrides a member in base class '{0}'."] = {
		category = "Error",
		code = 4115,
	},
	["This member must have an 'override' modifier because it overrides an abstract method that is declared in the base class '{0}'."] = {
		category = "Error",
		code = 4116,
	},
	["This member cannot have an 'override' modifier because it is not declared in the base class '{0}'. Did you mean '{1}'?"] = {
		category = "Error",
		code = 4117,
	},
	["The type of this node cannot be serialized because its property '{0}' cannot be serialized."] = {
		category = "Error",
		code = 4118,
	},
	["This member must have a JSDoc comment with an '@override' tag because it overrides a member in the base class '{0}'."] = {
		category = "Error",
		code = 4119,
	},
	["This parameter property must have a JSDoc comment with an '@override' tag because it overrides a member in the base class '{0}'."] = {
		category = "Error",
		code = 4120,
	},
	["This member cannot have a JSDoc comment with an '@override' tag because its containing class '{0}' does not extend another class."] = {
		category = "Error",
		code = 4121,
	},
	["This member cannot have a JSDoc comment with an '@override' tag because it is not declared in the base class '{0}'."] = {
		category = "Error",
		code = 4122,
	},
	["This member cannot have a JSDoc comment with an 'override' tag because it is not declared in the base class '{0}'. Did you mean '{1}'?"] = {
		category = "Error",
		code = 4123,
	},
	["Compiler option '{0}' of value '{1}' is unstable. Use nightly TypeScript to silence this error. Try updating with 'npm install -D typescript@next'."] = {
		category = "Error",
		code = 4124,
	},
	["The current host does not support the '{0}' option."] = {
		category = "Error",
		code = 5001,
	},
	["Cannot find the common subdirectory path for the input files."] = {
		category = "Error",
		code = 5009,
	},
	["File specification cannot end in a recursive directory wildcard ('**'): '{0}'."] = {
		category = "Error",
		code = 5010,
	},
	["Cannot read file '{0}': {1}."] = {
		category = "Error",
		code = 5012,
	},
	["Failed to parse file '{0}': {1}."] = {
		category = "Error",
		code = 5014,
	},
	["Unknown compiler option '{0}'."] = {
		category = "Error",
		code = 5023,
	},
	["Compiler option '{0}' requires a value of type {1}."] = {
		category = "Error",
		code = 5024,
	},
	["Unknown compiler option '{0}'. Did you mean '{1}'?"] = {
		category = "Error",
		code = 5025,
	},
	["Could not write file '{0}': {1}."] = {
		category = "Error",
		code = 5033,
	},
	["Option 'project' cannot be mixed with source files on a command line."] = {
		category = "Error",
		code = 5042,
	},
	["Option 'isolatedModules' can only be used when either option '--module' is provided or option 'target' is 'ES2015' or higher."] = {
		category = "Error",
		code = 5047,
	},
	["Option '{0}' cannot be specified when option 'target' is 'ES3'."] = {
		category = "Error",
		code = 5048,
	},
	["Option '{0} can only be used when either option '--inlineSourceMap' or option '--sourceMap' is provided."] = {
		category = "Error",
		code = 5051,
	},
	["Option '{0}' cannot be specified without specifying option '{1}'."] = {
		category = "Error",
		code = 5052,
	},
	["Option '{0}' cannot be specified with option '{1}'."] = {
		category = "Error",
		code = 5053,
	},
	["A 'tsconfig.json' file is already defined at: '{0}'."] = {
		category = "Error",
		code = 5054,
	},
	["Cannot write file '{0}' because it would overwrite input file."] = {
		category = "Error",
		code = 5055,
	},
	["Cannot write file '{0}' because it would be overwritten by multiple input files."] = {
		category = "Error",
		code = 5056,
	},
	["Cannot find a tsconfig.json file at the specified directory: '{0}'."] = {
		category = "Error",
		code = 5057,
	},
	["The specified path does not exist: '{0}'."] = {
		category = "Error",
		code = 5058,
	},
	["Invalid value for '--reactNamespace'. '{0}' is not a valid identifier."] = {
		category = "Error",
		code = 5059,
	},
	["Pattern '{0}' can have at most one '*' character."] = {
		category = "Error",
		code = 5061,
	},
	["Substitution '{0}' in pattern '{1}' can have at most one '*' character."] = {
		category = "Error",
		code = 5062,
	},
	["Substitutions for pattern '{0}' should be an array."] = {
		category = "Error",
		code = 5063,
	},
	["Substitution '{0}' for pattern '{1}' has incorrect type, expected 'string', got '{2}'."] = {
		category = "Error",
		code = 5064,
	},
	["File specification cannot contain a parent directory ('..') that appears after a recursive directory wildcard ('**'): '{0}'."] = {
		category = "Error",
		code = 5065,
	},
	["Substitutions for pattern '{0}' shouldn't be an empty array."] = {
		category = "Error",
		code = 5066,
	},
	["Invalid value for 'jsxFactory'. '{0}' is not a valid identifier or qualified-name."] = {
		category = "Error",
		code = 5067,
	},
	["Adding a tsconfig.json file will help organize projects that contain both TypeScript and JavaScript files. Learn more at https://aka.ms/tsconfig."] = {
		category = "Error",
		code = 5068,
	},
	["Option '{0}' cannot be specified without specifying option '{1}' or option '{2}'."] = {
		category = "Error",
		code = 5069,
	},
	["Option '--resolveJsonModule' cannot be specified without 'node' module resolution strategy."] = {
		category = "Error",
		code = 5070,
	},
	["Option '--resolveJsonModule' can only be specified when module code generation is 'commonjs', 'amd', 'es2015' or 'esNext'."] = {
		category = "Error",
		code = 5071,
	},
	["Unknown build option '{0}'."] = {
		category = "Error",
		code = 5072,
	},
	["Build option '{0}' requires a value of type {1}."] = {
		category = "Error",
		code = 5073,
	},
	["Option '--incremental' can only be specified using tsconfig, emitting to single file or when option '--tsBuildInfoFile' is specified."] = {
		category = "Error",
		code = 5074,
	},
	["'{0}' is assignable to the constraint of type '{1}', but '{1}' could be instantiated with a different subtype of constraint '{2}'."] = {
		category = "Error",
		code = 5075,
	},
	["'{0}' and '{1}' operations cannot be mixed without parentheses."] = {
		category = "Error",
		code = 5076,
	},
	["Unknown build option '{0}'. Did you mean '{1}'?"] = {
		category = "Error",
		code = 5077,
	},
	["Unknown watch option '{0}'."] = {
		category = "Error",
		code = 5078,
	},
	["Unknown watch option '{0}'. Did you mean '{1}'?"] = {
		category = "Error",
		code = 5079,
	},
	["Watch option '{0}' requires a value of type {1}."] = {
		category = "Error",
		code = 5080,
	},
	["Cannot find a tsconfig.json file at the current directory: {0}."] = {
		category = "Error",
		code = 5081,
	},
	["'{0}' could be instantiated with an arbitrary type which could be unrelated to '{1}'."] = {
		category = "Error",
		code = 5082,
	},
	["Cannot read file '{0}'."] = {
		category = "Error",
		code = 5083,
	},
	["Tuple members must all have names or all not have names."] = {
		category = "Error",
		code = 5084,
	},
	["A tuple member cannot be both optional and rest."] = {
		category = "Error",
		code = 5085,
	},
	["A labeled tuple element is declared as optional with a question mark after the name and before the colon, rather than after the type."] = {
		category = "Error",
		code = 5086,
	},
	["A labeled tuple element is declared as rest with a '...' before the name, rather than before the type."] = {
		category = "Error",
		code = 5087,
	},
	["The inferred type of '{0}' references a type with a cyclic structure which cannot be trivially serialized. A type annotation is necessary."] = {
		category = "Error",
		code = 5088,
	},
	["Option '{0}' cannot be specified when option 'jsx' is '{1}'."] = {
		category = "Error",
		code = 5089,
	},
	["Non-relative paths are not allowed when 'baseUrl' is not set. Did you forget a leading './'?"] = {
		category = "Error",
		code = 5090,
	},
	["Option 'preserveConstEnums' cannot be disabled when 'isolatedModules' is enabled."] = {
		category = "Error",
		code = 5091,
	},
	["The root value of a '{0}' file must be an object."] = {
		category = "Error",
		code = 5092,
	},
	["Compiler option '--{0}' may only be used with '--build'."] = {
		category = "Error",
		code = 5093,
	},
	["Compiler option '--{0}' may not be used with '--build'."] = {
		category = "Error",
		code = 5094,
	},
	["Option 'preserveValueImports' can only be used when 'module' is set to 'es2015' or later."] = {
		category = "Error",
		code = 5095,
	},
	["Generates a sourcemap for each corresponding '.d.ts' file."] = {
		category = "Message",
		code = 6000,
	},
	["Concatenate and emit output to single file."] = {
		category = "Message",
		code = 6001,
	},
	["Generates corresponding '.d.ts' file."] = {
		category = "Message",
		code = 6002,
	},
	["Specify the location where debugger should locate TypeScript files instead of source locations."] = {
		category = "Message",
		code = 6004,
	},
	["Watch input files."] = {
		category = "Message",
		code = 6005,
	},
	["Redirect output structure to the directory."] = {
		category = "Message",
		code = 6006,
	},
	["Do not erase const enum declarations in generated code."] = {
		category = "Message",
		code = 6007,
	},
	["Do not emit outputs if any errors were reported."] = {
		category = "Message",
		code = 6008,
	},
	["Do not emit comments to output."] = {
		category = "Message",
		code = 6009,
	},
	["Do not emit outputs."] = {
		category = "Message",
		code = 6010,
	},
	["Allow default imports from modules with no default export. This does not affect code emit, just typechecking."] = {
		category = "Message",
		code = 6011,
	},
	["Skip type checking of declaration files."] = {
		category = "Message",
		code = 6012,
	},
	["Do not resolve the real path of symlinks."] = {
		category = "Message",
		code = 6013,
	},
	["Only emit '.d.ts' declaration files."] = {
		category = "Message",
		code = 6014,
	},
	["Specify ECMAScript target version."] = {
		category = "Message",
		code = 6015,
	},
	["Specify module code generation."] = {
		category = "Message",
		code = 6016,
	},
	["Print this message."] = {
		category = "Message",
		code = 6017,
	},
	["Print the compiler's version."] = {
		category = "Message",
		code = 6019,
	},
	["Compile the project given the path to its configuration file, or to a folder with a 'tsconfig.json'."] = {
		category = "Message",
		code = 6020,
	},
	["Insert command line options and files from a file."] = {
		category = "Message",
		code = 6030,
	},
	["Generates corresponding '.map' file."] = {
		category = "Message",
		code = 6043,
	},
	["Compiler option '{0}' expects an argument."] = {
		category = "Error",
		code = 6044,
	},
	["Unterminated quoted string in response file '{0}'."] = {
		category = "Error",
		code = 6045,
	},
	["Argument for '{0}' option must be: {1}."] = {
		category = "Error",
		code = 6046,
	},
	["Locale must be of the form <language> or <language>-<territory>. For example '{0}' or '{1}'."] = {
		category = "Error",
		code = 6048,
	},
	["Unable to open file '{0}'."] = {
		category = "Error",
		code = 6050,
	},
	["Corrupted locale file {0}."] = {
		category = "Error",
		code = 6051,
	},
	["Raise error on expressions and declarations with an implied 'any' type."] = {
		category = "Message",
		code = 6052,
	},
	["File '{0}' not found."] = {
		category = "Error",
		code = 6053,
	},
	["File '{0}' has an unsupported extension. The only supported extensions are {1}."] = {
		category = "Error",
		code = 6054,
	},
	["Suppress noImplicitAny errors for indexing objects lacking index signatures."] = {
		category = "Message",
		code = 6055,
	},
	["Do not emit declarations for code that has an '@internal' annotation."] = {
		category = "Message",
		code = 6056,
	},
	["Specify the root directory of input files. Use to control the output directory structure with --outDir."] = {
		category = "Message",
		code = 6058,
	},
	["File '{0}' is not under 'rootDir' '{1}'. 'rootDir' is expected to contain all source files."] = {
		category = "Error",
		code = 6059,
	},
	["Specify the end of line sequence to be used when emitting files: 'CRLF' (dos) or 'LF' (unix)."] = {
		category = "Message",
		code = 6060,
	},
	["NEWLINE"] = {
		category = "Message",
		code = 6061,
	},
	["Option '{0}' can only be specified in 'tsconfig.json' file or set to 'null' on command line."] = {
		category = "Error",
		code = 6064,
	},
	["Enables experimental support for ES7 decorators."] = {
		category = "Message",
		code = 6065,
	},
	["Enables experimental support for emitting type metadata for decorators."] = {
		category = "Message",
		code = 6066,
	},
	["Specify module resolution strategy: 'node' (Node.js) or 'classic' (TypeScript pre-1.6)."] = {
		category = "Message",
		code = 6069,
	},
	["Initializes a TypeScript project and creates a tsconfig.json file."] = {
		category = "Message",
		code = 6070,
	},
	["Successfully created a tsconfig.json file."] = {
		category = "Message",
		code = 6071,
	},
	["Suppress excess property checks for object literals."] = {
		category = "Message",
		code = 6072,
	},
	["Stylize errors and messages using color and context (experimental)."] = {
		category = "Message",
		code = 6073,
	},
	["Do not report errors on unused labels."] = {
		category = "Message",
		code = 6074,
	},
	["Report error when not all code paths in function return a value."] = {
		category = "Message",
		code = 6075,
	},
	["Report errors for fallthrough cases in switch statement."] = {
		category = "Message",
		code = 6076,
	},
	["Do not report errors on unreachable code."] = {
		category = "Message",
		code = 6077,
	},
	["Disallow inconsistently-cased references to the same file."] = {
		category = "Message",
		code = 6078,
	},
	["Specify library files to be included in the compilation."] = {
		category = "Message",
		code = 6079,
	},
	["Specify JSX code generation."] = {
		category = "Message",
		code = 6080,
	},
	["File '{0}' has an unsupported extension, so skipping it."] = {
		category = "Message",
		code = 6081,
	},
	["Only 'amd' and 'system' modules are supported alongside --{0}."] = {
		category = "Error",
		code = 6082,
	},
	["Base directory to resolve non-absolute module names."] = {
		category = "Message",
		code = 6083,
	},
	["[Deprecated] Use '--jsxFactory' instead. Specify the object invoked for createElement when targeting 'react' JSX emit"] = {
		category = "Message",
		code = 6084,
	},
	["Enable tracing of the name resolution process."] = {
		category = "Message",
		code = 6085,
	},
	[" ======== Resolving module '{0}' from '{1}'. ========"] = {
		category = "Message",
		code = 6086,
	},
	["Explicitly specified module resolution kind: '{0}'."] = {
		category = "Message",
		code = 6087,
	},
	["Module resolution kind is not specified, using '{0}'."] = {
		category = "Message",
		code = 6088,
	},
	[" ======== Module name '{0}' was successfully resolved to '{1}'. ========"] = {
		category = "Message",
		code = 6089,
	},
	[" ======== Module name '{0}' was not resolved. ========"] = {
		category = "Message",
		code = 6090,
	},
	["'paths' option is specified, looking for a pattern to match module name '{0}'."] = {
		category = "Message",
		code = 6091,
	},
	["Module name '{0}', matched pattern '{1}'."] = {
		category = "Message",
		code = 6092,
	},
	["Trying substitution '{0}', candidate module location: '{1}'."] = {
		category = "Message",
		code = 6093,
	},
	["Resolving module name '{0}' relative to base url '{1}' - '{2}'."] = {
		category = "Message",
		code = 6094,
	},
	["Loading module as file / folder, candidate module location '{0}', target file type '{1}'."] = {
		category = "Message",
		code = 6095,
	},
	["File '{0}' does not exist."] = {
		category = "Message",
		code = 6096,
	},
	["File '{0}' exist - use it as a name resolution result."] = {
		category = "Message",
		code = 6097,
	},
	["Loading module '{0}' from 'node_modules' folder, target file type '{1}'."] = {
		category = "Message",
		code = 6098,
	},
	["Found 'package.json' at '{0}'."] = {
		category = "Message",
		code = 6099,
	},
	["'package.json' does not have a '{0}' field."] = {
		category = "Message",
		code = 6100,
	},
	["'package.json' has '{0}' field '{1}' that references '{2}'."] = {
		category = "Message",
		code = 6101,
	},
	["Allow javascript files to be compiled."] = {
		category = "Message",
		code = 6102,
	},
	["Checking if '{0}' is the longest matching prefix for '{1}' - '{2}'."] = {
		category = "Message",
		code = 6104,
	},
	["Expected type of '{0}' field in 'package.json' to be '{1}', got '{2}'."] = {
		category = "Message",
		code = 6105,
	},
	["'baseUrl' option is set to '{0}', using this value to resolve non-relative module name '{1}'."] = {
		category = "Message",
		code = 6106,
	},
	["'rootDirs' option is set, using it to resolve relative module name '{0}'."] = {
		category = "Message",
		code = 6107,
	},
	["Longest matching prefix for '{0}' is '{1}'."] = {
		category = "Message",
		code = 6108,
	},
	["Loading '{0}' from the root dir '{1}', candidate location '{2}'."] = {
		category = "Message",
		code = 6109,
	},
	["Trying other entries in 'rootDirs'."] = {
		category = "Message",
		code = 6110,
	},
	["Module resolution using 'rootDirs' has failed."] = {
		category = "Message",
		code = 6111,
	},
	["Do not emit 'use strict' directives in module output."] = {
		category = "Message",
		code = 6112,
	},
	["Enable strict null checks."] = {
		category = "Message",
		code = 6113,
	},
	["Unknown option 'excludes'. Did you mean 'exclude'?"] = {
		category = "Error",
		code = 6114,
	},
	["Raise error on 'this' expressions with an implied 'any' type."] = {
		category = "Message",
		code = 6115,
	},
	[" ======== Resolving type reference directive '{0}', containing file '{1}', root directory '{2}'. ========"] = {
		category = "Message",
		code = 6116,
	},
	[" ======== Type reference directive '{0}' was successfully resolved to '{1}', primary: {2}. ========"] = {
		category = "Message",
		code = 6119,
	},
	[" ======== Type reference directive '{0}' was not resolved. ========"] = {
		category = "Message",
		code = 6120,
	},
	["Resolving with primary search path '{0}'."] = {
		category = "Message",
		code = 6121,
	},
	["Root directory cannot be determined, skipping primary search paths."] = {
		category = "Message",
		code = 6122,
	},
	[" ======== Resolving type reference directive '{0}', containing file '{1}', root directory not set. ========"] = {
		category = "Message",
		code = 6123,
	},
	["Type declaration files to be included in compilation."] = {
		category = "Message",
		code = 6124,
	},
	["Looking up in 'node_modules' folder, initial location '{0}'."] = {
		category = "Message",
		code = 6125,
	},
	["Containing file is not specified and root directory cannot be determined, skipping lookup in 'node_modules' folder."] = {
		category = "Message",
		code = 6126,
	},
	[" ======== Resolving type reference directive '{0}', containing file not set, root directory '{1}'. ========"] = {
		category = "Message",
		code = 6127,
	},
	[" ======== Resolving type reference directive '{0}', containing file not set, root directory not set. ========"] = {
		category = "Message",
		code = 6128,
	},
	["Resolving real path for '{0}', result '{1}'."] = {
		category = "Message",
		code = 6130,
	},
	["Cannot compile modules using option '{0}' unless the '--module' flag is 'amd' or 'system'."] = {
		category = "Error",
		code = 6131,
	},
	["File name '{0}' has a '{1}' extension - stripping it."] = {
		category = "Message",
		code = 6132,
	},
	["'{0}' is declared but its value is never read."] = {
		category = "Error",
		code = 6133,
		reportsUnnecessary = true,
	},
	["Report errors on unused locals."] = {
		category = "Message",
		code = 6134,
	},
	["Report errors on unused parameters."] = {
		category = "Message",
		code = 6135,
	},
	["The maximum dependency depth to search under node_modules and load JavaScript files."] = {
		category = "Message",
		code = 6136,
	},
	["Cannot import type declaration files. Consider importing '{0}' instead of '{1}'."] = {
		category = "Error",
		code = 6137,
	},
	["Property '{0}' is declared but its value is never read."] = {
		category = "Error",
		code = 6138,
		reportsUnnecessary = true,
	},
	["Import emit helpers from 'tslib'."] = {
		category = "Message",
		code = 6139,
	},
	["Auto discovery for typings is enabled in project '{0}'. Running extra resolution pass for module '{1}' using cache location '{2}'."] = {
		category = "Error",
		code = 6140,
	},
	['Parse in strict mode and emit "use strict" for each source file.'] = {
		category = "Message",
		code = 6141,
	},
	["Module '{0}' was resolved to '{1}', but '--jsx' is not set."] = {
		category = "Error",
		code = 6142,
	},
	["Module '{0}' was resolved as locally declared ambient module in file '{1}'."] = {
		category = "Message",
		code = 6144,
	},
	["Module '{0}' was resolved as ambient module declared in '{1}' since this file was not modified."] = {
		category = "Message",
		code = 6145,
	},
	["Specify the JSX factory function to use when targeting 'react' JSX emit, e.g. 'React.createElement' or 'h'."] = {
		category = "Message",
		code = 6146,
	},
	["Resolution for module '{0}' was found in cache from location '{1}'."] = {
		category = "Message",
		code = 6147,
	},
	["Directory '{0}' does not exist, skipping all lookups in it."] = {
		category = "Message",
		code = 6148,
	},
	["Show diagnostic information."] = {
		category = "Message",
		code = 6149,
	},
	["Show verbose diagnostic information."] = {
		category = "Message",
		code = 6150,
	},
	["Emit a single file with source maps instead of having a separate file."] = {
		category = "Message",
		code = 6151,
	},
	["Emit the source alongside the sourcemaps within a single file; requires '--inlineSourceMap' or '--sourceMap' to be set."] = {
		category = "Message",
		code = 6152,
	},
	["Transpile each file as a separate module (similar to 'ts.transpileModule')."] = {
		category = "Message",
		code = 6153,
	},
	["Print names of generated files part of the compilation."] = {
		category = "Message",
		code = 6154,
	},
	["Print names of files part of the compilation."] = {
		category = "Message",
		code = 6155,
	},
	["The locale used when displaying messages to the user (e.g. 'en-us')"] = {
		category = "Message",
		code = 6156,
	},
	["Do not generate custom helper functions like '__extends' in compiled output."] = {
		category = "Message",
		code = 6157,
	},
	["Do not include the default library file (lib.d.ts)."] = {
		category = "Message",
		code = 6158,
	},
	["Do not add triple-slash references or imported modules to the list of compiled files."] = {
		category = "Message",
		code = 6159,
	},
	["[Deprecated] Use '--skipLibCheck' instead. Skip type checking of default library declaration files."] = {
		category = "Message",
		code = 6160,
	},
	["List of folders to include type definitions from."] = {
		category = "Message",
		code = 6161,
	},
	["Disable size limitations on JavaScript projects."] = {
		category = "Message",
		code = 6162,
	},
	["The character set of the input files."] = {
		category = "Message",
		code = 6163,
	},
	["Do not truncate error messages."] = {
		category = "Message",
		code = 6165,
	},
	["Output directory for generated declaration files."] = {
		category = "Message",
		code = 6166,
	},
	["A series of entries which re-map imports to lookup locations relative to the 'baseUrl'."] = {
		category = "Message",
		code = 6167,
	},
	["List of root folders whose combined content represents the structure of the project at runtime."] = {
		category = "Message",
		code = 6168,
	},
	["Show all compiler options."] = {
		category = "Message",
		code = 6169,
	},
	["[Deprecated] Use '--outFile' instead. Concatenate and emit output to single file"] = {
		category = "Message",
		code = 6170,
	},
	["Command-line Options"] = {
		category = "Message",
		code = 6171,
	},
	["Provide full support for iterables in 'for-of', spread, and destructuring when targeting 'ES5' or 'ES3'."] = {
		category = "Message",
		code = 6179,
	},
	["Enable all strict type-checking options."] = {
		category = "Message",
		code = 6180,
	},
	["Scoped package detected, looking in '{0}'"] = {
		category = "Message",
		code = 6182,
	},
	["Reusing resolution of module '{0}' from '{1}' of old program, it was successfully resolved to '{2}'."] = {
		category = "Message",
		code = 6183,
	},
	["Reusing resolution of module '{0}' from '{1}' of old program, it was successfully resolved to '{2}' with Package ID '{3}'."] = {
		category = "Message",
		code = 6184,
	},
	["Enable strict checking of function types."] = {
		category = "Message",
		code = 6186,
	},
	["Enable strict checking of property initialization in classes."] = {
		category = "Message",
		code = 6187,
	},
	["Numeric separators are not allowed here."] = {
		category = "Error",
		code = 6188,
	},
	["Multiple consecutive numeric separators are not permitted."] = {
		category = "Error",
		code = 6189,
	},
	["Whether to keep outdated console output in watch mode instead of clearing the screen."] = {
		category = "Message",
		code = 6191,
	},
	["All imports in import declaration are unused."] = {
		category = "Error",
		code = 6192,
		reportsUnnecessary = true,
	},
	["Found 1 error. Watching for file changes."] = {
		category = "Message",
		code = 6193,
	},
	["Found {0} errors. Watching for file changes."] = {
		category = "Message",
		code = 6194,
	},
	["Resolve 'keyof' to string valued property names only (no numbers or symbols)."] = {
		category = "Message",
		code = 6195,
	},
	["'{0}' is declared but never used."] = {
		category = "Error",
		code = 6196,
		reportsUnnecessary = true,
	},
	["Include modules imported with '.json' extension"] = {
		category = "Message",
		code = 6197,
	},
	["All destructured elements are unused."] = {
		category = "Error",
		code = 6198,
		reportsUnnecessary = true,
	},
	["All variables are unused."] = {
		category = "Error",
		code = 6199,
		reportsUnnecessary = true,
	},
	["Definitions of the following identifiers conflict with those in another file: {0}"] = {
		category = "Error",
		code = 6200,
	},
	["Conflicts are in this file."] = {
		category = "Message",
		code = 6201,
	},
	["Project references may not form a circular graph. Cycle detected: {0}"] = {
		category = "Error",
		code = 6202,
	},
	["'{0}' was also declared here."] = {
		category = "Message",
		code = 6203,
	},
	["and here."] = {
		category = "Message",
		code = 6204,
	},
	["All type parameters are unused."] = {
		category = "Error",
		code = 6205,
	},
	["'package.json' has a 'typesVersions' field with version-specific path mappings."] = {
		category = "Message",
		code = 6206,
	},
	["'package.json' does not have a 'typesVersions' entry that matches version '{0}'."] = {
		category = "Message",
		code = 6207,
	},
	["'package.json' has a 'typesVersions' entry '{0}' that matches compiler version '{1}', looking for a pattern to match module name '{2}'."] = {
		category = "Message",
		code = 6208,
	},
	["'package.json' has a 'typesVersions' entry '{0}' that is not a valid semver range."] = {
		category = "Message",
		code = 6209,
	},
	["An argument for '{0}' was not provided."] = {
		category = "Message",
		code = 6210,
	},
	["An argument matching this binding pattern was not provided."] = {
		category = "Message",
		code = 6211,
	},
	["Did you mean to call this expression?"] = {
		category = "Message",
		code = 6212,
	},
	["Did you mean to use 'new' with this expression?"] = {
		category = "Message",
		code = 6213,
	},
	["Enable strict 'bind', 'call', and 'apply' methods on functions."] = {
		category = "Message",
		code = 6214,
	},
	["Using compiler options of project reference redirect '{0}'."] = {
		category = "Message",
		code = 6215,
	},
	["Found 1 error."] = {
		category = "Message",
		code = 6216,
	},
	["Found {0} errors."] = {
		category = "Message",
		code = 6217,
	},
	[" ======== Module name '{0}' was successfully resolved to '{1}' with Package ID '{2}'. ========"] = {
		category = "Message",
		code = 6218,
	},
	[" ======== Type reference directive '{0}' was successfully resolved to '{1}' with Package ID '{2}', primary: {3}. ========"] = {
		category = "Message",
		code = 6219,
	},
	["'package.json' had a falsy '{0}' field."] = {
		category = "Message",
		code = 6220,
	},
	["Disable use of source files instead of declaration files from referenced projects."] = {
		category = "Message",
		code = 6221,
	},
	["Emit class fields with Define instead of Set."] = {
		category = "Message",
		code = 6222,
	},
	["Generates a CPU profile."] = {
		category = "Message",
		code = 6223,
	},
	["Disable solution searching for this project."] = {
		category = "Message",
		code = 6224,
	},
	["Specify strategy for watching file: 'FixedPollingInterval' (default), 'PriorityPollingInterval', 'DynamicPriorityPolling', 'FixedChunkSizePolling', 'UseFsEvents', 'UseFsEventsOnParentDirectory'."] = {
		category = "Message",
		code = 6225,
	},
	["Specify strategy for watching directory on platforms that don't support recursive watching natively: 'UseFsEvents' (default), 'FixedPollingInterval', 'DynamicPriorityPolling', 'FixedChunkSizePolling'."] = {
		category = "Message",
		code = 6226,
	},
	["Specify strategy for creating a polling watch when it fails to create using file system events: 'FixedInterval' (default), 'PriorityInterval', 'DynamicPriority', 'FixedChunkSize'."] = {
		category = "Message",
		code = 6227,
	},
	["Tag '{0}' expects at least '{1}' arguments, but the JSX factory '{2}' provides at most '{3}'."] = {
		category = "Error",
		code = 6229,
	},
	["Option '{0}' can only be specified in 'tsconfig.json' file or set to 'false' or 'null' on command line."] = {
		category = "Error",
		code = 6230,
	},
	["Could not resolve the path '{0}' with the extensions: {1}."] = {
		category = "Error",
		code = 6231,
	},
	["Declaration augments declaration in another file. This cannot be serialized."] = {
		category = "Error",
		code = 6232,
	},
	["This is the declaration being augmented. Consider moving the augmenting declaration into the same file."] = {
		category = "Error",
		code = 6233,
	},
	["This expression is not callable because it is a 'get' accessor. Did you mean to use it without '()'?"] = {
		category = "Error",
		code = 6234,
	},
	["Disable loading referenced projects."] = {
		category = "Message",
		code = 6235,
	},
	["Arguments for the rest parameter '{0}' were not provided."] = {
		category = "Error",
		code = 6236,
	},
	["Generates an event trace and a list of types."] = {
		category = "Message",
		code = 6237,
	},
	["Specify the module specifier to be used to import the 'jsx' and 'jsxs' factory functions from. eg, react"] = {
		category = "Error",
		code = 6238,
	},
	["File '{0}' exists according to earlier cached lookups."] = {
		category = "Message",
		code = 6239,
	},
	["File '{0}' does not exist according to earlier cached lookups."] = {
		category = "Message",
		code = 6240,
	},
	["Resolution for type reference directive '{0}' was found in cache from location '{1}'."] = {
		category = "Message",
		code = 6241,
	},
	[" ======== Resolving type reference directive '{0}', containing file '{1}'. ========"] = {
		category = "Message",
		code = 6242,
	},
	["Interpret optional property types as written, rather than adding 'undefined'."] = {
		category = "Message",
		code = 6243,
	},
	["Cannot access ambient const enums when 'isolatedModules' is enabled."] = {
		category = "Message",
		code = 6244,
	},
	["File Management"] = {
		category = "Message",
		code = 6245,
	},
	["Emit"] = {
		category = "Message",
		code = 6246,
	},
	["JavaScript Support"] = {
		category = "Message",
		code = 6247,
	},
	["Type Checking"] = {
		category = "Message",
		code = 6248,
	},
	["Editor Support"] = {
		category = "Message",
		code = 6249,
	},
	["Watch and Build Modes"] = {
		category = "Message",
		code = 6250,
	},
	["Compiler Diagnostics"] = {
		category = "Message",
		code = 6251,
	},
	["Interop Constraints"] = {
		category = "Message",
		code = 6252,
	},
	["Backwards Compatibility"] = {
		category = "Message",
		code = 6253,
	},
	["Language and Environment"] = {
		category = "Message",
		code = 6254,
	},
	["Projects"] = {
		category = "Message",
		code = 6255,
	},
	["Output Formatting"] = {
		category = "Message",
		code = 6256,
	},
	["Completeness"] = {
		category = "Message",
		code = 6257,
	},
	["'{0}' should be set inside the 'compilerOptions' object of the config json file"] = {
		category = "Error",
		code = 6258,
	},
	["Found 1 error in {1}"] = {
		category = "Message",
		code = 6259,
	},
	["Found {0} errors in the same file, starting at: {1}"] = {
		category = "Message",
		code = 6260,
	},
	["Found {0} errors in {1} files."] = {
		category = "Message",
		code = 6261,
	},
	["Directory '{0}' has no containing package.json scope. Imports will not resolve."] = {
		category = "Message",
		code = 6270,
	},
	["Import specifier '{0}' does not exist in package.json scope at path '{1}'."] = {
		category = "Message",
		code = 6271,
	},
	["Invalid import specifier '{0}' has no possible resolutions."] = {
		category = "Message",
		code = 6272,
	},
	["package.json scope '{0}' has no imports defined."] = {
		category = "Message",
		code = 6273,
	},
	["package.json scope '{0}' explicitly maps specifier '{1}' to null."] = {
		category = "Message",
		code = 6274,
	},
	["package.json scope '{0}' has invalid type for target of specifier '{1}'"] = {
		category = "Message",
		code = 6275,
	},
	["Export specifier '{0}' does not exist in package.json scope at path '{1}'."] = {
		category = "Message",
		code = 6276,
	},
	["Enable project compilation"] = {
		category = "Message",
		code = 6302,
	},
	["Composite projects may not disable declaration emit."] = {
		category = "Error",
		code = 6304,
	},
	["Output file '{0}' has not been built from source file '{1}'."] = {
		category = "Error",
		code = 6305,
	},
	["Referenced project '{0}' must have setting \"composite\"] = true."] = {
		category = "Error",
		code = 6306,
	},
	["File '{0}' is not listed within the file list of project '{1}'. Projects must list all files or use an 'include' pattern."] = {
		category = "Error",
		code = 6307,
	},
	["Cannot prepend project '{0}' because it does not have 'outFile' set"] = {
		category = "Error",
		code = 6308,
	},
	["Output file '{0}' from project '{1}' does not exist"] = {
		category = "Error",
		code = 6309,
	},
	["Referenced project '{0}' may not disable emit."] = {
		category = "Error",
		code = 6310,
	},
	["Project '{0}' is out of date because oldest output '{1}' is older than newest input '{2}'"] = {
		category = "Message",
		code = 6350,
	},
	["Project '{0}' is up to date because newest input '{1}' is older than oldest output '{2}'"] = {
		category = "Message",
		code = 6351,
	},
	["Project '{0}' is out of date because output file '{1}' does not exist"] = {
		category = "Message",
		code = 6352,
	},
	["Project '{0}' is out of date because its dependency '{1}' is out of date"] = {
		category = "Message",
		code = 6353,
	},
	["Project '{0}' is up to date with .d.ts files from its dependencies"] = {
		category = "Message",
		code = 6354,
	},
	["Projects in this build: {0}"] = {
		category = "Message",
		code = 6355,
	},
	["A non-dry build would delete the following files: {0}"] = {
		category = "Message",
		code = 6356,
	},
	["A non-dry build would build project '{0}'"] = {
		category = "Message",
		code = 6357,
	},
	["Building project '{0}'..."] = {
		category = "Message",
		code = 6358,
	},
	["Updating output timestamps of project '{0}'..."] = {
		category = "Message",
		code = 6359,
	},
	["Project '{0}' is up to date"] = {
		category = "Message",
		code = 6361,
	},
	["Skipping build of project '{0}' because its dependency '{1}' has errors"] = {
		category = "Message",
		code = 6362,
	},
	["Project '{0}' can't be built because its dependency '{1}' has errors"] = {
		category = "Message",
		code = 6363,
	},
	["Build one or more projects and their dependencies, if out of date"] = {
		category = "Message",
		code = 6364,
	},
	["Delete the outputs of all projects."] = {
		category = "Message",
		code = 6365,
	},
	["Show what would be built (or deleted, if specified with '--clean')"] = {
		category = "Message",
		code = 6367,
	},
	["Option '--build' must be the first command line argument."] = {
		category = "Error",
		code = 6369,
	},
	["Options '{0}' and '{1}' cannot be combined."] = {
		category = "Error",
		code = 6370,
	},
	["Updating unchanged output timestamps of project '{0}'..."] = {
		category = "Message",
		code = 6371,
	},
	["Project '{0}' is out of date because output of its dependency '{1}' has changed"] = {
		category = "Message",
		code = 6372,
	},
	["Updating output of project '{0}'..."] = {
		category = "Message",
		code = 6373,
	},
	["A non-dry build would update timestamps for output of project '{0}'"] = {
		category = "Message",
		code = 6374,
	},
	["A non-dry build would update output of project '{0}'"] = {
		category = "Message",
		code = 6375,
	},
	["Cannot update output of project '{0}' because there was error reading file '{1}'"] = {
		category = "Message",
		code = 6376,
	},
	["Cannot write file '{0}' because it will overwrite '.tsbuildinfo' file generated by referenced project '{1}'"] = {
		category = "Error",
		code = 6377,
	},
	["Composite projects may not disable incremental compilation."] = {
		category = "Error",
		code = 6379,
	},
	["Specify file to store incremental compilation information"] = {
		category = "Message",
		code = 6380,
	},
	["Project '{0}' is out of date because output for it was generated with version '{1}' that differs with current version '{2}'"] = {
		category = "Message",
		code = 6381,
	},
	["Skipping build of project '{0}' because its dependency '{1}' was not built"] = {
		category = "Message",
		code = 6382,
	},
	["Project '{0}' can't be built because its dependency '{1}' was not built"] = {
		category = "Message",
		code = 6383,
	},
	["Have recompiles in '--incremental' and '--watch' assume that changes within a file will only affect files directly depending on it."] = {
		category = "Message",
		code = 6384,
	},
	["'{0}' is deprecated."] = {
		category = "Suggestion",
		code = 6385,
		reportsDeprecated = true,
	},
	["Performance timings for '--diagnostics' or '--extendedDiagnostics' are not available in this session. A native implementation of the Web Performance API could not be found."] = {
		category = "Message",
		code = 6386,
	},
	["The signature '{0}' of '{1}' is deprecated."] = {
		category = "Suggestion",
		code = 6387,
		reportsDeprecated = true,
	},
	["Project '{0}' is being forcibly rebuilt"] = {
		category = "Message",
		code = 6388,
	},
	["Reusing resolution of module '{0}' from '{1}' of old program, it was not resolved."] = {
		category = "Message",
		code = 6389,
	},
	["Reusing resolution of type reference directive '{0}' from '{1}' of old program, it was successfully resolved to '{2}'."] = {
		category = "Message",
		code = 6390,
	},
	["Reusing resolution of type reference directive '{0}' from '{1}' of old program, it was successfully resolved to '{2}' with Package ID '{3}'."] = {
		category = "Message",
		code = 6391,
	},
	["Reusing resolution of type reference directive '{0}' from '{1}' of old program, it was not resolved."] = {
		category = "Message",
		code = 6392,
	},
	["Reusing resolution of module '{0}' from '{1}' found in cache from location '{2}', it was successfully resolved to '{3}'."] = {
		category = "Message",
		code = 6393,
	},
	["Reusing resolution of module '{0}' from '{1}' found in cache from location '{2}', it was successfully resolved to '{3}' with Package ID '{4}'."] = {
		category = "Message",
		code = 6394,
	},
	["Reusing resolution of module '{0}' from '{1}' found in cache from location '{2}', it was not resolved."] = {
		category = "Message",
		code = 6395,
	},
	["Reusing resolution of type reference directive '{0}' from '{1}' found in cache from location '{2}', it was successfully resolved to '{3}'."] = {
		category = "Message",
		code = 6396,
	},
	["Reusing resolution of type reference directive '{0}' from '{1}' found in cache from location '{2}', it was successfully resolved to '{3}' with Package ID '{4}'."] = {
		category = "Message",
		code = 6397,
	},
	["Reusing resolution of type reference directive '{0}' from '{1}' found in cache from location '{2}', it was not resolved."] = {
		category = "Message",
		code = 6398,
	},
	["The expected type comes from property '{0}' which is declared here on type '{1}'"] = {
		category = "Message",
		code = 6500,
	},
	["The expected type comes from this index signature."] = {
		category = "Message",
		code = 6501,
	},
	["The expected type comes from the return type of this signature."] = {
		category = "Message",
		code = 6502,
	},
	["Print names of files that are part of the compilation and then stop processing."] = {
		category = "Message",
		code = 6503,
	},
	["File '{0}' is a JavaScript file. Did you mean to enable the 'allowJs' option?"] = {
		category = "Error",
		code = 6504,
	},
	["Print names of files and the reason they are part of the compilation."] = {
		category = "Message",
		code = 6505,
	},
	["Consider adding a 'declare' modifier to this class."] = {
		category = "Message",
		code = 6506,
	},
	["Allow JavaScript files to be a part of your program. Use the 'checkJS' option to get errors from these files."] = {
		category = "Message",
		code = 6600,
	},
	["Allow 'import x from y' when a module doesn't have a default export."] = {
		category = "Message",
		code = 6601,
	},
	["Allow accessing UMD globals from modules."] = {
		category = "Message",
		code = 6602,
	},
	["Disable error reporting for unreachable code."] = {
		category = "Message",
		code = 6603,
	},
	["Disable error reporting for unused labels."] = {
		category = "Message",
		code = 6604,
	},
	["Ensure 'use strict' is always emitted."] = {
		category = "Message",
		code = 6605,
	},
	["Have recompiles in projects that use 'incremental' and 'watch' mode assume that changes within a file will only affect files directly depending on it."] = {
		category = "Message",
		code = 6606,
	},
	["Specify the base directory to resolve non-relative module names."] = {
		category = "Message",
		code = 6607,
	},
	["No longer supported. In early versions, manually set the text encoding for reading files."] = {
		category = "Message",
		code = 6608,
	},
	["Enable error reporting in type-checked JavaScript files."] = {
		category = "Message",
		code = 6609,
	},
	["Enable constraints that allow a TypeScript project to be used with project references."] = {
		category = "Message",
		code = 6611,
	},
	["Generate .d.ts files from TypeScript and JavaScript files in your project."] = {
		category = "Message",
		code = 6612,
	},
	["Specify the output directory for generated declaration files."] = {
		category = "Message",
		code = 6613,
	},
	["Create sourcemaps for d.ts files."] = {
		category = "Message",
		code = 6614,
	},
	["Output compiler performance information after building."] = {
		category = "Message",
		code = 6615,
	},
	["Disables inference for type acquisition by looking at filenames in a project."] = {
		category = "Message",
		code = 6616,
	},
	["Reduce the number of projects loaded automatically by TypeScript."] = {
		category = "Message",
		code = 6617,
	},
	["Remove the 20mb cap on total source code size for JavaScript files in the TypeScript language server."] = {
		category = "Message",
		code = 6618,
	},
	["Opt a project out of multi-project reference checking when editing."] = {
		category = "Message",
		code = 6619,
	},
	["Disable preferring source files instead of declaration files when referencing composite projects."] = {
		category = "Message",
		code = 6620,
	},
	["Emit more compliant, but verbose and less performant JavaScript for iteration."] = {
		category = "Message",
		code = 6621,
	},
	["Emit a UTF-8 Byte Order Mark (BOM) in the beginning of output files."] = {
		category = "Message",
		code = 6622,
	},
	["Only output d.ts files and not JavaScript files."] = {
		category = "Message",
		code = 6623,
	},
	["Emit design-type metadata for decorated declarations in source files."] = {
		category = "Message",
		code = 6624,
	},
	["Disable the type acquisition for JavaScript projects"] = {
		category = "Message",
		code = 6625,
	},
	["Emit additional JavaScript to ease support for importing CommonJS modules. This enables 'allowSyntheticDefaultImports' for type compatibility."] = {
		category = "Message",
		code = 6626,
	},
	["Filters results from the `include` option."] = {
		category = "Message",
		code = 6627,
	},
	["Remove a list of directories from the watch process."] = {
		category = "Message",
		code = 6628,
	},
	["Remove a list of files from the watch mode's processing."] = {
		category = "Message",
		code = 6629,
	},
	["Enable experimental support for TC39 stage 2 draft decorators."] = {
		category = "Message",
		code = 6630,
	},
	["Print files read during the compilation including why it was included."] = {
		category = "Message",
		code = 6631,
	},
	["Output more detailed compiler performance information after building."] = {
		category = "Message",
		code = 6632,
	},
	["Specify one or more path or node module references to base configuration files from which settings are inherited."] = {
		category = "Message",
		code = 6633,
	},
	["Specify what approach the watcher should use if the system runs out of native file watchers."] = {
		category = "Message",
		code = 6634,
	},
	["Include a list of files. This does not support glob patterns, as opposed to `include`."] = {
		category = "Message",
		code = 6635,
	},
	["Build all projects, including those that appear to be up to date."] = {
		category = "Message",
		code = 6636,
	},
	["Ensure that casing is correct in imports."] = {
		category = "Message",
		code = 6637,
	},
	["Emit a v8 CPU profile of the compiler run for debugging."] = {
		category = "Message",
		code = 6638,
	},
	["Allow importing helper functions from tslib once per project, instead of including them per-file."] = {
		category = "Message",
		code = 6639,
	},
	["Specify a list of glob patterns that match files to be included in compilation."] = {
		category = "Message",
		code = 6641,
	},
	["Save .tsbuildinfo files to allow for incremental compilation of projects."] = {
		category = "Message",
		code = 6642,
	},
	["Include sourcemap files inside the emitted JavaScript."] = {
		category = "Message",
		code = 6643,
	},
	["Include source code in the sourcemaps inside the emitted JavaScript."] = {
		category = "Message",
		code = 6644,
	},
	["Ensure that each file can be safely transpiled without relying on other imports."] = {
		category = "Message",
		code = 6645,
	},
	["Specify what JSX code is generated."] = {
		category = "Message",
		code = 6646,
	},
	["Specify the JSX factory function used when targeting React JSX emit, e.g. 'React.createElement' or 'h'."] = {
		category = "Message",
		code = 6647,
	},
	["Specify the JSX Fragment reference used for fragments when targeting React JSX emit e.g. 'React.Fragment' or 'Fragment'."] = {
		category = "Message",
		code = 6648,
	},
	["Specify module specifier used to import the JSX factory functions when using 'jsx: react-jsx*'."] = {
		category = "Message",
		code = 6649,
	},
	["Make keyof only return strings instead of string, numbers or symbols. Legacy option."] = {
		category = "Message",
		code = 6650,
	},
	["Specify a set of bundled library declaration files that describe the target runtime environment."] = {
		category = "Message",
		code = 6651,
	},
	["Print the names of emitted files after a compilation."] = {
		category = "Message",
		code = 6652,
	},
	["Print all of the files read during the compilation."] = {
		category = "Message",
		code = 6653,
	},
	["Set the language of the messaging from TypeScript. This does not affect emit."] = {
		category = "Message",
		code = 6654,
	},
	["Specify the location where debugger should locate map files instead of generated locations."] = {
		category = "Message",
		code = 6655,
	},
	["Specify the maximum folder depth used for checking JavaScript files from 'node_modules'. Only applicable with 'allowJs'."] = {
		category = "Message",
		code = 6656,
	},
	["Specify what module code is generated."] = {
		category = "Message",
		code = 6657,
	},
	["Specify how TypeScript looks up a file from a given module specifier."] = {
		category = "Message",
		code = 6658,
	},
	["Set the newline character for emitting files."] = {
		category = "Message",
		code = 6659,
	},
	["Disable emitting files from a compilation."] = {
		category = "Message",
		code = 6660,
	},
	["Disable generating custom helper functions like '__extends' in compiled output."] = {
		category = "Message",
		code = 6661,
	},
	["Disable emitting files if any type checking errors are reported."] = {
		category = "Message",
		code = 6662,
	},
	["Disable truncating types in error messages."] = {
		category = "Message",
		code = 6663,
	},
	["Enable error reporting for fallthrough cases in switch statements."] = {
		category = "Message",
		code = 6664,
	},
	["Enable error reporting for expressions and declarations with an implied 'any' type."] = {
		category = "Message",
		code = 6665,
	},
	["Ensure overriding members in derived classes are marked with an override modifier."] = {
		category = "Message",
		code = 6666,
	},
	["Enable error reporting for codepaths that do not explicitly return in a function."] = {
		category = "Message",
		code = 6667,
	},
	["Enable error reporting when 'this' is given the type 'any'."] = {
		category = "Message",
		code = 6668,
	},
	["Disable adding 'use strict' directives in emitted JavaScript files."] = {
		category = "Message",
		code = 6669,
	},
	["Disable including any library files, including the default lib.d.ts."] = {
		category = "Message",
		code = 6670,
	},
	["Enforces using indexed accessors for keys declared using an indexed type."] = {
		category = "Message",
		code = 6671,
	},
	["Disallow 'import's, 'require's or '<reference>'s from expanding the number of files TypeScript should add to a project."] = {
		category = "Message",
		code = 6672,
	},
	["Disable strict checking of generic signatures in function types."] = {
		category = "Message",
		code = 6673,
	},
	["Add 'undefined' to a type when accessed using an index."] = {
		category = "Message",
		code = 6674,
	},
	["Enable error reporting when local variables aren't read."] = {
		category = "Message",
		code = 6675,
	},
	["Raise an error when a function parameter isn't read."] = {
		category = "Message",
		code = 6676,
	},
	["Deprecated setting. Use 'outFile' instead."] = {
		category = "Message",
		code = 6677,
	},
	["Specify an output folder for all emitted files."] = {
		category = "Message",
		code = 6678,
	},
	["Specify a file that bundles all outputs into one JavaScript file. If 'declaration' is true, also designates a file that bundles all .d.ts output."] = {
		category = "Message",
		code = 6679,
	},
	["Specify a set of entries that re-map imports to additional lookup locations."] = {
		category = "Message",
		code = 6680,
	},
	["Specify a list of language service plugins to include."] = {
		category = "Message",
		code = 6681,
	},
	["Disable erasing 'const enum' declarations in generated code."] = {
		category = "Message",
		code = 6682,
	},
	["Disable resolving symlinks to their realpath. This correlates to the same flag in node."] = {
		category = "Message",
		code = 6683,
	},
	["Disable wiping the console in watch mode."] = {
		category = "Message",
		code = 6684,
	},
	["Enable color and formatting in TypeScript's output to make compiler errors easier to read."] = {
		category = "Message",
		code = 6685,
	},
	["Specify the object invoked for 'createElement'. This only applies when targeting 'react' JSX emit."] = {
		category = "Message",
		code = 6686,
	},
	["Specify an array of objects that specify paths for projects. Used in project references."] = {
		category = "Message",
		code = 6687,
	},
	["Disable emitting comments."] = {
		category = "Message",
		code = 6688,
	},
	["Enable importing .json files."] = {
		category = "Message",
		code = 6689,
	},
	["Specify the root folder within your source files."] = {
		category = "Message",
		code = 6690,
	},
	["Allow multiple folders to be treated as one when resolving modules."] = {
		category = "Message",
		code = 6691,
	},
	["Skip type checking .d.ts files that are included with TypeScript."] = {
		category = "Message",
		code = 6692,
	},
	["Skip type checking all .d.ts files."] = {
		category = "Message",
		code = 6693,
	},
	["Create source map files for emitted JavaScript files."] = {
		category = "Message",
		code = 6694,
	},
	["Specify the root path for debuggers to find the reference source code."] = {
		category = "Message",
		code = 6695,
	},
	["Check that the arguments for 'bind', 'call', and 'apply' methods match the original function."] = {
		category = "Message",
		code = 6697,
	},
	["When assigning functions, check to ensure parameters and the return values are subtype-compatible."] = {
		category = "Message",
		code = 6698,
	},
	["When type checking, take into account 'null' and 'undefined'."] = {
		category = "Message",
		code = 6699,
	},
	["Check for class properties that are declared but not set in the constructor."] = {
		category = "Message",
		code = 6700,
	},
	["Disable emitting declarations that have '@internal' in their JSDoc comments."] = {
		category = "Message",
		code = 6701,
	},
	["Disable reporting of excess property errors during the creation of object literals."] = {
		category = "Message",
		code = 6702,
	},
	["Suppress 'noImplicitAny' errors when indexing objects that lack index signatures."] = {
		category = "Message",
		code = 6703,
	},
	["Synchronously call callbacks and update the state of directory watchers on platforms that don`t support recursive watching natively."] = {
		category = "Message",
		code = 6704,
	},
	["Set the JavaScript language version for emitted JavaScript and include compatible library declarations."] = {
		category = "Message",
		code = 6705,
	},
	["Log paths used during the 'moduleResolution' process."] = {
		category = "Message",
		code = 6706,
	},
	["Specify the path to .tsbuildinfo incremental compilation file."] = {
		category = "Message",
		code = 6707,
	},
	["Specify options for automatic acquisition of declaration files."] = {
		category = "Message",
		code = 6709,
	},
	["Specify multiple folders that act like './node_modules/@types'."] = {
		category = "Message",
		code = 6710,
	},
	["Specify type package names to be included without being referenced in a source file."] = {
		category = "Message",
		code = 6711,
	},
	["Emit ECMAScript-standard-compliant class fields."] = {
		category = "Message",
		code = 6712,
	},
	["Enable verbose logging."] = {
		category = "Message",
		code = 6713,
	},
	["Specify how directories are watched on systems that lack recursive file-watching functionality."] = {
		category = "Message",
		code = 6714,
	},
	["Specify how the TypeScript watch mode works."] = {
		category = "Message",
		code = 6715,
	},
	["Require undeclared properties from index signatures to use element accesses."] = {
		category = "Message",
		code = 6717,
	},
	["Specify emit/checking behavior for imports that are only used for types."] = {
		category = "Message",
		code = 6718,
	},
	["Default catch clause variables as 'unknown' instead of 'any'."] = {
		category = "Message",
		code = 6803,
	},
	['module === "system" or esModuleInterop'] = {
		category = "Message",
		code = 6904,
	},
	["`false`, unless `strict` is set"] = {
		category = "Message",
		code = 6905,
	},
	["`false`, unless `composite` is set"] = {
		category = "Message",
		code = 6906,
	},
	['`["node_modules", "bower_components", "jspm_packages"]`, plus the value of `outDir` if one is specified.'] = {
		category = "Message",
		code = 6907,
	},
	['`[]` if `files` is specified, otherwise `["**/*"]`'] = {
		category = "Message",
		code = 6908,
	},
	["`true` if `composite`, `false` otherwise"] = {
		category = "Message",
		code = 6909,
	},
	["module === `AMD` or `UMD` or `System` or `ES6`, then `Classic`, Otherwise `Node`"] = {
		category = "Message",
		code = 69010,
	},
	["Computed from the list of input files"] = {
		category = "Message",
		code = 6911,
	},
	["Platform specific"] = {
		category = "Message",
		code = 6912,
	},
	["You can learn about all of the compiler options at {0}"] = {
		category = "Message",
		code = 6913,
	},
	["Including --watch, -w will start watching the current project for the file changes. Once set, you can config watch mode with:"] = {
		category = "Message",
		code = 6914,
	},
	["Using --build, -b will make tsc behave more like a build orchestrator than a compiler. This is used to trigger building composite projects which you can learn more about at {0}"] = {
		category = "Message",
		code = 6915,
	},
	["COMMON COMMANDS"] = {
		category = "Message",
		code = 6916,
	},
	["ALL COMPILER OPTIONS"] = {
		category = "Message",
		code = 6917,
	},
	["WATCH OPTIONS"] = {
		category = "Message",
		code = 6918,
	},
	["BUILD OPTIONS"] = {
		category = "Message",
		code = 6919,
	},
	["COMMON COMPILER OPTIONS"] = {
		category = "Message",
		code = 6920,
	},
	["COMMAND LINE FLAGS"] = {
		category = "Message",
		code = 6921,
	},
	["tsc: The TypeScript Compiler"] = {
		category = "Message",
		code = 6922,
	},
	["Compiles the current project (tsconfig.json in the working directory.)"] = {
		category = "Message",
		code = 6923,
	},
	["Ignoring tsconfig.json, compiles the specified files with default compiler options."] = {
		category = "Message",
		code = 6924,
	},
	["Build a composite project in the working directory."] = {
		category = "Message",
		code = 6925,
	},
	["Creates a tsconfig.json with the recommended settings in the working directory."] = {
		category = "Message",
		code = 6926,
	},
	["Compiles the TypeScript project located at the specified path."] = {
		category = "Message",
		code = 6927,
	},
	["An expanded version of this information, showing all possible compiler options"] = {
		category = "Message",
		code = 6928,
	},
	["Compiles the current project, with additional settings."] = {
		category = "Message",
		code = 6929,
	},
	["`true` for ES2022 and above, including ESNext."] = {
		category = "Message",
		code = 6930,
	},
	["List of file name suffixes to search when resolving a module."] = {
		category = "Error",
		code = 6931,
	},
	["Variable '{0}' implicitly has an '{1}' type."] = {
		category = "Error",
		code = 7005,
	},
	["Parameter '{0}' implicitly has an '{1}' type."] = {
		category = "Error",
		code = 7006,
	},
	["Member '{0}' implicitly has an '{1}' type."] = {
		category = "Error",
		code = 7008,
	},
	["'new' expression, whose target lacks a construct signature, implicitly has an 'any' type."] = {
		category = "Error",
		code = 7009,
	},
	["'{0}', which lacks return-type annotation, implicitly has an '{1}' return type."] = {
		category = "Error",
		code = 7010,
	},
	["Function expression, which lacks return-type annotation, implicitly has an '{0}' return type."] = {
		category = "Error",
		code = 7011,
	},
	["Construct signature, which lacks return-type annotation, implicitly has an 'any' return type."] = {
		category = "Error",
		code = 7013,
	},
	["Function type, which lacks return-type annotation, implicitly has an '{0}' return type."] = {
		category = "Error",
		code = 7014,
	},
	["Element implicitly has an 'any' type because index expression is not of type 'number'."] = {
		category = "Error",
		code = 7015,
	},
	["Could not find a declaration file for module '{0}'. '{1}' implicitly has an 'any' type."] = {
		category = "Error",
		code = 7016,
	},
	["Element implicitly has an 'any' type because type '{0}' has no index signature."] = {
		category = "Error",
		code = 7017,
	},
	["Object literal's property '{0}' implicitly has an '{1}' type."] = {
		category = "Error",
		code = 7018,
	},
	["Rest parameter '{0}' implicitly has an 'any[]' type."] = {
		category = "Error",
		code = 7019,
	},
	["Call signature, which lacks return-type annotation, implicitly has an 'any' return type."] = {
		category = "Error",
		code = 7020,
	},
	["'{0}' implicitly has type 'any' because it does not have a type annotation and is referenced directly or indirectly in its own initializer."] = {
		category = "Error",
		code = 7022,
	},
	["'{0}' implicitly has return type 'any' because it does not have a return type annotation and is referenced directly or indirectly in one of its return expressions."] = {
		category = "Error",
		code = 7023,
	},
	["Function implicitly has return type 'any' because it does not have a return type annotation and is referenced directly or indirectly in one of its return expressions."] = {
		category = "Error",
		code = 7024,
	},
	["Generator implicitly has yield type '{0}' because it does not yield any values. Consider supplying a return type annotation."] = {
		category = "Error",
		code = 7025,
	},
	["JSX element implicitly has type 'any' because no interface 'JSX.{0}' exists."] = {
		category = "Error",
		code = 7026,
	},
	["Unreachable code detected."] = {
		category = "Error",
		code = 7027,
		reportsUnnecessary = true,
	},
	["Unused label."] = {
		category = "Error",
		code = 7028,
		reportsUnnecessary = true,
	},
	["Fallthrough case in switch."] = {
		category = "Error",
		code = 7029,
	},
	["Not all code paths return a value."] = {
		category = "Error",
		code = 7030,
	},
	["Binding element '{0}' implicitly has an '{1}' type."] = {
		category = "Error",
		code = 7031,
	},
	["Property '{0}' implicitly has type 'any', because its set accessor lacks a parameter type annotation."] = {
		category = "Error",
		code = 7032,
	},
	["Property '{0}' implicitly has type 'any', because its get accessor lacks a return type annotation."] = {
		category = "Error",
		code = 7033,
	},
	["Variable '{0}' implicitly has type '{1}' in some locations where its type cannot be determined."] = {
		category = "Error",
		code = 7034,
	},
	["Try `npm i --save-dev @types/{1}` if it exists or add a new declaration (.d.ts) file containing `declare module '{0}';`"] = {
		category = "Error",
		code = 7035,
	},
	["Dynamic import's specifier must be of type 'string', but here has type '{0}'."] = {
		category = "Error",
		code = 7036,
	},
	["Enables emit interoperability between CommonJS and ES Modules via creation of namespace objects for all imports. Implies 'allowSyntheticDefaultImports'."] = {
		category = "Message",
		code = 7037,
	},
	["Type originates at this import. A namespace-style import cannot be called or constructed, and will cause a failure at runtime. Consider using a default import or import require here instead."] = {
		category = "Message",
		code = 7038,
	},
	["Mapped object type implicitly has an 'any' template type."] = {
		category = "Error",
		code = 7039,
	},
	["If the '{0}' package actually exposes this module, consider sending a pull request to amend 'https://github.com/DefinitelyTyped/DefinitelyTyped/tree/master/types/{1}'"] = {
		category = "Error",
		code = 7040,
	},
	["The containing arrow function captures the global value of 'this'."] = {
		category = "Error",
		code = 7041,
	},
	["Module '{0}' was resolved to '{1}', but '--resolveJsonModule' is not used."] = {
		category = "Error",
		code = 7042,
	},
	["Variable '{0}' implicitly has an '{1}' type, but a better type may be inferred from usage."] = {
		category = "Suggestion",
		code = 7043,
	},
	["Parameter '{0}' implicitly has an '{1}' type, but a better type may be inferred from usage."] = {
		category = "Suggestion",
		code = 7044,
	},
	["Member '{0}' implicitly has an '{1}' type, but a better type may be inferred from usage."] = {
		category = "Suggestion",
		code = 7045,
	},
	["Variable '{0}' implicitly has type '{1}' in some locations, but a better type may be inferred from usage."] = {
		category = "Suggestion",
		code = 7046,
	},
	["Rest parameter '{0}' implicitly has an 'any[]' type, but a better type may be inferred from usage."] = {
		category = "Suggestion",
		code = 7047,
	},
	["Property '{0}' implicitly has type 'any', but a better type for its get accessor may be inferred from usage."] = {
		category = "Suggestion",
		code = 7048,
	},
	["Property '{0}' implicitly has type 'any', but a better type for its set accessor may be inferred from usage."] = {
		category = "Suggestion",
		code = 7049,
	},
	["'{0}' implicitly has an '{1}' return type, but a better type may be inferred from usage."] = {
		category = "Suggestion",
		code = 7050,
	},
	["Parameter has a name but no type. Did you mean '{0}: {1}'?"] = {
		category = "Error",
		code = 7051,
	},
	["Element implicitly has an 'any' type because type '{0}' has no index signature. Did you mean to call '{1}'?"] = {
		category = "Error",
		code = 7052,
	},
	["Element implicitly has an 'any' type because expression of type '{0}' can't be used to index type '{1}'."] = {
		category = "Error",
		code = 7053,
	},
	["No index signature with a parameter of type '{0}' was found on type '{1}'."] = {
		category = "Error",
		code = 7054,
	},
	["'{0}', which lacks return-type annotation, implicitly has an '{1}' yield type."] = {
		category = "Error",
		code = 7055,
	},
	["The inferred type of this node exceeds the maximum length the compiler will serialize. An explicit type annotation is needed."] = {
		category = "Error",
		code = 7056,
	},
	["'yield' expression implicitly results in an 'any' type because its containing generator lacks a return-type annotation."] = {
		category = "Error",
		code = 7057,
	},
	["If the '{0}' package actually exposes this module, try adding a new declaration (.d.ts) file containing `declare module '{1}';`"] = {
		category = "Error",
		code = 7058,
	},
	["This syntax is reserved in files with the .mts or .cts extension. Use an `as` expression instead."] = {
		category = "Error",
		code = 7059,
	},
	["This syntax is reserved in files with the .mts or .cts extension. Add a trailing comma or explicit constraint."] = {
		category = "Error",
		code = 7060,
	},
	["A mapped type may not declare properties or methods."] = {
		category = "Error",
		code = 7061,
	},
	["JSON imports are experimental in ES module mode imports."] = {
		category = "Error",
		code = 7062,
	},
	["You cannot rename this element."] = {
		category = "Error",
		code = 8000,
	},
	["You cannot rename elements that are defined in the standard TypeScript library."] = {
		category = "Error",
		code = 8001,
	},
	["'import ... =' can only be used in TypeScript files."] = {
		category = "Error",
		code = 8002,
	},
	["'export =' can only be used in TypeScript files."] = {
		category = "Error",
		code = 8003,
	},
	["Type parameter declarations can only be used in TypeScript files."] = {
		category = "Error",
		code = 8004,
	},
	["'implements' clauses can only be used in TypeScript files."] = {
		category = "Error",
		code = 8005,
	},
	["'{0}' declarations can only be used in TypeScript files."] = {
		category = "Error",
		code = 8006,
	},
	["Type aliases can only be used in TypeScript files."] = {
		category = "Error",
		code = 8008,
	},
	["The '{0}' modifier can only be used in TypeScript files."] = {
		category = "Error",
		code = 8009,
	},
	["Type annotations can only be used in TypeScript files."] = {
		category = "Error",
		code = 8010,
	},
	["Type arguments can only be used in TypeScript files."] = {
		category = "Error",
		code = 8011,
	},
	["Parameter modifiers can only be used in TypeScript files."] = {
		category = "Error",
		code = 8012,
	},
	["Non-null assertions can only be used in TypeScript files."] = {
		category = "Error",
		code = 8013,
	},
	["Type assertion expressions can only be used in TypeScript files."] = {
		category = "Error",
		code = 8016,
	},
	["Octal literal types must use ES2015 syntax. Use the syntax '{0}'."] = {
		category = "Error",
		code = 8017,
	},
	["Octal literals are not allowed in enums members initializer. Use the syntax '{0}'."] = {
		category = "Error",
		code = 8018,
	},
	["Report errors in .js files."] = {
		category = "Message",
		code = 8019,
	},
	["JSDoc types can only be used inside documentation comments."] = {
		category = "Error",
		code = 8020,
	},
	["JSDoc '@typedef' tag should either have a type annotation or be followed by '@property' or '@member' tags."] = {
		category = "Error",
		code = 8021,
	},
	["JSDoc '@{0}' is not attached to a class."] = {
		category = "Error",
		code = 8022,
	},
	["JSDoc '@{0} {1}' does not match the 'extends {2}' clause."] = {
		category = "Error",
		code = 8023,
	},
	["JSDoc '@param' tag has name '{0}', but there is no parameter with that name."] = {
		category = "Error",
		code = 8024,
	},
	["Class declarations cannot have more than one '@augments' or '@extends' tag."] = {
		category = "Error",
		code = 8025,
	},
	["Expected {0} type arguments; provide these with an '@extends' tag."] = {
		category = "Error",
		code = 8026,
	},
	["Expected {0}-{1} type arguments; provide these with an '@extends' tag."] = {
		category = "Error",
		code = 8027,
	},
	["JSDoc '...' may only appear in the last parameter of a signature."] = {
		category = "Error",
		code = 8028,
	},
	["JSDoc '@param' tag has name '{0}', but there is no parameter with that name. It would match 'arguments' if it had an array type."] = {
		category = "Error",
		code = 8029,
	},
	["The type of a function declaration must match the function's signature."] = {
		category = "Error",
		code = 8030,
	},
	["You cannot rename a module via a global import."] = {
		category = "Error",
		code = 8031,
	},
	["Qualified name '{0}' is not allowed without a leading '@param {object} {1}'."] = {
		category = "Error",
		code = 8032,
	},
	["A JSDoc '@typedef' comment may not contain multiple '@type' tags."] = {
		category = "Error",
		code = 8033,
	},
	["The tag was first specified here."] = {
		category = "Error",
		code = 8034,
	},
	["Declaration emit for this file requires using private name '{0}'. An explicit type annotation may unblock declaration emit."] = {
		category = "Error",
		code = 9005,
	},
	["Declaration emit for this file requires using private name '{0}' from module '{1}'. An explicit type annotation may unblock declaration emit."] = {
		category = "Error",
		code = 9006,
	},
	["JSX attributes must only be assigned a non-empty 'expression'."] = {
		category = "Error",
		code = 17000,
	},
	["JSX elements cannot have multiple attributes with the same name."] = {
		category = "Error",
		code = 17001,
	},
	["Expected corresponding JSX closing tag for '{0}'."] = {
		category = "Error",
		code = 17002,
	},
	["Cannot use JSX unless the '--jsx' flag is provided."] = {
		category = "Error",
		code = 17004,
	},
	["A constructor cannot contain a 'super' call when its class extends 'null'."] = {
		category = "Error",
		code = 17005,
	},
	["An unary expression with the '{0}' operator is not allowed in the left-hand side of an exponentiation expression. Consider enclosing the expression in parentheses."] = {
		category = "Error",
		code = 17006,
	},
	["A type assertion expression is not allowed in the left-hand side of an exponentiation expression. Consider enclosing the expression in parentheses."] = {
		category = "Error",
		code = 17007,
	},
	["JSX element '{0}' has no corresponding closing tag."] = {
		category = "Error",
		code = 17008,
	},
	["'super' must be called before accessing 'this' in the constructor of a derived class."] = {
		category = "Error",
		code = 17009,
	},
	["Unknown type acquisition option '{0}'."] = {
		category = "Error",
		code = 17010,
	},
	["'super' must be called before accessing a property of 'super' in the constructor of a derived class."] = {
		category = "Error",
		code = 17011,
	},
	["'{0}' is not a valid meta-property for keyword '{1}'. Did you mean '{2}'?"] = {
		category = "Error",
		code = 17012,
	},
	["Meta-property '{0}' is only allowed in the body of a function declaration, function expression, or constructor."] = {
		category = "Error",
		code = 17013,
	},
	["JSX fragment has no corresponding closing tag."] = {
		category = "Error",
		code = 17014,
	},
	["Expected corresponding closing tag for JSX fragment."] = {
		category = "Error",
		code = 17015,
	},
	["The 'jsxFragmentFactory' compiler option must be provided to use JSX fragments with the 'jsxFactory' compiler option."] = {
		category = "Error",
		code = 17016,
	},
	["An @jsxFrag pragma is required when using an @jsx pragma with JSX fragments."] = {
		category = "Error",
		code = 17017,
	},
	["Unknown type acquisition option '{0}'. Did you mean '{1}'?"] = {
		category = "Error",
		code = 17018,
	},
	["Circularity detected while resolving configuration: {0}"] = {
		category = "Error",
		code = 18000,
	},
	["The 'files' list in config file '{0}' is empty."] = {
		category = "Error",
		code = 18002,
	},
	["No inputs were found in config file '{0}'. Specified 'include' paths were '{1}' and 'exclude' paths were '{2}'."] = {
		category = "Error",
		code = 18003,
	},
	["File is a CommonJS module; it may be converted to an ES module."] = {
		category = "Suggestion",
		code = 80001,
	},
	["This constructor function may be converted to a class declaration."] = {
		category = "Suggestion",
		code = 80002,
	},
	["Import may be converted to a default import."] = {
		category = "Suggestion",
		code = 80003,
	},
	["JSDoc types may be moved to TypeScript types."] = {
		category = "Suggestion",
		code = 80004,
	},
	["'require' call may be converted to an import."] = {
		category = "Suggestion",
		code = 80005,
	},
	["This may be converted to an async function."] = {
		category = "Suggestion",
		code = 80006,
	},
	["'await' has no effect on the type of this expression."] = {
		category = "Suggestion",
		code = 80007,
	},
	["Numeric literals with absolute values equal to 2^53 or greater are too large to be represented accurately as integers."] = {
		category = "Suggestion",
		code = 80008,
	},
	["Add missing 'super()' call"] = {
		category = "Message",
		code = 90001,
	},
	["Make 'super()' call the first statement in the constructor"] = {
		category = "Message",
		code = 90002,
	},
	["Change 'extends' to 'implements'"] = {
		category = "Message",
		code = 90003,
	},
	["Remove unused declaration for: '{0}'"] = {
		category = "Message",
		code = 90004,
	},
	["Remove import from '{0}'"] = {
		category = "Message",
		code = 90005,
	},
	["Implement interface '{0}'"] = {
		category = "Message",
		code = 90006,
	},
	["Implement inherited abstract class"] = {
		category = "Message",
		code = 90007,
	},
	["Add '{0}.' to unresolved variable"] = {
		category = "Message",
		code = 90008,
	},
	["Remove variable statement"] = {
		category = "Message",
		code = 90010,
	},
	["Remove template tag"] = {
		category = "Message",
		code = 90011,
	},
	["Remove type parameters"] = {
		category = "Message",
		code = 90012,
	},
	["Import '{0}' from \"{1}\""] = {
		category = "Message",
		code = 90013,
	},
	["Change '{0}' to '{1}'"] = {
		category = "Message",
		code = 90014,
	},
	["Declare property '{0}'"] = {
		category = "Message",
		code = 90016,
	},
	["Add index signature for property '{0}'"] = {
		category = "Message",
		code = 90017,
	},
	["Disable checking for this file"] = {
		category = "Message",
		code = 90018,
	},
	["Ignore this error message"] = {
		category = "Message",
		code = 90019,
	},
	["Initialize property '{0}' in the constructor"] = {
		category = "Message",
		code = 90020,
	},
	["Initialize static property '{0}'"] = {
		category = "Message",
		code = 90021,
	},
	["Change spelling to '{0}'"] = {
		category = "Message",
		code = 90022,
	},
	["Declare method '{0}'"] = {
		category = "Message",
		code = 90023,
	},
	["Declare static method '{0}'"] = {
		category = "Message",
		code = 90024,
	},
	["Prefix '{0}' with an underscore"] = {
		category = "Message",
		code = 90025,
	},
	["Rewrite as the indexed access type '{0}'"] = {
		category = "Message",
		code = 90026,
	},
	["Declare static property '{0}'"] = {
		category = "Message",
		code = 90027,
	},
	["Call decorator expression"] = {
		category = "Message",
		code = 90028,
	},
	["Add async modifier to containing function"] = {
		category = "Message",
		code = 90029,
	},
	["Replace 'infer {0}' with 'unknown'"] = {
		category = "Message",
		code = 90030,
	},
	["Replace all unused 'infer' with 'unknown'"] = {
		category = "Message",
		code = 90031,
	},
	["Add parameter name"] = {
		category = "Message",
		code = 90034,
	},
	["Declare private property '{0}'"] = {
		category = "Message",
		code = 90035,
	},
	["Replace '{0}' with 'Promise<{1}>'"] = {
		category = "Message",
		code = 90036,
	},
	["Fix all incorrect return type of an async functions"] = {
		category = "Message",
		code = 90037,
	},
	["Declare private method '{0}'"] = {
		category = "Message",
		code = 90038,
	},
	["Remove unused destructuring declaration"] = {
		category = "Message",
		code = 90039,
	},
	["Remove unused declarations for: '{0}'"] = {
		category = "Message",
		code = 90041,
	},
	["Declare a private field named '{0}'."] = {
		category = "Message",
		code = 90053,
	},
	["Includes imports of types referenced by '{0}'"] = {
		category = "Message",
		code = 90054,
	},
	["Remove 'type' from import declaration from \"{0}\""] = {
		category = "Message",
		code = 90055,
	},
	["Remove 'type' from import of '{0}' from \"{1}\""] = {
		category = "Message",
		code = 90056,
	},
	['Add import from "{0}"'] = {
		category = "Message",
		code = 90057,
	},
	['Update import from "{0}"'] = {
		category = "Message",
		code = 90058,
	},
	["Convert function to an ES2015 class"] = {
		category = "Message",
		code = 95001,
	},
	["Convert '{0}' to '{1} in {0}'"] = {
		category = "Message",
		code = 95003,
	},
	["Extract to {0} in {1}"] = {
		category = "Message",
		code = 95004,
	},
	["Extract function"] = {
		category = "Message",
		code = 95005,
	},
	["Extract constant"] = {
		category = "Message",
		code = 95006,
	},
	["Extract to {0} in enclosing scope"] = {
		category = "Message",
		code = 95007,
	},
	["Extract to {0} in {1} scope"] = {
		category = "Message",
		code = 95008,
	},
	["Annotate with type from JSDoc"] = {
		category = "Message",
		code = 95009,
	},
	["Infer type of '{0}' from usage"] = {
		category = "Message",
		code = 95011,
	},
	["Infer parameter types from usage"] = {
		category = "Message",
		code = 95012,
	},
	["Convert to default import"] = {
		category = "Message",
		code = 95013,
	},
	["Install '{0}'"] = {
		category = "Message",
		code = 95014,
	},
	["Replace import with '{0}'."] = {
		category = "Message",
		code = 95015,
	},
	["Use synthetic 'default' member."] = {
		category = "Message",
		code = 95016,
	},
	["Convert to ES module"] = {
		category = "Message",
		code = 95017,
	},
	["Add 'undefined' type to property '{0}'"] = {
		category = "Message",
		code = 95018,
	},
	["Add initializer to property '{0}'"] = {
		category = "Message",
		code = 95019,
	},
	["Add definite assignment assertion to property '{0}'"] = {
		category = "Message",
		code = 95020,
	},
	["Convert all type literals to mapped type"] = {
		category = "Message",
		code = 95021,
	},
	["Add all missing members"] = {
		category = "Message",
		code = 95022,
	},
	["Infer all types from usage"] = {
		category = "Message",
		code = 95023,
	},
	["Delete all unused declarations"] = {
		category = "Message",
		code = 95024,
	},
	["Prefix all unused declarations with '_' where possible"] = {
		category = "Message",
		code = 95025,
	},
	["Fix all detected spelling errors"] = {
		category = "Message",
		code = 95026,
	},
	["Add initializers to all uninitialized properties"] = {
		category = "Message",
		code = 95027,
	},
	["Add definite assignment assertions to all uninitialized properties"] = {
		category = "Message",
		code = 95028,
	},
	["Add undefined type to all uninitialized properties"] = {
		category = "Message",
		code = 95029,
	},
	["Change all jsdoc-style types to TypeScript"] = {
		category = "Message",
		code = 95030,
	},
	["Change all jsdoc-style types to TypeScript (and add '| undefined' to nullable types)"] = {
		category = "Message",
		code = 95031,
	},
	["Implement all unimplemented interfaces"] = {
		category = "Message",
		code = 95032,
	},
	["Install all missing types packages"] = {
		category = "Message",
		code = 95033,
	},
	["Rewrite all as indexed access types"] = {
		category = "Message",
		code = 95034,
	},
	["Convert all to default imports"] = {
		category = "Message",
		code = 95035,
	},
	["Make all 'super()' calls the first statement in their constructor"] = {
		category = "Message",
		code = 95036,
	},
	["Add qualifier to all unresolved variables matching a member name"] = {
		category = "Message",
		code = 95037,
	},
	["Change all extended interfaces to 'implements'"] = {
		category = "Message",
		code = 95038,
	},
	["Add all missing super calls"] = {
		category = "Message",
		code = 95039,
	},
	["Implement all inherited abstract classes"] = {
		category = "Message",
		code = 95040,
	},
	["Add all missing 'async' modifiers"] = {
		category = "Message",
		code = 95041,
	},
	["Add '@ts-ignore' to all error messages"] = {
		category = "Message",
		code = 95042,
	},
	["Annotate everything with types from JSDoc"] = {
		category = "Message",
		code = 95043,
	},
	["Add '()' to all uncalled decorators"] = {
		category = "Message",
		code = 95044,
	},
	["Convert all constructor functions to classes"] = {
		category = "Message",
		code = 95045,
	},
	["Generate 'get' and 'set' accessors"] = {
		category = "Message",
		code = 95046,
	},
	["Convert 'require' to 'import'"] = {
		category = "Message",
		code = 95047,
	},
	["Convert all 'require' to 'import'"] = {
		category = "Message",
		code = 95048,
	},
	["Move to a new file"] = {
		category = "Message",
		code = 95049,
	},
	["Remove unreachable code"] = {
		category = "Message",
		code = 95050,
	},
	["Remove all unreachable code"] = {
		category = "Message",
		code = 95051,
	},
	["Add missing 'typeof'"] = {
		category = "Message",
		code = 95052,
	},
	["Remove unused label"] = {
		category = "Message",
		code = 95053,
	},
	["Remove all unused labels"] = {
		category = "Message",
		code = 95054,
	},
	["Convert '{0}' to mapped object type"] = {
		category = "Message",
		code = 95055,
	},
	["Convert namespace import to named imports"] = {
		category = "Message",
		code = 95056,
	},
	["Convert named imports to namespace import"] = {
		category = "Message",
		code = 95057,
	},
	["Add or remove braces in an arrow function"] = {
		category = "Message",
		code = 95058,
	},
	["Add braces to arrow function"] = {
		category = "Message",
		code = 95059,
	},
	["Remove braces from arrow function"] = {
		category = "Message",
		code = 95060,
	},
	["Convert default export to named export"] = {
		category = "Message",
		code = 95061,
	},
	["Convert named export to default export"] = {
		category = "Message",
		code = 95062,
	},
	["Add missing enum member '{0}'"] = {
		category = "Message",
		code = 95063,
	},
	["Add all missing imports"] = {
		category = "Message",
		code = 95064,
	},
	["Convert to async function"] = {
		category = "Message",
		code = 95065,
	},
	["Convert all to async functions"] = {
		category = "Message",
		code = 95066,
	},
	["Add missing call parentheses"] = {
		category = "Message",
		code = 95067,
	},
	["Add all missing call parentheses"] = {
		category = "Message",
		code = 95068,
	},
	["Add 'unknown' conversion for non-overlapping types"] = {
		category = "Message",
		code = 95069,
	},
	["Add 'unknown' to all conversions of non-overlapping types"] = {
		category = "Message",
		code = 95070,
	},
	["Add missing 'new' operator to call"] = {
		category = "Message",
		code = 95071,
	},
	["Add missing 'new' operator to all calls"] = {
		category = "Message",
		code = 95072,
	},
	["Add names to all parameters without names"] = {
		category = "Message",
		code = 95073,
	},
	["Enable the 'experimentalDecorators' option in your configuration file"] = {
		category = "Message",
		code = 95074,
	},
	["Convert parameters to destructured object"] = {
		category = "Message",
		code = 95075,
	},
	["Extract type"] = {
		category = "Message",
		code = 95077,
	},
	["Extract to type alias"] = {
		category = "Message",
		code = 95078,
	},
	["Extract to typedef"] = {
		category = "Message",
		code = 95079,
	},
	["Infer 'this' type of '{0}' from usage"] = {
		category = "Message",
		code = 95080,
	},
	["Add 'const' to unresolved variable"] = {
		category = "Message",
		code = 95081,
	},
	["Add 'const' to all unresolved variables"] = {
		category = "Message",
		code = 95082,
	},
	["Add 'await'"] = {
		category = "Message",
		code = 95083,
	},
	["Add 'await' to initializer for '{0}'"] = {
		category = "Message",
		code = 95084,
	},
	["Fix all expressions possibly missing 'await'"] = {
		category = "Message",
		code = 95085,
	},
	["Remove unnecessary 'await'"] = {
		category = "Message",
		code = 95086,
	},
	["Remove all unnecessary uses of 'await'"] = {
		category = "Message",
		code = 95087,
	},
	["Enable the '--jsx' flag in your configuration file"] = {
		category = "Message",
		code = 95088,
	},
	["Add 'await' to initializers"] = {
		category = "Message",
		code = 95089,
	},
	["Extract to interface"] = {
		category = "Message",
		code = 95090,
	},
	["Convert to a bigint numeric literal"] = {
		category = "Message",
		code = 95091,
	},
	["Convert all to bigint numeric literals"] = {
		category = "Message",
		code = 95092,
	},
	["Convert 'const' to 'let'"] = {
		category = "Message",
		code = 95093,
	},
	["Prefix with 'declare'"] = {
		category = "Message",
		code = 95094,
	},
	["Prefix all incorrect property declarations with 'declare'"] = {
		category = "Message",
		code = 95095,
	},
	["Convert to template string"] = {
		category = "Message",
		code = 95096,
	},
	["Add 'export {}' to make this file into a module"] = {
		category = "Message",
		code = 95097,
	},
	["Set the 'target' option in your configuration file to '{0}'"] = {
		category = "Message",
		code = 95098,
	},
	["Set the 'module' option in your configuration file to '{0}'"] = {
		category = "Message",
		code = 95099,
	},
	["Convert invalid character to its html entity code"] = {
		category = "Message",
		code = 95100,
	},
	["Convert all invalid characters to HTML entity code"] = {
		category = "Message",
		code = 95101,
	},
	["Convert function expression '{0}' to arrow function"] = {
		category = "Message",
		code = 95105,
	},
	["Convert function declaration '{0}' to arrow function"] = {
		category = "Message",
		code = 95106,
	},
	["Fix all implicit-'this' errors"] = {
		category = "Message",
		code = 95107,
	},
	["Wrap invalid character in an expression container"] = {
		category = "Message",
		code = 95108,
	},
	["Wrap all invalid characters in an expression container"] = {
		category = "Message",
		code = 95109,
	},
	["Visit https://aka.ms/tsconfig to read more about this file"] = {
		category = "Message",
		code = 95110,
	},
	["Add a return statement"] = {
		category = "Message",
		code = 95111,
	},
	["Remove braces from arrow function body"] = {
		category = "Message",
		code = 95112,
	},
	["Wrap the following body with parentheses which should be an object literal"] = {
		category = "Message",
		code = 95113,
	},
	["Add all missing return statement"] = {
		category = "Message",
		code = 95114,
	},
	["Remove braces from all arrow function bodies with relevant issues"] = {
		category = "Message",
		code = 95115,
	},
	["Wrap all object literal with parentheses"] = {
		category = "Message",
		code = 95116,
	},
	["Move labeled tuple element modifiers to labels"] = {
		category = "Message",
		code = 95117,
	},
	["Convert overload list to single signature"] = {
		category = "Message",
		code = 95118,
	},
	["Generate 'get' and 'set' accessors for all overriding properties"] = {
		category = "Message",
		code = 95119,
	},
	["Wrap in JSX fragment"] = {
		category = "Message",
		code = 95120,
	},
	["Wrap all unparented JSX in JSX fragment"] = {
		category = "Message",
		code = 95121,
	},
	["Convert arrow function or function expression"] = {
		category = "Message",
		code = 95122,
	},
	["Convert to anonymous function"] = {
		category = "Message",
		code = 95123,
	},
	["Convert to named function"] = {
		category = "Message",
		code = 95124,
	},
	["Convert to arrow function"] = {
		category = "Message",
		code = 95125,
	},
	["Remove parentheses"] = {
		category = "Message",
		code = 95126,
	},
	["Could not find a containing arrow function"] = {
		category = "Message",
		code = 95127,
	},
	["Containing function is not an arrow function"] = {
		category = "Message",
		code = 95128,
	},
	["Could not find export statement"] = {
		category = "Message",
		code = 95129,
	},
	["This file already has a default export"] = {
		category = "Message",
		code = 95130,
	},
	["Could not find import clause"] = {
		category = "Message",
		code = 95131,
	},
	["Could not find namespace import or named imports"] = {
		category = "Message",
		code = 95132,
	},
	["Selection is not a valid type node"] = {
		category = "Message",
		code = 95133,
	},
	["No type could be extracted from this type node"] = {
		category = "Message",
		code = 95134,
	},
	["Could not find property for which to generate accessor"] = {
		category = "Message",
		code = 95135,
	},
	["Name is not valid"] = {
		category = "Message",
		code = 95136,
	},
	["Can only convert property with modifier"] = {
		category = "Message",
		code = 95137,
	},
	["Switch each misused '{0}' to '{1}'"] = {
		category = "Message",
		code = 95138,
	},
	["Convert to optional chain expression"] = {
		category = "Message",
		code = 95139,
	},
	["Could not find convertible access expression"] = {
		category = "Message",
		code = 95140,
	},
	["Could not find matching access expressions"] = {
		category = "Message",
		code = 95141,
	},
	["Can only convert logical AND access chains"] = {
		category = "Message",
		code = 95142,
	},
	["Add 'void' to Promise resolved without a value"] = {
		category = "Message",
		code = 95143,
	},
	["Add 'void' to all Promises resolved without a value"] = {
		category = "Message",
		code = 95144,
	},
	["Use element access for '{0}'"] = {
		category = "Message",
		code = 95145,
	},
	["Use element access for all undeclared properties."] = {
		category = "Message",
		code = 95146,
	},
	["Delete all unused imports"] = {
		category = "Message",
		code = 95147,
	},
	["Infer function return type"] = {
		category = "Message",
		code = 95148,
	},
	["Return type must be inferred from a function"] = {
		category = "Message",
		code = 95149,
	},
	["Could not determine function return type"] = {
		category = "Message",
		code = 95150,
	},
	["Could not convert to arrow function"] = {
		category = "Message",
		code = 95151,
	},
	["Could not convert to named function"] = {
		category = "Message",
		code = 95152,
	},
	["Could not convert to anonymous function"] = {
		category = "Message",
		code = 95153,
	},
	["Can only convert string concatenation"] = {
		category = "Message",
		code = 95154,
	},
	["Selection is not a valid statement or statements"] = {
		category = "Message",
		code = 95155,
	},
	["Add missing function declaration '{0}'"] = {
		category = "Message",
		code = 95156,
	},
	["Add all missing function declarations"] = {
		category = "Message",
		code = 95157,
	},
	["Method not implemented."] = {
		category = "Message",
		code = 95158,
	},
	["Function not implemented."] = {
		category = "Message",
		code = 95159,
	},
	["Add 'override' modifier"] = {
		category = "Message",
		code = 95160,
	},
	["Remove 'override' modifier"] = {
		category = "Message",
		code = 95161,
	},
	["Add all missing 'override' modifiers"] = {
		category = "Message",
		code = 95162,
	},
	["Remove all unnecessary 'override' modifiers"] = {
		category = "Message",
		code = 95163,
	},
	["Can only convert named export"] = {
		category = "Message",
		code = 95164,
	},
	["Add missing properties"] = {
		category = "Message",
		code = 95165,
	},
	["Add all missing properties"] = {
		category = "Message",
		code = 95166,
	},
	["Add missing attributes"] = {
		category = "Message",
		code = 95167,
	},
	["Add all missing attributes"] = {
		category = "Message",
		code = 95168,
	},
	["Add 'undefined' to optional property type"] = {
		category = "Message",
		code = 95169,
	},
	["Convert named imports to default import"] = {
		category = "Message",
		code = 95170,
	},
	["Delete unused '@param' tag '{0}'"] = {
		category = "Message",
		code = 95171,
	},
	["Delete all unused '@param' tags"] = {
		category = "Message",
		code = 95172,
	},
	["Rename '@param' tag name '{0}' to '{1}'"] = {
		category = "Message",
		code = 95173,
	},
	["No value exists in scope for the shorthand property '{0}'. Either declare one or provide an initializer."] = {
		category = "Error",
		code = 18004,
	},
	["Classes may not have a field named 'constructor'."] = {
		category = "Error",
		code = 18006,
	},
	["JSX expressions may not use the comma operator. Did you mean to write an array?"] = {
		category = "Error",
		code = 18007,
	},
	["Private identifiers cannot be used as parameters."] = {
		category = "Error",
		code = 18009,
	},
	["An accessibility modifier cannot be used with a private identifier."] = {
		category = "Error",
		code = 18010,
	},
	["The operand of a 'delete' operator cannot be a private identifier."] = {
		category = "Error",
		code = 18011,
	},
	["'#constructor' is a reserved word."] = {
		category = "Error",
		code = 18012,
	},
	["Property '{0}' is not accessible outside class '{1}' because it has a private identifier."] = {
		category = "Error",
		code = 18013,
	},
	["The property '{0}' cannot be accessed on type '{1}' within this class because it is shadowed by another private identifier with the same spelling."] = {
		category = "Error",
		code = 18014,
	},
	["Property '{0}' in type '{1}' refers to a different member that cannot be accessed from within type '{2}'."] = {
		category = "Error",
		code = 18015,
	},
	["Private identifiers are not allowed outside class bodies."] = {
		category = "Error",
		code = 18016,
	},
	["The shadowing declaration of '{0}' is defined here"] = {
		category = "Error",
		code = 18017,
	},
	["The declaration of '{0}' that you probably intended to use is defined here"] = {
		category = "Error",
		code = 18018,
	},
	["'{0}' modifier cannot be used with a private identifier."] = {
		category = "Error",
		code = 18019,
	},
	["An enum member cannot be named with a private identifier."] = {
		category = "Error",
		code = 18024,
	},
	["'#!' can only be used at the start of a file."] = {
		category = "Error",
		code = 18026,
	},
	["Compiler reserves name '{0}' when emitting private identifier downlevel."] = {
		category = "Error",
		code = 18027,
	},
	["Private identifiers are only available when targeting ECMAScript 2015 and higher."] = {
		category = "Error",
		code = 18028,
	},
	["Private identifiers are not allowed in variable declarations."] = {
		category = "Error",
		code = 18029,
	},
	["An optional chain cannot contain private identifiers."] = {
		category = "Error",
		code = 18030,
	},
	["The intersection '{0}' was reduced to 'never' because property '{1}' has conflicting types in some constituents."] = {
		category = "Error",
		code = 18031,
	},
	["The intersection '{0}' was reduced to 'never' because property '{1}' exists in multiple constituents and is private in some."] = {
		category = "Error",
		code = 18032,
	},
	["Only numeric enums can have computed members, but this expression has type '{0}'. If you do not need exhaustiveness checks, consider using an object literal instead."] = {
		category = "Error",
		code = 18033,
	},
	["Specify the JSX fragment factory function to use when targeting 'react' JSX emit with 'jsxFactory' compiler option is specified, e.g. 'Fragment'."] = {
		category = "Message",
		code = 18034,
	},
	["Invalid value for 'jsxFragmentFactory'. '{0}' is not a valid identifier or qualified-name."] = {
		category = "Error",
		code = 18035,
	},
	["Class decorators can't be used with static private identifier. Consider removing the experimental decorator."] = {
		category = "Error",
		code = 18036,
	},
	["Await expression cannot be used inside a class static block."] = {
		category = "Error",
		code = 18037,
	},
	["'For await' loops cannot be used inside a class static block."] = {
		category = "Error",
		code = 18038,
	},
	["Invalid use of '{0}'. It cannot be used inside a class static block."] = {
		category = "Error",
		code = 18039,
	},
	["A 'return' statement cannot be used inside a class static block."] = {
		category = "Error",
		code = 18041,
	},
}

return error_db
