#!/bin/bash
mkdir -p "$PREFIX/bin"
export BINDIR=$(pwd)/bin
export L="${LDFLAGS}"
export MACOSX_DEPLOYMENT_TARGET=11.1
mkdir -p "$BINDIR"
(cd kent/src/lib && make)
(cd kent/src/htslib && make)
(cd kent/src/jkOwnLib && make)
(cd kent/src/gfServer && make)
(cd kent/src/gfClient && make)
(cd kent/src/blat && make)
(cd kent/src/utils/faToNib && make)
cp bin/blat "$PREFIX/bin"
chmod +x "$PREFIX/bin/blat"
