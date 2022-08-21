{ name = "fetch-yoga-json"
, dependencies =
  [ "aff"
  , "either"
  , "exceptions"
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
