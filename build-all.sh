#!/bin/bash

set -e

cd newlib/newlib-4.3.0
make -f debian/rules upstream-src
debuild --no-lintian

cd -

cd gcc/gcc-13.2.0
make -f debian/rules upstream-src
debuild --no-lintian


echo "All done :)"
