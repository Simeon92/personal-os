---
name: health-check
description: Scans for stale tasks, aging ideas, overdue commitments, draft rot.
triggers:
  - /health-check
  - "what's slipping"
  - "health check"
  - "what am I forgetting"
---

## Read First
- `01_context/current-week.md` — already in session
- `01_context/commitments.md` — already in session
- `01_context/idea-log.md` — check for orphaned ideas
- `01_context/backlog.md` — check for stale items
- `02_projects/` — scan for stale drafts
- `03_people/` — check last-interaction dates

## Scan For

**Critical**
- Overdue commitments: past due date, status open — name each with recipient and days overdue
- P0 overload: more than 3 active P0s — name which ones are over the limit

**Warning**
- Stalled P0s/P1s: no movement in 7+ days — name with day count
- Sprint carryover: same task 3+ consecutive weeks — name with week count
- Stale drafts in `02_projects/`: Status not "Shipped", file older than 30 days

**Informational**
- Orphaned ideas in `idea-log.md`: parked 3+ weeks without review
- People pages with last-interaction 30+ days ago (active colleagues only)
- Unreviewed session learnings: 3+ files in `04_learnings/sessions/` from past 7 days

## Output

Rank: Critical → Warning → Informational. Name specific files, tasks, and people — not vague categories.

End with: "The most important thing to address right now is [X]."

If clean: "System looks healthy. [One thing to keep an eye on if anything]."
