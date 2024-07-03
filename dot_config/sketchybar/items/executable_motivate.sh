#!/bin/bash
source "$CONFIG_DIR/colors.sh"
motivate=(
  icon=$PLANET
  icon.color=$RED
  icon.y_offset=+1.7
  icon.padding_right=0
  icon.padding_left=12
  script="$PLUGIN_DIR/motivate.sh"
  icon.font="JetBrainsMono Nerd Font:Regular:15.0"
  label.drawing=on
  label.color=$YELLOW
  label.padding_left=5
  label.padding_right=12
  padding_right=35
  y_offset=-2
  label=10
  updates=off
  background.color=$BACKGROUND_1
  background.border_color=$BLUE
  background.border_width=1.5
  background.y_offset=+1
)


sketchybar --add item motivate right      \
           --set motivate "${motivate[@]}"


