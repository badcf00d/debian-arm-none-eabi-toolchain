#!/bin/bash

set -e

cd gcc/gcc-13.2.0
make -f debian/rules upstream-src
debuild

cd -

cd newlib/newlib-4.3.0
make -f debian/rules upstream-src
debuild

