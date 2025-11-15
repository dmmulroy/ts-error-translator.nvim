/**
 * Module Import Errors
 *
 * Module resolution, imports, exports, and UMD globals.
 * ~8% of all TypeScript errors.
 *
 * Requires companion files in fixtures/modules/
 */

// ============================================================================
// TS2307: Cannot find module
// ============================================================================

// Module doesn't exist on filesystem
import { Foo } from "./non-existent-module";

// Package not installed
import * as React from "react-not-installed";

// Wrong path
import { User } from "../wrong/path/to/module";

// Missing file extension in some configurations
import { Config } from "./modules/config";  // If .ts required

// ============================================================================
// TS2305: Module has no exported member
// ============================================================================

// Importing non-existent export from valid module
import { nonExistent } from "./modules/valid-module";

// Wrong named import
import { WrongName } from "./modules/named-exports";

// Trying to use named import on default export
import { default as Foo } from "./modules/default-export";  // Use default import

// ============================================================================
// TS2614: Module has no exported member (with suggestion)
// ============================================================================

// Typo in import
import { Componet } from "./modules/valid-module";  // Did you mean 'Component'?

// Case sensitivity
import { username } from "./modules/named-exports";  // Did you mean 'userName'?

// ============================================================================
// TS2686: UMD global refers to a value in module context
// ============================================================================

// Assuming React is available as UMD global but file is a module
// (Having any import/export makes this a module)
export {};  // Makes this a module

// React available as global but should be imported
const element = React.createElement("div");  // Should: import React from 'react'

// jQuery as global
const el = jQuery("#app");  // Should: import jQuery from 'jquery'

// Lodash as global
const arr = _.map([1, 2, 3], x => x * 2);  // Should: import _ from 'lodash'

// ============================================================================
// TS6142: Module was resolved but jsx not set
// ============================================================================

// This requires actual .jsx or .tsx files
// Simulated here but would need real file:

// import Component from "./component.jsx";  // jsx flag not set in tsconfig
