#!/usr/bin/env bash

killall -q polybar

echo "---" | tee -a /tmp/bar.log
polybar bar 2>&1 | tee -a /tmp/bar.log & disown
