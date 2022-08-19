module Fetch.Yoga.Json where

import Prelude

import Control.Monad.Error.Class (throwError)
import Data.Either (either)
import Data.List.NonEmpty (NonEmptyList, fold1)
import Effect.Aff (Aff)
import Effect.Exception (Error, error)
import Foreign (Foreign, ForeignError, renderForeignError)
import Yoga.JSON as Yoga

fromJson :: forall json. Yoga.ReadForeign json ⇒ Aff Foreign -> Aff json
fromJson json = json >>= Yoga.read >>> either (toError >>> throwError) pure
  where
  toError :: NonEmptyList ForeignError -> Error
  toError = map renderForeignError >>> fold1 >>> error
