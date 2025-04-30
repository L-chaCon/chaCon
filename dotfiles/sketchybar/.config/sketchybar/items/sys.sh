#!/bin/sh

BACKGROUND_COLOR=$CYAN

sets=(
  padding_left=0
  padding_right=0
  label.padding_right=5
  label.padding_left=0
  icon.padding_right=3
  icon.padding_left=3
  icon.color=$BLACK
  label.color=$BLACK
  background.color=$BACKGROUND_COLOR
)

sketchybar  --add item volume right \
            --set volume  "${sets[@]}" \
                          script="$PLUGINS_DIR/volume.sh" \
            --subscribe volume volume_change

sketchybar  --add item battery right \
            --set battery update_freq=180 \
                          script="$PLUGINS_DIR/battery.sh" \
                          "${sets[@]}" \
            --subscribe battery system_woke power_source_change

sketchybar --add item cpu right \
           --set cpu  update_freq=2 \
                      script="$PLUGINS_DIR/cpu.sh" \
                      "${sets[@]}"

# NOTE: Tried to use brakets but didnt workd
# sketchybar  --add bracket sys volume battery cpu \
#             --set         sys background.color=$BACKGROUND_COLOR
