module Fetch.Yoga.Json
  ( fromJSON
  )
  where

import Prelude

import Control.Monad.Error.Class (throwError)
import Data.Either (either)
import Data.List.NonEmpty (NonEmptyList)
import Data.Semigroup.Foldable (intercalateMap)
import Effect.Aff (Aff)
import Effect.Exception (Error, error)
import Foreign (Foreign, ForeignError)
import Yoga.JSON as Yoga
import Yoga.JSON.Error (renderHumanError)

fromJSON :: forall json. Yoga.ReadForeign json ⇒ Aff Foreign -> Aff json
fromJSON json = json >>= Yoga.read >>> either (toError >>> throwError) pure
  where
  toError :: NonEmptyList ForeignError -> Error
  toError = intercalateMap "\n" renderHumanError >>> error
