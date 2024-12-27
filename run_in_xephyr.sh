#!/bin/bash
make clean all
DSP=:2
Xephyr -br -ac -reset -screen 800x600 "$DSP" &
export DISPLAY="$DSP"
sleep 1
echo running dwm
./dwm
