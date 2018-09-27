cakeml - Compile CakeML programs
================================

[![CakeML](badge.png)](https://cakeml.org/)
[![Build Status](https://travis-ci.org/larsrh/cakeml-component.svg?branch=master)](https://travis-ci.org/larsrh/cakeml-component)
[![AFP](https://img.shields.io/badge/AFP-CakeML-yellow.svg)](https://devel.isa-afp.org/entries/CakeML.html)

This repository is an Isabelle component that is supposed to work together with the [CakeML AFP entry](https://devel.isa-afp.org/entries/CakeML.html).
It provides a `Makefile` to build the bootstrapped [CakeML](https://cakeml.org/) compiler from the official [release](https://github.com/CakeML/cakeml/releases).
The `etc/settings` file is used to tell Isabelle about the location of the compiler.

Installation
------------

1. Obtain a recent development version of Isabelle.
2. Enable `$ISABELLE_HOME/Admin/components/cakeml` as component list in `~/.isabelle/etc/settings`.
3. Set the `ISABELLE_CC` variable to `gcc` or `clang`.
4. Obtain a recent development version of AFP.
5. Import the theory `CakeML.CakeML_Compiler`.

Examples
--------

See the [test theory](https://devel.isa-afp.org/browser_info/current/AFP/CakeML/Compiler_Test.html).

Packaging
---------

1. Make sure the compiler works as expected by running `make clean test`.
2. Build the compiler on Linux and macOS and copy the resulting binaries to the respective folder in `bin/`.
3. `git tag` a release.
4. Run `isabelle env ./package.sh`.
5. Upload the resulting `.tar.gz` to the [component repository](https://isabelle.in.tum.de/components/).

Sources
-------

This README is part of the repository [larsrh/cakeml-component](https://github.com/larsrh/cakeml-component).
