module CommonUtils.Inflections where

import Data.Foreign.EasyFFI (unsafeForeignFunction)

plural :: String -> String
plural = unsafeForeignFunction ["word"] "require('pluralize')(word)"

snakeCase :: String -> String
snakeCase = unsafeForeignFunction ["word"] "require('snake-case').snakeCase(word)"

pascalCase :: String -> String
pascalCase = unsafeForeignFunction ["word"] "require('pascal-case').pascalCase(word)"

constantCase :: String -> String
constantCase = unsafeForeignFunction ["word"] "require('constant-case').constantCase(word)"
