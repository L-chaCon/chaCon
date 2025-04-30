#!/bin/sh
sketchybar --add item clock right \
           --set clock  update_freq=10 \
                        icon=󰃰 \
                        background.color=$MAGENTA \
                        icon.color=$BLACK \
                        label.color=$BLACK \
                        icon.padding_right=0 \
                        label.padding_left=3 \
                        script="$PLUGINS_DIR/clock.sh" \
