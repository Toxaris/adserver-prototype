-- adserver prototype.
-- Copyright 2016 Tillmann Rendel.
-- All Rights Reservered.

-- | Tests for "AdServer.Identifier" module.
module AdServer.Identifier.Test where

import AdServer.Identifier

import Data.Aeson
import Data.Text

import Test.Tasty
import Test.Tasty.HUnit

tests :: TestTree
tests =
  testGroup "Identifier"
  [ testGroup "toJSON" $
    [ testCase "- converts identifiers to string scalars" $ do
        String (pack "foo") @=? toJSON (MakeIdentifier (pack "foo"))
        String (pack "bar") @=? toJSON (MakeIdentifier (pack "bar"))
    ]
  , testGroup "fromJSON" $
    [ testCase "- converts string scalars to identifiers" $ do
        String (pack "foo") @=? toJSON (MakeIdentifier (pack "foo"))
        String (pack "bar") @=? toJSON (MakeIdentifier (pack "bar"))
    ]
  ]

