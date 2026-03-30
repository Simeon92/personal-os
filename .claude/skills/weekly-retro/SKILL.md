---
name: weekly-retro
description: Friday weekly retrospective. Reviews what shipped and slipped, promotes patterns, archives the week.
triggers:
  - /weekly-retro
  - "retro"
  - "weekly review"
  - "end of week"
---

## Read First
- `01_context/current-week.md` — shipped vs. slipped (already in session)
- `01_context/commitments.md` — commitment health (already in session)
- `01_context/goals.md` — which monthly milestones did this week advance?
- `04_learnings/sessions/` — this week's session files for pattern promotion
- `04_learnings/preferences.md` — already in session
- `04_learnings/mistakes.md` — already in session
- `.claude/system/task-conventions.md` — pillar definitions and targets

## Process

**1. Shipped vs. Slipped**
Shipped = tasks marked [x] or ✅. Slipped = P0/P1 that didn't complete. For slipped items, note how many consecutive weeks they've been on the sprint. Flag anything 3+ weeks.

**2. Milestone Progress**
For each quarterly goal: which monthly milestone was this week meant to advance? Did it? Flag any milestone with zero progress this week.

**3. Avoidance Patterns**
- Same task deferred 2+ sessions in a row
- Easier work appearing when hard work is due
- Unshipped drafts sitting in `02_projects/`
- Commitments with no update in 2+ weeks

Name them directly: "This looks like [task] has been moving to tomorrow for [N] days."

**4. Pillar Balance**
Estimate actual time across pillars. Compare to targets in task-conventions.md. Flag anything outside target range with: "Is this a one-week anomaly or a pattern?"

**5. Commitment Health**
Count: made this week / kept / currently overdue. Flag rising overdue count.

**6. Promote Learnings**
Read all session files from this week in `04_learnings/sessions/`. Look for preferences or mistakes appearing 2+ times:
- Preferences → append to `04_learnings/preferences.md`
- Mistakes → append to `04_learnings/mistakes.md` with named pattern + prevention rule
- Repeated workflows → append to `04_learnings/automations.md`

State what was promoted.

**7. Archive the Week**
Save to `05_archive/weekly-retros/[YYYY-MM-DD].md`.

**8. Update `01_context/current-week.md`**
Carry forward incomplete P0s/P1s. Remove completed tasks. Update date range.

**9. Present the retro**
Lead with what shipped. Name what slipped with day counts. One avoidance pattern if present. Pillar balance in one line. Commitment health in one line. What got promoted. End with one recommendation for next week.

## Asana Integration
When reviewing what shipped vs. slipped:
- Use Asana MCP `get_my_tasks` to pull tasks completed this week — use as the authoritative shipped list
- Cross-reference with `01_context/current-week.md` checkboxes
- Any discrepancy (done in Asana but not marked in current-week, or vice versa) — reconcile before archiving

## Jira Integration
When reviewing project/sprint progress:
- Use Jira MCP to check sprint status for any active sprints
- Surface any Jira issues that are blocked or overdue
- Note sprint velocity if relevant to the pillar balance assessment
