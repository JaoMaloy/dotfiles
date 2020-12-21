#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Launch topbar and bottombar
echo "---" | tee -a /tmp/polybar.log
polybar topbar >> /tmp/polybar.log 2>&1 &

echo "Bars launched..."
