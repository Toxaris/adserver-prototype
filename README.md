# adserver-prototype

[![Build Status](https://travis-ci.org/Toxaris/adserver-prototype.svg?branch=master)](https://travis-ci.org/Toxaris/adserver-prototype)

Prototype of an adserver that chooses ads based on campaign
constraints. The prototype focuses on the ad selection process.

## How to read the source

If your favorite editor is not set up for Haskell, consider
generating the documentation, which will also create syntax
highlighted source code where identifiers are links to their
definitions. See below for how to generate and find the
documentation.

If you want to navigate to the source files on the file system,
here are the interesting parts of the project layout:

 - The `src/lib/AdServer/*.hs` files contain the implementation.

 - The `src/lib/AdServer/Server.hs` file contains the `main`
   function, the entry point for the server.

 - The `src/test/AdServer/*/Test.hs` files contain unit test.

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

## How to generate and view documentation

The source code has documentation comments for all top-level
entities. Use haddock (the Haskell documentation tool) to
generate the documentation as follows:

  * Run `stack haddock` in the top-level directory of the repository.

    The first documentation run can take some time because stack
    will generate documentation for all (transitive)
    dependencies. Later runs will be faster.

  * At the end of the output, `stack haddock` will print the
    locations of three html files:

        Updating Haddock index for local packages in
        .../.stack-work/install/.../doc/index.html
        Updating Haddock index for local packages and dependencies in
        .../.stack-work/install/.../doc/all/index.html
        Updating Haddock index for snapshot packages in
        .../snapshots/.../doc/index.html

    The first HTML file contains links to the documentation for
    all modules in my application. The second file contains the
    same links, and also links to the modules in all transitive
    dependencies.

  * In Haddock documentation, all types are hyperlinked. So if
    you follow links, you'll move from the documentation of my
    code to the dependencies or the standard library. My code are
    the modules in the `AdServer.*` hierarchy.

  * In Haddock documentation, documentation entries have a link
    "Source" at the right-hand side of the gray bar. It leads to
    syntax-highlighted source code where all identifiers are
    links to their definitions. If your editor is not configured
    for Haskell, that might be the easiest way to read the
    code.
