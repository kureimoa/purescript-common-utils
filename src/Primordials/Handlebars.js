import { compile as handlebarsCompile } from "handlebars";

export const compile = (source) => (context) => handlebarsCompile(source)(context)
