#!/bin/bash

MUSIC_DIR="$1"

if [ -z "$1" ] || [ "$1" == "-h" ] || [ "$1" == "--help" ]; then
  echo "Usage: $0 MUSIC_DIR"
  exit 1
fi

mkdir -p lib-mpd

docker run --rm -it -v "$MUSIC_DIR:/var/lib/mpd/music:z" -v "$(pwd)/lib-mpd:/var/lib/mpd:z" -p 6600:6600 -p 8000:8000 mpd
