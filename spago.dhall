{ name = "common-utils"
, dependencies =
  [ "arrays"
  , "easy-ffi"
  , "effect"
  , "lists"
  , "node-buffer"
  , "node-fs"
  , "node-path"
  , "node-process"
  , "prelude"
  ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs" ]
}
