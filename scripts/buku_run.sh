#!/bin/bash

CACHE_DIR=$HOME/.cache/configuration
if [ ! -d "$CACHE_DIR/buku/buku_run" ]; then
    git clone https://github.com/carnager/buku_run.git "$CACHE_DIR/buku/buku_run"
    cd "$CACHE_DIR/buku/buku_run" || exit 1
    sudo make install
    cd - || exit 1
fi

exit 0
