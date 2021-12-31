let upstream =
      https://github.com/purescript/package-sets/releases/download/psc-0.14.1-20210419/packages.dhall sha256:d9a082ffb5c0fabf689574f0680e901ca6f924e01acdbece5eeedd951731375a

in upstream
with common-utils = { dependencies = [
  "arrays",
  "easy-ffi",
  "effect",
  "lists",
  "node-buffer",
  "node-fs",
  "node-path",
  "node-process",
  "prelude"
], repo = "https://github.com/kureimoa/purescript-common-utils.git", version = "453a8c3da25d9deaba6c4ea15b65ac6c68250615" }
