
let upstream =
      https://github.com/purescript/package-sets/releases/download/psc-0.15.4-20220808/packages.dhall
        sha256:60eee64b04ca0013fae3e02a69fc3b176105c6baa2f31865c67cd5f881a412fd

in  upstream
  with yoga-json.version = "v3.0.2"
  with yoga-json.dependencies =
    [
      "arrays",
      "bifunctors",
      "bigints",
      "control",
      "effect",
      "either",
      "exceptions",
      "foldable-traversable",
      "foreign",
      "foreign-object",
      "identity",
      "js-date",
      "lists",
      "maybe",
      "nullable",
      "partial",
      "prelude",
      "record",
      "transformers",
      "typelevel-prelude",
      "variant"
    ]

