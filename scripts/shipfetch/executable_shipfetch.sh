#!/bin/bash

SHIPFETCH_DIR="$HOME/scripts/shipfetch/assets"

shopt -s nullglob

images=("$SHIPFETCH_DIR"/*.{jpg,jpeg,png})

if [ ${#images[@]} -eq 0 ]; then
    echo "No images found in $LOGO_DIR"
    exit 1
fi

SHIPFETCH_INDEX=$(( RANDOM % ${#images[@]} ))
SHIPFETCH_IMG="${images[$SHIPFETCH_INDEX]}"


fastfetch \
-c "$HOME/scripts/shipfetch/shipfetch.jsonc" \
--kitty "$SHIPFETCH_IMG" \
--logo-height 12 \
--logo-padding-right 2 \
--logo-padding-left 2 \
--logo-padding-top 2 \
--logo-recache 

shopt -u nullglob
