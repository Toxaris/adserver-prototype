-- adserver prototype.
-- Copyright 2016 Tillmann Rendel.
-- All Rights Reservered.

{-# LANGUAGE DataKinds, TypeOperators #-}

-- | Description of available endpoints of the HTTP API.
module AdServer.API where

import AdServer.Identifier

import Data.Proxy
import Data.Text

import Servant.API

-- | API for requesting ads.
type API
  = "ads" :>
    Capture "identifier" Identifier :>
    Get '[JSON] Identifier

-- | Value-level proxy for 'API'.
api :: Proxy API
api = Proxy
