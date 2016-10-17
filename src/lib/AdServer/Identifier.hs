-- adserver prototype.
-- Copyright 2016 Tillmann Rendel.
-- All Rights Reservered.

-- | Representation of ad identifiers.
module AdServer.Identifier where

import Data.Text (Text)

-- | Ad identifier.
newtype Identifier = MakeIdentifier Text
  deriving (Eq, Show)
