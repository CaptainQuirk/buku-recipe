#!/bin/bash

CACHE_DIR=$HOME/.cache/configuration
WWW_CONFIG_PATH=$HOME/.config/www

mkdir -p "$CACHE_DIR/buku"
mkdir -p "$WWW_CONFIG_PATH"

BUKUBROW_CACHE_DIR=$CACHE_DIR/buku/bukubrow/
mkdir -p "$BUKUBROW_CACHE_DIR"
if [ ! -f "$WWW_CONFIG_PATH/NativeMessagingHosts/com.samhh.bukubrow.json" ]; then
    if [ ! -f "$BUKUBROW_CACHE_DIR/binary-linux-x64-2.3.0.zip" ]; then
        curl -sSfL "https://github.com/SamHH/bukubrow/releases/download/2.3.0/binary-linux-x64.zip" -o "$BUKUBROW_CACHE_DIR/binary-linux-x64-2.3.0.zip"
    fi

    cd "$BUKUBROW_CACHE_DIR"
    unzip -o binary-linux-x64-2.3.0.zip
    chmod +x install.sh
    ./install.sh
    cd - || exit 1

    if [ -f "$HOME/.config/google-chrome/NativeMessagingHosts/com.samhh.bukubrow.json" ]; then
      mv "$HOME/.config/google-chrome/NativeMessagingHosts/com.samhh.bukubrow.json" "$WWW_CONFIG_PATH/NativeMessagingHosts/"
    fi
fi
echo 0 > "$HOME/.cache/shef/script/terminal-handle"

exit 0
