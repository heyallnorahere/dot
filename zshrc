#!/bin/zsh

SCRIPT=$(realpath $0)
SCRIPT_DIR=$(realpath $(dirname $SCRIPT))

echo $SCRIPT_DIR
