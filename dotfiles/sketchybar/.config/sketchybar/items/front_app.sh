#!/bin/sh
sketchybar --add item chevron left \
           --set chevron  icon="" \
                          label.drawing=off \
                          background.padding_left=5 \
                          background.padding_right=0 \
                          icon.color=$WHITE \
                          background.color=$BACKGROUND \
                          padding_left=0 \
                          padding_right=0 \
           --add item front_app left \
           --set front_app  icon.drawing=off \
                            padding_left=0 \
                            background.padding_left=0 \
                            label.padding_left=0 \
                            label.color=$WHITE \
                            background.color=$BACKGROUND \
                            script="$PLUGINS_DIR/front_app.sh" \
           --subscribe front_app front_app_switched
