#!/bin/bash

SPACE_ICONS=("" "󰖟" "" "󱁐" "0" "1" "2")
for i in "${!SPACE_ICONS[@]}"; do
  sid="$(($i + 1))"
  space=(
    space="$sid"
    icon="${SPACE_ICONS[i]}"
    icon.padding_left=10
    icon.padding_right=10
    background.height=$BAR_HIGHT
    label.drawing=off
    script="$PLUGINS_DIR/aerospace.sh $sid"
    click_script="aerospace workspace $sid"
  )
  sketchybar --add space space."$sid" left \
    --set space."$sid" "${space[@]}" \
    --subscribe space.$sid aerospace_workspace_change
done
