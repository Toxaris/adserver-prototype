-- adserver prototype.
-- Copyright 2016 Tillmann Rendel.
-- All Rights Reservered.

-- | Tests for "AdServer.Encoding" module.
module AdServer.Encoding.Test where

import AdServer.Encoding

import Test.Tasty
import Test.Tasty.HUnit

tests :: TestTree
tests =
  testGroup "Encoding"
  [ testGroup "unCamelCase" $
    [ testCase "- leaves lowercase-only identifiers intact" $ do
        ["foo"] @=? unCamelCase "foo"
        ["bar"] @=? unCamelCase "bar"
        ["foo-bar"] @=? unCamelCase "foo-bar"
    , testCase "- splits camel-case identifiers" $ do
        ["foo", "bar"] @=? unCamelCase "fooBar"
        ["foo", "bar", "baz"] @=? unCamelCase "fooBarBaz"
    , testCase "- converts a leading uppercase letter to lower case" $ do
        ["foo"] @=? unCamelCase "Foo"
        ["bar"] @=? unCamelCase "Bar"
        ["foo", "bar"] @=? unCamelCase "FooBar"
    , testCase "- treats consecutive uppercase letters as separate words" $ do
        ["f", "fo"] @=? unCamelCase "FFo"
        ["b", "a", "r"] @=? unCamelCase "bAR"
        ["b", "a", "r"] @=? unCamelCase "BAR"
    ]
  , testGroup "kebabCase" $
    [ testCase "- leaves singleton list elements intact" $ do
        "foo" @=? kebabCase ["foo"]
        "bar" @=? kebabCase ["bar"]
        "baz" @=? kebabCase ["baz"]
    , testCase "- joins list elements by dashes" $ do
        "foo-bar" @=? kebabCase ["foo", "bar"]
        "foo-bar-baz" @=? kebabCase ["foo", "bar", "baz"]
    ]
  ]
