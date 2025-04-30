#!/usr/bin/env bash
source "$CONFIG_DIR/colors.sh"

if [ "$1" = "$FOCUSED_WORKSPACE" ]; then
  sketchybar --set $NAME  background.drawing=on \
                          background.color=$GREEN \
                          icon.color=$BLACK
else
  sketchybar --set $NAME  background.drawing=off \
                          icon.color=$WHITE
fi
