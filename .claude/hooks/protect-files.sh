#!/usr/bin/env bash
# protect-files.sh — Prevent destructive edits to core system files

INPUT=$(cat)
TOOL=$(echo "$INPUT" | python3 -c "import sys,json; d=json.load(sys.stdin); print(d.get('tool_name',''))" 2>/dev/null)
FILE_PATH=$(echo "$INPUT" | python3 -c "import sys,json; d=json.load(sys.stdin); p=d.get('tool_input',{}); print(p.get('file_path','') or p.get('path',''))" 2>/dev/null)
FNAME=$(basename "$FILE_PATH")

# Fully protected: cannot be overwritten
PROTECTED=("CLAUDE.md" "rules-of-engagement.md" "maintenance-checklist.md")
for f in "${PROTECTED[@]}"; do
  if [ "$FNAME" = "$f" ] && [ "$TOOL" = "Write" ]; then
    echo "BLOCKED: '$FNAME' is a core system file. Use Edit for targeted changes."
    exit 2
  fi
done

# Append-only: Write blocked, Edit allowed
APPEND_ONLY=("preferences.md" "mistakes.md" "commitments.md" "idea-log.md" "changelog.md" "automations.md")
for f in "${APPEND_ONLY[@]}"; do
  if [ "$FNAME" = "$f" ] && [ "$TOOL" = "Write" ]; then
    echo "BLOCKED: '$FNAME' is append-only. Use Edit to add content — never overwrite."
    exit 2
  fi
done

# Archive protection
if echo "$FILE_PATH" | grep -q "05_archive/"; then
  if [ "$TOOL" = "Write" ] || [ "$TOOL" = "Edit" ]; then
    if [ -f "$FILE_PATH" ]; then
      echo "BLOCKED: Files in 05_archive/ are read-only. Create a new file instead."
      exit 2
    fi
  fi
fi

exit 0
