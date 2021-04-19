{-
Welcome to a Spago project!
You can edit this file as you like.
-}
{ name = "common-utils"
, dependencies = [ "easy-ffi", "effect", "node-fs", "node-process", "prelude" ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs" ]
}
