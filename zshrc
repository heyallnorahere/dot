#!/bin/zsh

SCRIPT=$(realpath $0)
SCRIPT_DIR=$(realpath $(dirname $SCRIPT))

if [[ $- == *i* ]]; then
    fastfetch --logo-type kitty-icat
fi
