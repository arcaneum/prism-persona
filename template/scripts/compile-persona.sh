#!/bin/bash
# compile-persona.sh — Concatenate all persona dimension files into PERSONA-FULL.md
#
# Usage: ./scripts/compile-persona.sh
# Output: synthesis/PERSONA-FULL.md

set -euo pipefail

REPO_DIR="$(cd "$(dirname "$0")/.." && pwd)"
PERSONA_DIR="$REPO_DIR/persona"
OUTPUT="$REPO_DIR/synthesis/PERSONA-FULL.md"

echo "Compiling persona from $PERSONA_DIR..."

cat > "$OUTPUT" << 'HEADER'
# Complete Persona Reference

> Auto-generated from persona dimension files. Do not edit directly.
> Regenerate with: `./scripts/compile-persona.sh`

HEADER

echo "**Generated**: $(date '+%d %B %Y at %H:%M')" >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "---" >> "$OUTPUT"
echo "" >> "$OUTPUT"

for file in "$PERSONA_DIR"/[0-9][0-9]-*.md; do
    if [ -f "$file" ]; then
        filename=$(basename "$file")
        echo "  Adding $filename..."
        cat "$file" >> "$OUTPUT"
        echo "" >> "$OUTPUT"
        echo "---" >> "$OUTPUT"
        echo "" >> "$OUTPUT"
    fi
done

count=$(find "$PERSONA_DIR" -name '[0-9][0-9]-*.md' | wc -l | tr -d ' ')
echo "Compiled $count dimensions into $OUTPUT"
