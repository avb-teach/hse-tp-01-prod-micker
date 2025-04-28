#!/bin/bash
INPUT="$1"
OUTPUT="$2"
FILES=$(find "$INPUT" -type f)
for FILE in $FILES; do
    cp "$FILE" "$OUTPUT"
done
