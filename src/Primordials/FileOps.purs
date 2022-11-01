module Primordials.Node.FileOps where

import Prelude

import Effect (Effect)
import Node.Encoding as Encoding
import Node.FS.Sync as S
import Node.Path as Path

foreign import replaceInFile :: forall a. a -> Effect Unit

foreign import copySync :: String -> String -> Effect Unit

mkPath :: Array Path.FilePath -> Path.FilePath
mkPath = Path.concat

writeTextFileSync :: String -> String -> Effect Unit
writeTextFileSync = S.writeTextFile Encoding.UTF8

readTextFileSync :: String -> Effect String
readTextFileSync = S.readTextFile Encoding.UTF8
