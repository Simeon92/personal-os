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
