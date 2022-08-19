{ name = "iso-fetch-yoga-json"
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
}
