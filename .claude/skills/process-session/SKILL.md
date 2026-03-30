---
name: process-session
description: Capture learnings from this conversation before it ends. Auto-triggered at session end.
triggers:
  - /process-session
  - "process this session"
  - "capture learnings"
  - Automatically via session-stop hook
---

## Read First
- `01_context/commitments.md` — already in session, needed to avoid duplicates
- `01_context/idea-log.md` — needed to avoid duplicating ideas already captured
- `04_learnings/preferences.md` — already in session, check for existing entries before promoting
- `04_learnings/mistakes.md` — already in session, check for existing patterns

## What to Look For

**Preferences** — how the user likes things done. Corrections, confirmations, explicit statements, implicit signals from how they edited output. Only capture what would be non-obvious to a fresh session.

**Mistakes** — things that went wrong and what the right approach was. Format: what happened / what should have happened / prevention rule.

**Unlogged ideas** — ideas mentioned in conversation not yet in idea-log.md.

**Commitments** — anything said in the form of "I'll [do something] for [someone]".

**Workflows [workflow]** — any multi-step sequence done more than once. Tag these for automation review at the weekly retro.

## Write To

`04_learnings/sessions/[YYYY-MM-DD].md` — APPEND if file exists for today. Never overwrite.

```markdown
## Session: [Time] — [Topic]

### Preferences
- [Preference]: [What was expressed] — *[correction / confirmation / explicit]*

### Mistakes
- **[Pattern name]**: [What happened] — Prevention: [Rule]

### Ideas
- [Title]: [Description] — logged to idea-log ✓

### Commitments
- [C-XXX] To [Person]: [What] by [Date] — logged to commitments ✓

### Workflows [workflow]
- [Name]: [Description] — Type: [skill / hook / scheduled task]
```

For unlogged ideas: also append to `01_context/idea-log.md`.
For commitments: also add to `01_context/commitments.md` if not already there.
Flag promotion candidates: if a preference or mistake matches an existing entry, note it as retro candidate.

## Report

"Logged [N] things: [N] preferences, [N] mistakes, [N] ideas, [N] commitments. [Most important highlight]. [Promotion candidates if any]." Under 5 lines.
