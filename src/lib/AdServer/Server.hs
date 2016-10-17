-- adserver prototype.
-- Copyright 2016 Tillmann Rendel.
-- All Rights Reservered.

-- | Serving the API endpoints
module AdServer.Server where

import AdServer.API
import AdServer.Identifier

import Network.Wai.Handler.Warp

import Servant

import System.IO (hSetBuffering, BufferMode (LineBuffering), stdout)

import Text.Printf

-- | Handler for @\/ads\//:identifier/@.
handleExplicitAd identifier = do
  -- serve ad
  return identifier

-- | Entry point for server.
main :: IO ()
main = do
  hSetBuffering stdout LineBuffering
  printf "Starting adserver-prototype.\n"

  -- listen for connections
  let port = 8081
  let settings =
        setPort port $
        setBeforeMainLoop (printf "Listening on port %d.\n" port) $
        defaultSettings
  runSettings settings $ serve api $
    handleExplicitAd
