#!/bin/bash

STATE=$(
  xinput list-props 11 \
    | grep -m1 "Device Enabled" \
    | awk '{print $4}'
)

if [ "$STATE" = "0" ]; then
  xinput set-prop 11 "Device Enabled" 1
else
  xinput set-prop 11 "Device Enabled" 0
fi
