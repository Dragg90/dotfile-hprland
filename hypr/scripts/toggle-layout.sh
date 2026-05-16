#!/usr/bin/env bash

current=$(hyprctl getoption general:layout -j | jq -r '.str')

if [ "$current" = "dwindle" ]; then
    hyprctl keyword general:layout "scrolling"
    hyprctl notify 0 2500 0 "Modo: scrolling"
else
    hyprctl keyword general:layout "dwindle"
    hyprctl notify 0 2500 0 "Modo: dwindle"
fi
