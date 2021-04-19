{-
Welcome to a Spago project!
You can edit this file as you like.
-}
{ name = "genops"
, dependencies = [ "effect", "handlebars", "node-args", "node-fs", "prelude" ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs" ]
}
