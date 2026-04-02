---
name: morning-briefing
description: Daily morning briefing. Reviews priorities, commitments, and calendar. Produces dated quickref.
triggers:
  - /morning-briefing
  - "what's on today"
  - "what should I focus on"
  - "morning briefing"
---

## Read First
- `01_context/current-week.md` — this week's priorities (already in session)
- `01_context/commitments.md` — overdue and due-today items (already in session)
- `01_context/goals.md` — check which monthly milestones are at risk
- `01_context/about-me.md` — energy patterns (already in session)
- `04_learnings/preferences.md` — how they like their day structured (already in session)

## Process

**1. Check overdue commitments first.** Any past-due open commitment appears at the top. Don't bury it.

**2. Check milestone risk.** Any monthly milestone in `goals.md` with no weekly progress in 2+ weeks gets flagged.

**3. Identify top 3 focus items.**
- P0s always appear
- Match tasks to energy patterns from about-me.md (deep work = morning, creative = mid-morning, admin = afternoon)
- If P0 count exceeds 3, flag overload before recommending

**4. Check calendar** (if connected). Find 90+ minute uninterrupted blocks. Note anything needing prep.

**5. Write the daily quickref** to `01_context/daily/[YYYY-MM-DD].md`:

```markdown
# [Day], [Date]

## Top 3 Focus
1. [Task ID] — [why today, which goal it connects to]
2. [Task ID] — [context]
3. [Task ID] — [context]

## Overdue Commitments
| ID | To | What | Days Overdue |
[or "None"]

## Today's Meetings
[from calendar, or "No calendar connected"]

## Deep Work Windows
[time ranges + best use, based on calendar or energy patterns]

## Due Today
| ID | To | What |
[or "None"]
```

**6. Present conversationally** — under 200 words. Surface overdue first. Top 3 with brief context. End with one specific first action.

"[Task]. Start with [specific first step]. You have [X] before [next commitment]."

## Asana Integration
When Asana MCP is available, pull today's assigned tasks directly:
- Use Asana MCP `get_my_tasks` to fetch tasks due today or overdue
- Cross-reference with `01_context/current-week.md` — they should align
- If a task exists in current-week.md but not Asana, flag it: "This isn't in Asana yet — want me to create it?"
- If a task is in Asana but not in current-week.md, surface it

## Calendar Integration
Read today's meetings via Chrome MCP:

1. Get the calendar URL from `01_context/about-me.md` (under `## Calendar URL`)
2. If no URL is saved, ask: "What's the URL of your Outlook calendar? I'll save it for next time."
3. Use Chrome MCP to navigate to the URL — the day or week view works best
4. Read the page to extract today's events: title, time, attendees if visible
5. Only read the logged-in user's own calendar — ignore any other calendars or people's schedules visible on the page
6. For each meeting, note one line of prep if a relevant person page exists in `03_people/`

If Chrome MCP is unavailable, skip calendar and note it in the briefing.
