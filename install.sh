#!/usr/bin/env sh
hash=`git ls-remote https://github.com/kureimoa/purescript-common-utils.git | grep refs/heads/master | cut -f 1`
deps=`dhall-to-json <<< "let contents = ./spago.dhall in contents.dependencies"`
package='with common-utils = {
  dependencies = dependencies-array,
  repo = "https://github.com/kureimoa/purescript-common-utils.git",
  version = "version-hash"
}'
base=`basename "$PWD"`

if [ "$base" != "purescript-common-utils" ]
then
  echo $package | perl -pE "s/dependencies-array/$deps/;s/version-hash/$hash/;" >> $PWD/packages.dhall
  spago install common-utils
fi
