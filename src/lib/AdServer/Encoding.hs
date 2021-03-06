-- adserver prototype.
-- Copyright 2016 Tillmann Rendel.
-- All Rights Reservered.

-- | Helpers for json and yaml encoding.
module AdServer.Encoding where

import Data.Aeson.TH
import Data.Char
import Data.List
import Data.List.Split

-- | Split a string at uppercase letters.
unCamelCase :: String -> [String]
unCamelCase = map (map toLower) . split splitter where
  splitter = dropFinalBlank $ dropInitBlank $ keepDelimsL $ whenElt isUpper

-- | Join a list of strings with dashes.
kebabCase :: [String] -> String
kebabCase = concat . intersperse "-"

-- | Options for encoding Haskell data types as JSON or yaml
jsonOptions = Options
  { fieldLabelModifier = kebabCase . drop 1 . unCamelCase
  , constructorTagModifier = kebabCase . unCamelCase
  , allNullaryToStringTag = True
  , omitNothingFields = True
  , sumEncoding = ObjectWithSingleField
  , unwrapUnaryRecords = True
  }
