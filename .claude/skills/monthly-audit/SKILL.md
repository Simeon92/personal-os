---
name: monthly-audit
description: Full monthly system audit. Maintenance checklist, skill assessment, goal progress, health report.
triggers:
  - /monthly-audit
  - "monthly audit"
  - "end of month review"
---

## Read First
- `05_archive/weekly-retros/` — all 4 retros from this month
- `01_context/goals.md` — already in session via current-week context; load fully here
- `01_context/commitments.md` — already in session
- `04_learnings/sessions/` — this month's session files
- `04_learnings/preferences.md` — already in session
- `04_learnings/mistakes.md` — already in session
- `04_learnings/automations.md`
- `.claude/system/maintenance-checklist.md`

## Process

**1. Run maintenance checklist** — work through all seven monthly checks from maintenance-checklist.md. Note findings for each.

**2. Goal progress** — for each quarterly goal, what monthly milestone was due? Completed? Update status in `01_context/goals.md`: On Track / At Risk / Behind.

**3. Skill assessment** — rate each skill: Working / Refine / Rethink. Base on retro evidence, not assumptions.

**4. Patterns missed in real-time** — recurring issues across the month that never got a prevention rule.

**5. Save audit** to `05_archive/monthly-audits/[YYYY-MM].md`:

```markdown
# Monthly Audit — [Month Year]

## Executive Summary
[2-3 sentences: what's working, what's failing, what needs to change]

## Goal Progress
| Goal | Milestone Due | Status | Notes |

## Maintenance Checklist Results

## Skill Assessment
| Skill | Status | Evidence |

## Patterns Missed

## Recommendations
[ranked: Critical / High / Medium]

## Preserve / Change / Experiment

## Honest Self-Assessment
Will next month look different because of this audit?
```

**6. Propose changelog entries** for approved changes. Get approval before writing.
