module CommonUtils.Node.Process where

import Data.Array (drop)
import Data.List (List, fromFoldable)
import Effect
import Effect.Class (liftEffect)
import Node.Process (argv)
import Prelude ((<$>))

args :: Effect (Array String)
args = drop 2 <$> argv

argsList :: Effect (List String)
argsList = fromFoldable <$> liftEffect args
