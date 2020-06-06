#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Launch topbar and bottombar
echo "---" | tee -a /tmp/polybar2.log
# /tmp/polybar1.log
# polybar topbar >> /tmp/polybar1.log 2>&1 &
polybar bottombar >> /tmp/polybar2.log 2>&1 &

echo "Bars launched..."
