#!/bin/bash

CMATRIX_DIR="$HOME/src/cmatrix"
echo "cmatrix source directory: $CMATRIX_DIR"

if [[ -d $CMATRIX_DIR ]]; then
    cd $CMATRIX_DIR
    git checkout master
    git pull
else
    git clone https://github.com/abishekvashok/cmatrix.git $CMATRIX_DIR
fi

BUILD_DIR="$CMATRIX_DIR/build"
if ! cmake $CMATRIX_DIR -B $BUILD_DIR; then
    exit 1
fi

if ! cmake --build $BUILD_DIR -j 8; then
    exit 1
fi

$BUILD_DIR/cmatrix -C red
