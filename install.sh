hash=`git ls-remote https://github.com/kureimoa/purescript-common-utils.git | grep refs/heads/master | cut -f 1`
package='with common-utils = {
  dependencies = [ "arrays"
  , "easy-ffi"
  , "effect"
  , "lists"
  , "node-buffer"
  , "node-fs"
  , "node-path"
  , "node-process"
  , "prelude"
  ],
  repo = "https://github.com/kureimoa/purescript-common-utils.git",
  version = version-hash
}'
base=`basename "$PWD"`

if [ "$base" != "purescript-common-utils" ]
then
  echo "${package/version-hash/"$hash"}" >> ./packages.dhall
  spago install common-utils
fi
