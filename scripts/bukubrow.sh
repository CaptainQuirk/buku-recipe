#!/bin/bash

CACHE_DIR=$HOME/.cache/configuration
DROPBOX_DIR=$HOME/Dropbox
BUKU_BOOKMARK_DIR=$HOME/.local/share/buku
WWW_CONFIG_PATH=$HOME/.config/www

mkdir -p "$CACHE_DIR/buku"

BUKUBROW_CACHE_DIR=$CACHE_DIR/buku/bukubrow/
mkdir -p "$BUKUBROW_CACHE_DIR"
if [ ! -f "$WWW_CONFIG_PATH/NativeMessagingHosts/com.samhh.bukubrow.json" ]; then
    if [ ! -f "$BUKUBROW_CACHE_DIR/binary-linux-x64-2.3.0.zip" ]; then
        curl -sSfL "https://github.com/SamHH/bukubrow/releases/download/2.3.0/binary-linux-x64.zip" -o "$BUKUBROW_CACHE_DIR/binary-linux-x64-2.3.0.zip"
    fi

    cd "$BUKUBROW_CACHE_DIR" || exit 1
    unzip binary-linux-x64-2.3.0.zip
    chmod +x install.sh
    ./install.sh
    cd - || exit 1

    mv "$HOME/.config/google-chrome/NativeMessagingHosts/com.samhh.bukubrow.json" "$WWW_CONFIG_PATH/NativeMessagingHosts"
fi

