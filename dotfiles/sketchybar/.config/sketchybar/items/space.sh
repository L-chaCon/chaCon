#!/bin/bash

SPACE_ICONS=("" "󰖟" "" "󱁐" "0")

for i in "${!SPACE_ICONS[@]}"
do
  sid="$(($i+1))"
  echo $sid
  space=(
    space="$sid"
    icon="${SPACE_ICONS[i]}"
    icon.padding_left=10
    icon.padding_right=10
    background.color=$GREEN
    icon.color=$WHITE
    background.height=$BAR_HIGHT
    label.drawing=off
    script="$PLUGINS_DIR/space.sh"
    click_script="aerospace workspace $sid"
  )
  sketchybar --add space space."$sid" left --set space."$sid" "${space[@]}"
done
