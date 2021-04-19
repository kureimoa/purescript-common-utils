module Genops.Node.Process where

import Prelude
import Data.Array (drop, (!!))
import Data.Maybe (Maybe)
import Node.Args as Args

args :: Array String
args = drop 2 $ Args.argv

argv :: Array String
argv = Args.argv

atPosition :: Int -> Maybe String
atPosition pos = args !! pos
