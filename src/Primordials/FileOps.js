import { sync } from "replace-in-file";
import { copySync } from "fs-extra";

export const replaceInFile = (options) => sync(options);
export const copySync = (from) => (to) => copySync(from, to);
