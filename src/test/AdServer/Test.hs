-- adserver prototype.
-- Copyright 2016 Tillmann Rendel.
-- All Rights Reservered.

-- | Unit tests for adserver prototype.
module AdServer.Test where

import Test.Tasty

-- | Entrypoint for running all unit tests.
main :: IO ()
main = defaultMain tests

-- | All unit tests.
tests :: TestTree
tests = testGroup "adserver-prototype" []