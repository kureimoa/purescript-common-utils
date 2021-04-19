module CommonUtils.Node.FileOps where

import Prelude

import Data.Foreign.EasyFFI (unsafeForeignFunction)
import Effect (Effect)
import Node.Encoding as Encoding
import Node.FS.Sync as S
import Node.Path as Path

replace :: forall a. a -> Effect Unit
replace = unsafeForeignFunction ["options", ""] "require('replace-in-file').sync(options)"

copyDir :: String -> String -> Effect Unit
copyDir = unsafeForeignFunction ["from", "to", ""] "require('fs-extra').copySync(from, to)"

mkPath :: Array Path.FilePath -> Path.FilePath
mkPath = Path.concat

writeTextFileSync :: String -> String -> Effect Unit
writeTextFileSync = S.writeTextFile Encoding.UTF8

readTextFileSync :: String -> Effect String
readTextFileSync = S.readTextFile Encoding.UTF8
