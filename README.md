# adserver-prototype

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
and compile all dependencies. Later builds will be faster.

## How to run automated tests

  * Run `stack test` in the top-level directory of the repository.
