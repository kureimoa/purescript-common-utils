# Primordial 🐍

> My Purescript Prelude

## Installation

```sh
$ pnpm i ssh://git@github.com:rajatsharma/primordials.git
$ npx primordial-link
```

## Usage

### Handlebars

- Compile handlebars:


```haskell
import CommonUtils.Handlebars (mkCompilerWithVariables)

comileHandlebarsTemplate :: Effect String
comileHandlebarsTemplate = do
  pure mkCompilerWithVariables { name: "World" } "Hello, {{name}}!" -- "Hello, World"
```

### File Operations

- Create File path:

```haskell
import CommonUtils.Node.FileOps (mkPath)

mainDirPath :: Path.FilePath
mainDirPath = mkPath [ "src", "main", "scala" ]
```

- Copy directory with contents:

```haskell
import CommonUtils.Node.FileOps (copyDir)

copyDirectoryWithContents :: Effect Unit
copyDirectoryWithContents = copyDir (mkPath [ "src" ]) (mkPath [ "test" ])
```

- Replace text in file:

```haskell
import CommonUtils.Node.FileOps (copyDir)

replaceInFile :: Effect Unit
replaceInFile = replace { files: "src/index.js", from: ";", to: "" }
```

## License

[![GPL-3.0](https://img.shields.io/badge/-GPL3-black?style=flat-square)](/COPYING)
