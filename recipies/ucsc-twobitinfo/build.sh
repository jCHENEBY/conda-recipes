#!/bin/bash
mkdir -p "$PREFIX/bin"
export BINDIR=$(pwd)/bin
export L="${LDFLAGS}"
export MACOSX_DEPLOYMENT_TARGET=11.1
mkdir -p "$BINDIR"
(cd kent/src/lib && make)
(cd kent/src/htslib && make)
(cd kent/src/jkOwnLib && make)
(cd kent/src/utils/twoBitInfo && make)
cp bin/twoBitInfo "$PREFIX/bin"
chmod +x "$PREFIX/bin/twoBitInfo"
