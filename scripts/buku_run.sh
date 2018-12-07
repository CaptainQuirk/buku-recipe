#!/bin/bash

CACHE_DIR=$HOME/.cache/configuration
HANDLE=$1
sleep 1
if [ ! -d "$CACHE_DIR/buku/buku_run" ]; then
    git clone https://github.com/carnager/buku_run.git "$CACHE_DIR/buku/buku_run"
    (
      cd "$CACHE_DIR/buku/buku_run"
      sudo make install
      cd -
    )
else
  echo "$CACHE_DIR/buku/buku_run already exists. Nothing to do !"
  sleep 2
fi

echo 0 > "$HANDLE"
exit 0
