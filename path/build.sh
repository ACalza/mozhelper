#!/bin/bash
export MOZCONFIG=$(cat ~/.config/moz_config)
cd $(dirname ${MOZCONFIG})
echo $MOZCONFIG
echo $PWD
cat $MOZCONFIG
time make -f client.mk
hash say 2> /dev/null && say "Build complete"
