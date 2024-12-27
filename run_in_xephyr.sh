#!/bin/bash
make clean all
DSP=:2
Xephyr -br -ac -reset -screen 2850x1750 "$DSP" &
export DISPLAY="$DSP"
sleep 1
echo running dwm
while true; do
    ./dwm || break
done
