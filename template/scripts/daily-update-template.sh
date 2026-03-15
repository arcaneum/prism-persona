#!/bin/bash
# daily-update-template.sh — Generate today's daily log entry
#
# Usage: ./scripts/daily-update-template.sh

set -euo pipefail

REPO_DIR="$(cd "$(dirname "$0")/.." && pwd)"
LOG_DIR="$REPO_DIR/evolution/daily-log"
TODAY=$(date '+%Y-%m-%d')
DISPLAY_DATE=$(date '+%d %B %Y')
LOG_FILE="$LOG_DIR/$TODAY.md"

mkdir -p "$LOG_DIR"

if [ -f "$LOG_FILE" ]; then
    echo "Today's log already exists: $LOG_FILE"
    exit 0
fi

cat > "$LOG_FILE" << EOF
# Daily Log — $DISPLAY_DATE

## New Insights

<!-- Anything new about preferences, positions, or style -->

## Reinforcements

<!-- Existing traits confirmed or strengthened today -->

## Potential Shifts

<!-- Areas where position might be evolving -->

## Content Created

<!-- Any content produced today that could be a new sample -->
EOF

echo "Created daily log: $LOG_FILE"
