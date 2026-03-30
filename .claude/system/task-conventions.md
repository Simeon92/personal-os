# Task Conventions

*Populated partially by /onboarding (pillars). Defaults ship complete.*

---

## Task ID Format

`T-YYYYMMDD-XX`

- Date is when the task was created
- XX is sequential for that day (01, 02, 03...)
- Example: `T-20260115-03` = third task created on January 15, 2026

IDs are assigned when a task enters the sprint or commitments.md. Not for backlog items.

---

## Priority Levels

| Level | Label | Max Active | When to Use |
|-------|-------|-----------|-------------|
| P0 | Must happen this week or it hurts | **3** | Critical blockers, hard deadlines, commitments to others |
| P1 | Important, can flex by a day or two | **5** | Sprint priorities, strategic work, compounding value |
| P2 | Should happen this week | **10** | Supporting tasks, admin, nice-to-haves with real value |
| P3 | Backlog / incubating | No limit | Parked ideas, future sprint candidates |

**Hard rule:** If adding a P0 would exceed 3, something currently P0 must be completed or downgraded first. Same for P1 at 5. Claude flags overload and proposes trade-offs — never silently accepts it.

---

## Commitment ID Format

`C-XXX` — sequential, never reused.

Example: `C-042` = the 42nd commitment ever logged.

---

## Sprint Format

```
- [ ] [T-YYYYMMDD-XX] [P1] Task description — *definition of done*
```

Completed tasks:
```
- [x] [T-YYYYMMDD-XX] [P1] Task description — *done [date]*
```

---

## Pillar Balance

*Pillars are defined during onboarding based on your areas of responsibility.*
*Add your pillars here with target percentage ranges.*

| Pillar | Description | Target Range |
|--------|-------------|-------------|
| [Pillar 1] | [What this covers] | [X–Y%] |
| [Pillar 2] | [What this covers] | [X–Y%] |
| [Pillar 3] | [What this covers] | [X–Y%] |
| Personal | Recovery, relationships, health | Acknowledged, not squeezed |

**Pillar balance is checked weekly.** If any pillar is outside its target range for 2+ consecutive weeks, the weekly retro flags it.

---

## Energy Tags

Every task gets one energy tag. Claude applies when creating or updating.

| Tag | When to Use | Examples |
|-----|-------------|---------|
| `deep-work` | Sustained focus, complex thinking | Strategy docs, specs, architecture decisions |
| `creative` | Ideation, content, brainstorming | Writing, frameworks, visual thinking |
| `admin` | Low cognitive load, process-following | Stakeholder updates, logistics, quick reviews |
| `quick-win` | Under 15 min, any energy state | Short messages, simple decisions, brief reviews |
| `waiting-on` | Blocked on someone else's input | Anything awaiting response or external dependency |
