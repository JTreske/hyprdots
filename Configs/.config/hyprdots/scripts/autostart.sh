#!/usr/bin/env bash

# wait for waybar to start
until pids=$(pidof waybar)
do
    sleep 1
done

# waybar is now started
# give some extra time

sleep 1

# launch all autostart applications using dex
dex -a -s ~/.config/autostart/ > /dev/null 2>&1
