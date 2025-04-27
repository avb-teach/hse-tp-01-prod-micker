#!/bin/bash
INPUT="$1"
OUTPUT="$2"
DEPTH="$3"
if [ -n "$DEPTH" ]; then
  FILES=$(find "$INPUT" -maxdepth "$DEPTH" -type f)
else
  FILES=$(find "$INPUT" -type f)
fi
for FILE in $FILES; do
    cp "$FILE" "$OUTPUT"
done
