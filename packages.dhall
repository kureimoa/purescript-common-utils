let upstream =
      https://github.com/purescript/package-sets/releases/download/psc-0.14.1-20210419/packages.dhall sha256:d9a082ffb5c0fabf689574f0680e901ca6f924e01acdbece5eeedd951731375a

in upstream

with handlebars = {
  dependencies = [] : List Text,
  repo = "https://github.com/rajatsharma/purescript-handlebars",
  version = "4a723ec91f761610463f79c446570bdab03977af"
}

with node-args = {
  dependencies = [ "lists" ],
  repo = "https://github.com/rajatsharma/purescript-node-args.git",
  version = "9cbe6b96595134b5971928975a63f3d2d746aae0"
}
