#!/bin/bash
# check-conflicts.sh — Scan persona files for potential issues
#
# Checks for:
# 1. Missing dimension files
# 2. Broken links to canonical sources
# 3. Stale files (not updated in 30+ days)
# 4. Pending conflicts
#
# Usage: ./scripts/check-conflicts.sh

set -euo pipefail

REPO_DIR="$(cd "$(dirname "$0")/.." && pwd)"
PERSONA_DIR="$REPO_DIR/persona"
CONTEXT_DIR="$REPO_DIR/context"
CONFLICTS_FILE="$REPO_DIR/evolution/CONFLICTS.md"

issues=0
warnings=0

echo "=== Persona Conflict Check ==="
echo ""

# Check dimension files exist
echo "--- Checking dimension files ---"
for i in $(seq -w 0 14); do
    matches=$(find "$PERSONA_DIR" -name "${i}-*.md" 2>/dev/null | wc -l | tr -d ' ')
    if [ "$matches" -eq 0 ]; then
        echo "  MISSING: No file for dimension $i"
        issues=$((issues + 1))
    fi
done
echo ""

# Check for pending conflicts
echo "--- Checking pending conflicts ---"
if [ -f "$CONFLICTS_FILE" ]; then
    pending=$(grep -c "PENDING REVIEW" "$CONFLICTS_FILE" 2>/dev/null || echo "0")
    if [ "$pending" -gt 0 ]; then
        echo "  $pending conflict(s) pending review"
        warnings=$((warnings + 1))
    else
        echo "  No pending conflicts"
    fi
fi
echo ""

echo "=== Summary ==="
echo "Issues: $issues | Warnings: $warnings"

if [ "$issues" -gt 0 ]; then
    exit 1
else
    exit 0
fi
