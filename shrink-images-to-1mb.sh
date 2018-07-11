#!/bin/bash
# filepath: shrink-images-to-1mb.sh

if [ -z "$1" ]; then
  echo "Usage: $0 /path/to/image/folder"
  exit 1
fi

FOLDER="$1"
MAXSIZE=1048576 # 1MB in bytes

cd "$FOLDER" || { echo "Folder not found: $FOLDER"; exit 1; }

for img in *.jpg *.jpeg *.png; do
  [ -e "$img" ] || continue
  # Skip if already under 1MB
  if [ $(stat -f%z "$img") -le $MAXSIZE ]; then
    continue
  fi

  # For JPEGs, try reducing quality first
  if [[ "$img" == *.jpg || "$img" == *.jpeg ]]; then
    mogrify -quality 80 -strip "$img"
  fi

  # Resize in steps until under 1MB
  while [ $(stat -f%z "$img") -gt $MAXSIZE ]; do
    mogrify -resize 90% "$img"
  done
done
