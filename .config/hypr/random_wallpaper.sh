#!/usr/bin/env bash

WALLPAPER_DIR="$HOME/wallpapers/"

while true; do
  swaybg -i $(find "$WALLPAPER_DIR" -type f | shuf -n 1) -m fill &
  sleep 600
  PID=$(pidof swaybg)
  kill $PID
done

