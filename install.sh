#!/usr/bin/env sh
hash=`git ls-remote https://github.com/rajatsharma/primordials.git | grep refs/heads/master | cut -f 1`
deps=`dhall-to-json <<< "let contents = ./node_modules/primordials/spago.dhall in contents.dependencies"`
package='with primordials = {
  dependencies = dependencies-array,
  repo = "https://github.com/rajatsharma/primordials.git",
  version = "version-hash"
}'
base=`basename "$PWD"`

if [ "$base" != "primordials" ]
then
  echo $package | perl -pE "s/dependencies-array/$deps/;s/version-hash/$hash/;" >> $PWD/packages.dhall
  spago install primordials
fi
