#!/bin/bash

SOUNDS_PATH="$HOME/.sounds"
DEFAULT_SFX="$SOUNDS_PATH/default_notification.mp3"
CHAT_SFX="$SOUNDS_PATH/chat_notification.mp3"
CRITICAL_SFX="$SOUNDS_PATH/critical_notification.mp3"
NORMAL_SFX="$SOUNDS_PATH/warning_notification.mp3"

if [[ $DUNST_DESKTOP_ENTRY == "discord" ]] then
  exit 0;
fi

case "$DUNST_URGENCY" in
  "CRITICAL")
    paplay $CRITICAL_SFX
    ;;
  "NORMAL")
    paplay $NORMAL_SFX
    ;;
  *)
    paplay $DEFAULT_SFX
    ;;
esac

