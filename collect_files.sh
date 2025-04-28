#!/bin/bash
INPUT="$1"
OUTPUT="$2"
DEPTH="$3"
if [ -n "$DEPTH" ]; then # https://labex.io/ru/tutorials/shell-how-to-check-if-a-bash-variable-is-non-null-392930
  FILES=$(find "$INPUT" -maxdepth "$DEPTH" -type f) # https://stackoverflow.com/questions/60089514/how-maxdepth-and-mindepth-works-with-find-command
else
  FILES=$(find "$INPUT" -type f)
fi
for FILE in $FILES; do
  PATH="${FILE#$INPUT/}" # https://stackoverflow.com/questions/16623835/remove-a-fixed-prefix-suffix-from-a-string-in-bash
  mkdir -p "$(dirname "$OUTPUT/$PATH")"
  cp "$FILE" "$OUTPUT/$PATH"
done
