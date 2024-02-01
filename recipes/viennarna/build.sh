#!/bin/bash

## Configure and make
./configure --prefix=$PREFIX \
            --disable-openmp \
            CXXFLAGS="-std=c++14" \
            --with-kinwalker \
            --with-cluster


## Install
make install

#cp $PREFIX/lib/libmpfr.6.dylib $PREFIX/bin/../lib/



