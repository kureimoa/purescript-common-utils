# Puresciprt Genops

> Purescript module with utility functions for code generation

## Installation

Add this to your `packages.dhall`

```dhall
let upstream = ...
in upstream with genops = {
  dependencies = [ "effect", "handlebars", "node-args", "node-fs", "prelude" ],
  repo = "https://github.com/rajatsharma/purescript-genops.git",
  version = <<latest commit hash>>
}
```

Run

```sh
$ spago install genops
$ yarn add handlebars fs-extra replace-in-file pluralize snake-case pascal-case constant-case
```

## Usage

### Handlebars

- Compile handlebars:


```haskell
import Genops.Handlebars (mkCompilerWithVariables)

comileHandlebarsTemplate :: Effect String
comileHandlebarsTemplate = do
  pure mkCompilerWithVariables { name: "World" } "Hello, {{name}}!" -- "Hello, World"
```

### File Operations

- Create File path:

```haskell
import Genops.Node.FileOps (mkPath)

mainDirPath :: Path.FilePath
mainDirPath = mkPath [ "src", "main", "scala" ]
```

- Copy directory with contents:

```haskell
import Genops.Node.FileOps (copyDir)

copyDirectoryWithContents :: Effect Unit
copyDirectoryWithContents = copyDir (mkPath [ "src" ]) (mkPath [ "test" ])
```

- Replace text in file:

```haskell
import Genops.Node.FileOps (copyDir)

replaceInFile :: Effect Unit
replaceInFile = replace { files: "src/index.js", from: ";", to: "" }
```

## License

[![GPL-3.0](https://img.shields.io/badge/-GPL3-black?style=flat-square)](/COPYING)
