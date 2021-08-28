#!/usr/bin/env bash

set -ex

mkdir build
cd build

cmake \
    -DRIPC_BUILD_TESTING=OFF \
    -DCMAKE_INSTALL_PREFIX=$PREFIX \
    -DCMAKE_BUILD_TYPE=RelWithDebInfo \
    ..

make
make install
