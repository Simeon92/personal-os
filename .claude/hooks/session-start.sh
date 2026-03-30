#!/usr/bin/env bash
# session-start.sh — Inject essential context only. Skills load what else they need.

# Find OS root by locating CLAUDE.md — works with or without git
find_os_root() {
  local dir="$PWD"
  while [ "$dir" != "/" ]; do
    [ -f "$dir/CLAUDE.md" ] && echo "$dir" && return
    dir="$(dirname "$dir")"
  done
  echo "$PWD"
}
OS_ROOT="$(find_os_root)"

CONTEXT_DIR="$OS_ROOT/01_context"
LEARNINGS_DIR="$OS_ROOT/04_learnings"
INBOX_DIR="$OS_ROOT/00_inbox"

# --- ESSENTIALS ONLY ---

THIS_WEEK=$(cat "$CONTEXT_DIR/current-week.md" 2>/dev/null)
COMMITMENTS=$(cat "$CONTEXT_DIR/commitments.md" 2>/dev/null)
ABOUT_ME=$(cat "$CONTEXT_DIR/about-me.md" 2>/dev/null)
PREFS=$(cat "$LEARNINGS_DIR/preferences.md" 2>/dev/null)
MISTAKES=$(cat "$LEARNINGS_DIR/mistakes.md" 2>/dev/null)

# --- APPLE CALENDAR (Outlook synced via macOS Internet Accounts) ---

read_apple_calendar() {
  osascript 2>/dev/null << 'APPLESCRIPT'
tell application "Calendar"
  set todayStart to current date
  set time of todayStart to 0
  set todayEnd to todayStart + 1 * days
  set output to ""
  repeat with cal in every calendar
    set calEvents to every event of cal whose start date >= todayStart and start date < todayEnd
    repeat with ev in calEvents
      set evTitle to summary of ev
      set evStart to time string of (start date of ev)
      set output to output & "- " & evTitle & " (" & evStart & ")" & linefeed
    end repeat
  end repeat
  if output is "" then
    return "No meetings today"
  else
    return output
  end if
end tell
APPLESCRIPT
}

TODAY_CALENDAR=$(read_apple_calendar)

# --- CHECKS ---

TODAY=$(date +%Y-%m-%d)

# Overdue commitments
OVERDUE=""
if [ -f "$CONTEXT_DIR/commitments.md" ]; then
  while IFS= read -r line; do
    if echo "$line" | grep -qE "^\| C-[0-9]+"; then
      DUE=$(echo "$line" | awk -F'|' '{print $5}' | tr -d ' ')
      STATUS=$(echo "$line" | awk -F'|' '{print $6}' | tr -d ' ')
      if [ -n "$DUE" ] && [ "$DUE" != "TBD" ] && [ "$DUE" \< "$TODAY" ] && [ "$STATUS" = "open" ]; then
        OVERDUE="$OVERDUE\n$line"
      fi
    fi
  done < "$CONTEXT_DIR/commitments.md"
fi

# Inbox count
INBOX_COUNT=0
if [ -d "$INBOX_DIR" ]; then
  INBOX_COUNT=$(find "$INBOX_DIR" -name "*.md" -not -name ".gitkeep" 2>/dev/null | wc -l | tr -d ' ')
fi

# Unreviewed session learnings
UNREVIEWED_COUNT=0
SESSION_DIR="$LEARNINGS_DIR/sessions"
if [ -d "$SESSION_DIR" ]; then
  CUTOFF=$(date -v-7d +%Y-%m-%d 2>/dev/null || date -d "7 days ago" +%Y-%m-%d 2>/dev/null)
  for f in "$SESSION_DIR"/*.md; do
    [ -f "$f" ] || continue
    FNAME=$(basename "$f" .md)
    if [ "$FNAME" \> "$CUTOFF" ] || [ "$FNAME" = "$CUTOFF" ]; then
      UNREVIEWED_COUNT=$((UNREVIEWED_COUNT + 1))
    fi
  done
fi

# Onboarding needed?
NEEDS_ONBOARDING="false"
if [ -f "$CONTEXT_DIR/about-me.md" ]; then
  REAL_CONTENT=$(grep -v "^#\|^<!--\|^-->" "$CONTEXT_DIR/about-me.md" | grep -v "^\s*$" | head -5)
  [ -z "$REAL_CONTENT" ] && NEEDS_ONBOARDING="true"
fi

# --- BUILD MESSAGE ---

MESSAGE="SESSION CONTEXT — Today: $TODAY\n"

[ "$NEEDS_ONBOARDING" = "true" ] && MESSAGE="$MESSAGE\nONBOARDING NEEDED: Run /onboarding before anything else.\n"
[ -n "$OVERDUE" ] && MESSAGE="$MESSAGE\nOVERDUE COMMITMENTS:\n$OVERDUE\n"
[ "$INBOX_COUNT" -gt 0 ] && MESSAGE="$MESSAGE\nINBOX: $INBOX_COUNT file(s) unrouted. Suggest /triage.\n"
[ "$UNREVIEWED_COUNT" -ge 3 ] && MESSAGE="$MESSAGE\nUNREVIEWED LEARNINGS: $UNREVIEWED_COUNT session files. Promote at next retro.\n"

MESSAGE="$MESSAGE
---
## THIS WEEK
$THIS_WEEK

## COMMITMENTS
$COMMITMENTS

## ABOUT ME
$ABOUT_ME

## PREFERENCES
$PREFS

## TODAY'S CALENDAR
$TODAY_CALENDAR

## MISTAKE PATTERNS
$MISTAKES
---
Apply preferences and mistake patterns throughout. Skills load additional context (goals, voice, people, backlog) when they need it.
Task management is in Asana — use Asana MCP tools when creating, updating, or completing tasks.
Project/sprint context is in Jira — use Jira MCP tools when referencing project work."

printf '{"type":"system","message":"%s"}' "$(echo -e "$MESSAGE" | python3 -c "import sys,json; print(json.dumps(sys.stdin.read())[1:-1])" 2>/dev/null || echo -e "$MESSAGE" | sed 's/"/\\"/g; s/$/\\n/' | tr -d '\n')"
