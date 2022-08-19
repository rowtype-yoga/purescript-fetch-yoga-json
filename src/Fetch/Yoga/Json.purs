module Fetch.Yoga.Json
  ( fromJSON
  )
  where

import Prelude

import Control.Monad.Error.Class (throwError)
import Data.Either (either)
import Data.List.NonEmpty (NonEmptyList, fold1)
import Effect.Aff (Aff)
import Effect.Exception (Error, error)
import Foreign (Foreign, ForeignError, renderForeignError)
import Yoga.JSON as Yoga

fromJSON :: forall json. Yoga.ReadForeign json ⇒ Aff Foreign -> Aff json
fromJSON json = json >>= Yoga.read >>> either (toError >>> throwError) pure
  where
  toError :: NonEmptyList ForeignError -> Error
  toError = map renderForeignError >>> fold1 >>> error
