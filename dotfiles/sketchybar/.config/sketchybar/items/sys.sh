#!/bin/sh

BACKGROUND_COLOR=$CYAN

sketchybar  --add item volume right \
            --set volume  icon.padding_right=0 \
                          icon.padding_left=0 \
                          label.padding_left=3 \
                          icon.color=$BLACK \
                          label.color=$BLACK \
                          padding_left=0 \
                          background.color=$BACKGROUND_COLOR \
                          script="$PLUGINS_DIR/volume.sh" \
            --subscribe volume volume_change \

sketchybar  --add item battery right \
            --set battery update_freq=180 \
                          script="$PLUGINS_DIR/battery.sh" \
                          icon.padding_right=0 \
                          icon.color=$BLACK \
                          label.color=$BLACK \
                          background.color=$BACKGROUND_COLOR \
                          padding_left=0 \
                          padding_right=0 \
                          icon.padding_left=0 \
                          label.padding_left=3 \
            --subscribe battery system_woke power_source_change \

sketchybar --add item "sys.cpu" right \
           --set "sys.cpu"  update_freq=2 \
                      padding_right=0 \
                      icon.padding_right=0 \
                      icon.padding_right=0 \
                      icon.color=$BLACK \
                      label.color=$BLACK \
                      background.color=$BACKGROUND_COLOR \
                      label.padding_left=3 \
                      icon=  \
                      script="$PLUGINS_DIR/cpu.sh"
