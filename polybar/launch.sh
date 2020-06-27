#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Launch topbar and bottombar
echo "---" | tee -a /tmp/polybar.log /tmp/polybar_ext.log
polybar bottombar >> /tmp/polybar.log 2>&1 &
polybar bottombar_external >> /tmp/polybar_ext.log 2>&1 &

echo "Bars launched..."
