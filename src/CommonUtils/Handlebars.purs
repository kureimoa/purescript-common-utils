module CommonUtils.Handlebars where

import Data.Foreign.EasyFFI (unsafeForeignFunction)

compile :: forall a. String -> a -> String
compile = unsafeForeignFunction ["source", "context"] "require('handlebars').compile(source)(context)"
