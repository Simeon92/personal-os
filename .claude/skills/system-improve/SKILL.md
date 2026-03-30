---
name: system-improve
description: Reviews the OS for improvement opportunities. Use for quarterly reviews or "how can we improve" moments.
triggers:
  - /system-improve
  - "how can we improve the system"
  - "system improve"
  - "quarterly review"
---

## Read First
- `.claude/system/changelog.md` — what's changed and why
- `05_archive/weekly-retros/` — last 3-4 retros for patterns
- `05_archive/monthly-audits/` — last audit if it exists
- `04_learnings/preferences.md` — already in session
- `04_learnings/mistakes.md` — already in session
- `04_learnings/automations.md` — pending automation candidates

## Assess Five Categories

**Skills not firing** — defined but never triggered? Trigger problem, relevance problem, or discoverability?

**Patterns not caught** — same avoidance patterns or mistakes in retros without prevention rules?

**Workflows ready to automate** — automation candidates sitting unapproved for 2+ retros?

**New capabilities to adopt** — new Claude Code features, MCP servers that solve a real problem? Only flag genuine use cases.

**Complexity creep** — any part of the system more complex than it needs to be? Files nobody reads, protocols creating friction?

## Output Format

Each recommendation:
```
**[Change name]**
- Category: Skill / Hook / Scheduled Task / CLAUDE.md / Protocol
- Evidence: [Specific retro entries, patterns, failures]
- Recommendation: [What to change]
- Expected outcome: [What will be different]
- Effort: Low / Medium / High
```

Rank: Critical fixes → high-value improvements → nice-to-haves.

Draft changelog entries for approved changes. Don't write them yet — get approval first.

End with: "The most valuable change right now is [X]. Want to build it?"
