#!/bin/bash
set -x
set -e
set -o pipefail

: ${CVC4_SRC_DIR?"CVC4_SRC_DIR must be specified"}
: ${CVC4_BUILD_DIR?"CVC4_BUILD_DIR must be specified"}

cd "${CVC4_SRC_DIR}"

# Set up antlr
contrib/get-antlr-3.4
# Set up abc
contrib/get-abc
# Setup symfpu
contrib/get-symfpu



mkdir -p "${CVC4_BUILD_DIR}"
cd "${CVC4_BUILD_DIR}"

# glpk is too much hassle to set up, the contrib script is broken

../cvc4-1.6/configure \
 --best \
 --enable-optimized \
 --prefix=/usr \
  --enable-gpl \
 --with-abc \
 --without-glpk \
 --without-readline \
 --with-symfpu

make -j$(nproc)
# Install to avoid the libtool crap!
sudo make install
