# Personal OS

A Personal Operating System for Claude Code. Compounds learning over time, tracks commitments, connects quarterly goals to daily work.

---

## Setup

**Requirements:** [Claude Code](https://claude.ai/code) installed. Claude Pro or higher recommended.

```bash
git clone https://github.com/[your-username]/personal-os.git
cd personal-os
claude
```

Claude detects an empty system and runs `/onboarding` automatically. The interview takes 15-20 minutes and populates everything — your goals, priorities, voice, people, and a first daily plan.

**One additional step — register scheduled tasks:**

After onboarding, ask Claude to register the four recurring tasks:

```
Register the four scheduled tasks from .claude/scheduled-tasks/ — morning briefing, weekly retro, idea incubation, and monthly audit.
```

That's it.

---

## How it works

Every session, Claude reads your current week, open commitments, and working preferences before you say anything. Skills load additional context (goals, voice, people pages) only when they need it.

Dump anything raw into `00_inbox/`. Run `/triage` and Claude routes everything to the right place using your goals as context.

At the end of every session, `/process-session` captures what was learned — preferences, mistakes, ideas, commitments. After a few weeks, Claude knows how you work.

---

## Skills

| Skill | When |
|-------|------|
| `/onboarding` | First setup, or to reset |
| `/triage` | Files in `00_inbox/` — routes them |
| `/morning-briefing` | Start of day |
| `/weekly-retro` | Friday |
| `/process-session` | End of session (auto-triggered) |
| `/health-check` | "What's slipping?" |
| `/done-enough` | "Is this done?" |
| `/draft` | "Draft me a..." |
| `/finishing-energy` | Losing steam on late-stage work |
| `/monthly-audit` | End of month |

---

## Privacy

Uncomment the lines in `.gitignore` before your first commit if you're keeping this repo public — your `01_context/`, `03_people/`, and `04_learnings/` contain personal data.
