#!/bin/bash

HOME_CONFIG=$HOME/.config
REPO_DIR=$(dirname "$0")/.config
CONFIGS_TO_SYNC=(
    "i3" \
    "polybar" \
    "picom.conf" \
    "alacritty" \
    "dunst" \
    "nvim" \
    "rofi" \
    "hypr" \
    "waybar"
)

echo "Syncing to $REPO_DIR"

echo "Syncing .zshrc"
rsync -a $HOME/.zshrc ./

for ITEM in ${CONFIGS_TO_SYNC[@]};
do
    echo "Copying ${HOME_CONFIG}/$ITEM";
    rsync -av ${HOME_CONFIG}/$ITEM ${REPO_DIR}/
done

echo "All operations complete"

