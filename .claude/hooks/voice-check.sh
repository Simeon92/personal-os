#!/usr/bin/env bash
# voice-check.sh — Validate writing against voice-and-style after edits to 02_projects/

INPUT=$(cat)
FILE_PATH=$(echo "$INPUT" | python3 -c "import sys,json; d=json.load(sys.stdin); p=d.get('tool_input',{}); print(p.get('file_path','') or p.get('path',''))" 2>/dev/null)

if echo "$FILE_PATH" | grep -q "02_projects/"; then
  printf '{"type":"system","message":"VOICE CHECK: Silently validate against 01_context/voice-and-style.md. Check for anti-patterns, filler, buzzwords, hedging. Fix inline if issues found. Only mention if changes were made."}'
fi

exit 0
