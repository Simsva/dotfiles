#!/bin/sh

if [ "$1" -le 2 ] && [ "$1" -ge 0 ]; then
  echo $1 | sudo tee /sys/class/leds/tpacpi::kbd_backlight/brightness
else
  echo "Invalid brightness level!" >&2
fi

