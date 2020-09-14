#!/bin/sh
find ~/Pictures/Wallpapers -type f | sort -R | tail -1 | xargs wal -i
