module Test.Main where

import Prelude

import Effect (Effect)
import Effect.Aff (launchAff_)
import Effect.Class.Console (log)

main :: Effect Unit
main = launchAff_ do
  log "You should add some tests."
