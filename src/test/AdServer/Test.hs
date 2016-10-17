-- adserver prototype.
-- Copyright 2016 Tillmann Rendel.
-- All Rights Reservered.

-- | Unit tests for adserver prototype.
module AdServer.Test where

import qualified AdServer.Encoding.Test as Encoding
import qualified AdServer.Identifier.Test as Identifier

import Test.Tasty

-- | Entrypoint for running all unit tests.
main :: IO ()
main = defaultMain tests

-- | All unit tests.
tests :: TestTree
tests = testGroup "AdServer"
  [ Encoding.tests
  , Identifier.tests
  ]
