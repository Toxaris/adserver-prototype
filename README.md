# adserver-prototype

[![Build Status](https://travis-ci.org/Toxaris/adserver-prototype.svg?branch=master)](https://travis-ci.org/Toxaris/adserver-prototype)

Prototype of an adserver that chooses ads based on campaign
constraints. The prototype focuses on the ad selection process.

## How to build

  * Install https://www.haskellstack.org
  * Clone repository
  * Run `stack build` in the top-level directory of the repository
    (where the `stack.yml` configuration file is)
  * If stack tells you to run `stack setup`, do so to install the
    Haskell toolchain.

The first build can take some time because stack will download
and compile all (transitive) dependencies. Later builds will be
faster.

## How to run automated tests

  * Run `stack test` in the top-level directory of the repository.

    The first run will download and build the (transitive)
    dependencies of the test-suite, so it can take some more
    time. Later test runs will be faster.
