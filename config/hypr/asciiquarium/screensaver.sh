#!/bin/bash

# Launch asciiquarium in fullscreen in a new terminal window
# Store the PID to kill later

alacritty -o 'window.startup_mode="Fullscreen"' -e asciiquarium &
echo $! > /tmp/asciiquarium.pid
