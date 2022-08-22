{ name = "fetch-yoga-json"
, dependencies =
  [ "aff"
  , "either"
  , "exceptions"
  , "foldable-traversable"
  , "foreign"
  , "lists"
  , "prelude"
  , "transformers"
  , "yoga-json"
  ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs" ]
, license = "MIT"
, repository = "https://github.com/rowtype-yoga/purescript-fetch-yoga-json.git"
}
