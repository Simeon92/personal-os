---
name: triage
description: Routes items from 00_inbox/ to the right place using strategic context.
triggers:
  - /triage
  - "triage inbox"
  - "route these"
  - "process inbox"
---

## Read First
- `01_context/goals.md` — strategic context for routing decisions
- `01_context/current-week.md` — already in session
- `01_context/backlog.md` — what's already parked
- `01_context/idea-log.md` — ideas already captured
- `01_context/commitments.md` — already in session

Then list all files in `00_inbox/`. If empty: "00_inbox/ is empty — nothing to triage."

## Routing Logic

**Task or action item** — something to be done with a clear verb and outcome
→ Connects to P0/P1 goal: add to `01_context/current-week.md` with task ID
→ Real but not this week: add to `01_context/backlog.md` with priority and context
→ State which goal or milestone it connects to

**Idea or observation** — a concept, pattern, or strategic thought; no immediate action
→ Log to `01_context/idea-log.md` with date, full description, connection to current work

**Commitment** — something promised to or by a specific person
→ Add to `01_context/commitments.md` with next C-XXX ID, recipient, what, due date
→ No due date given: note "TBD — ask for one"

**Project seed** — multi-step work with a defined outcome
→ Create `02_projects/[name].md` with `Status: Draft`
→ Add a P1 task to `01_context/current-week.md`: "Define scope for [project]"

**Meeting note** — notes from a conversation or call
→ Extract tasks → route as above
→ Extract commitments → route as above
→ Update person page in `03_people/internal/` or `03_people/external/`
→ Archive note to `05_archive/[YYYY-MM-DD]-[meeting-name].md`

**Reference material** — keep but don't act on
→ Connect to active project file if relevant, or suggest creating a `resources/` folder

**Unclear** — present with one question: "This looks like [X]. Route to [Y] or delete?"

## After Triage

```
Triaged [N] items:
— Added to this week: [list]
— Added to backlog: [list]
— Logged as ideas: [list]
— Logged as commitments: [list]
— New projects: [list]
— People pages updated: [list]
— Archived: [list]
— Needs your input: [list + one question each]

00_inbox/ is now empty.
```

**Edge cases:**
- Duplicate of existing task: note "already tracked as [T-ID]", delete from inbox
- No connection to current goals: "Doesn't connect to anything current. Keep, park for next quarter, or delete?"
- 10+ items: process in batches of 5, ask "Continue?" between batches

## Asana Integration
When routing task or action items:
- Create them in Asana via MCP (`create_task_preview`) as well as logging in `01_context/current-week.md` or `01_context/backlog.md`
- Assign to the relevant Asana project if one is identifiable from context
- Set due date if mentioned

When routing project seeds:
- Create the project in Asana via MCP (`create_project_preview`) and link it from the local `02_projects/` file
