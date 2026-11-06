#!/bin/bash
set -e
./make.sh
cd build

# Find the executable (works for MSVC & MinGW)
if [ -f demo.exe ]; then
    ./demo.exe
elif [ -f MinSizeRel/demo.exe ]; then
    ./MinSizeRel/demo.exe
elif [ -f Debug/demo.exe ]; then
    ./Debug/demo.exe
elif [ -f Release/demo.exe ]; then
    ./Release/demo.exe
else
    echo "Error: demo executable not found."
    exit 1
fi