{ name = "common-utils"
, dependencies =
  [ "arrays"
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
