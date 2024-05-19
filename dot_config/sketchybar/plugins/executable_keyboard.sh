#!/bin/bash

# this is jank and ugly, I know
LAYOUT="$(defaults read ~/Library/Preferences/com.apple.HIToolbox.plist AppleSelectedInputSources Item 1 | grep "KeyboardLayout Name" | cut -c 33- | rev | cut -c 2- | rev)"

# specify short layouts individually.
case "$LAYOUT" in
    "Colemak") SHORT_LAYOUT="CO";;
    "\"U.S.\"") SHORT_LAYOUT="US";;
    *) SHORT_LAYOUT="中文";;
esac

sketchybar --set keyboard label="$SHORT_LAYOUT"
