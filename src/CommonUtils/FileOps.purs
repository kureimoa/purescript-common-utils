module CommonUtils.Node.FileOps where

import Prelude
import Node.FS.Sync as S
import Node.Path as Path
import Node.Encoding as Encoding
import Effect (Effect)

foreign import replace :: forall a. a -> Effect Unit
foreign import copyDir :: String -> String -> Effect Unit

mkPath :: Array Path.FilePath -> Path.FilePath
mkPath = Path.concat

writeTextFileSync :: String -> String -> Effect Unit
writeTextFileSync = S.writeTextFile Encoding.UTF8

readTextFileSync :: String -> Effect String
readTextFileSync = S.readTextFile Encoding.UTF8
