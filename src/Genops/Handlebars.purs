module Genops.Handlebars where

import Text.Handlebars (compile)

mkCompilerWithVariables :: forall a. a -> String -> String
mkCompilerWithVariables variables template = compile template variables
