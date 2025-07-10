#!/bin/bash
if [ -f /tmp/asciiquarium.pid ]; then
    kill "$(cat /tmp/asciiquarium.pid)" 2>/dev/null
    rm /tmp/asciiquarium.pid
fi
