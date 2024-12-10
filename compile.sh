#!/usr/bin/env bash 
pip-compile --output-file=- requirements.txt  \
| sed 's/\(opencv-contrib-python==[0-9\.]\+\)/#\1  # Causes ImportError on headless systems/' \
> requirements.compiled.txt
# | sed 's/pillow==\([0-9\.]\+\)/pillow-simd==\1/' \ # Seems abandoned