-- adserver prototype.
-- Copyright 2016 Tillmann Rendel.
-- All Rights Reservered.

{-# LANGUAGE GeneralizedNewtypeDeriving, TemplateHaskell #-}

-- | Representation of ad identifiers.
module AdServer.Identifier where

import AdServer.Encoding

import Data.Text (Text)

import Data.Aeson.TH

import Web.HttpApiData (FromHttpApiData (..))

-- | Ad identifier.
newtype Identifier = MakeIdentifier Text
  deriving (Eq, Show, FromHttpApiData)

deriveJSON jsonOptions ''Identifier
