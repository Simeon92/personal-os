---
name: skill-discovery
description: Reviews your working patterns and researches relevant skills, MCPs, and tools you could add to the system. Presents recommendations for approval — nothing gets added without you saying yes.
schedule: monthly
suggested_time: "10:00"
suggested_day: "15th of each month"
---

# Skill Discovery — Monthly Research Task

You are running the monthly skill discovery review. This task has three phases: review, research, and recommend. Nothing gets added to the system without explicit approval.

---

## Phase 1: Review Working Patterns

Read the following files:
- `04_learnings/sessions/` — all session files from the past 30 days
- `04_learnings/automations.md` — existing automation candidates
- `04_learnings/preferences.md` — working preferences
- `01_context/about-me.md` — role and context
- `01_context/goals.md` — current priorities

Look for:

**1. Repeated workflows without automation**
Any multi-step process the user does manually more than twice. Tag these as Skill / Hook / Scheduled Task candidates.

**2. Friction points**
Moments where context was missing, a step took longer than it should, or the user had to do something Claude couldn't help with.

**3. Skill gaps**
Tasks the user attempted that the current skill set doesn't handle well — drafting specific formats, processing specific file types, connecting to tools not yet integrated.

**4. Underused capabilities**
Integrations or skills that are set up but rarely triggered. Are they positioned wrong? Triggered on the wrong keywords? Or genuinely not needed?

---

## Phase 2: Research Available Solutions

For each friction point or gap identified, search for solutions:

**Check the Claude Code ecosystem:**
- Search for relevant MCP servers: look at https://github.com/modelcontextprotocol/servers and search for `mcp server [topic]`
- Check the Anthropic documentation for new hook types or skill patterns
- Look at community skill libraries if available

**Evaluate each candidate on three criteria:**
1. **Impact** — How much time or friction does this save per week? (Low / Medium / High)
2. **Fit** — Does this match how the user actually works, or is it solving a problem they don't have?
3. **Effort to build** — How long to implement? (< 30 min / 1-2 hours / Significant)

Only surface candidates that score Medium or High on impact AND Low or Medium on effort to build. Don't recommend high-effort, low-impact changes.

---

## Phase 3: Present Recommendations

Present findings in three sections:

### Recommended Builds
Things worth building now — high impact, reasonable effort.

For each:
```
**[Name]**
Type: Skill / Hook / Scheduled Task / MCP
What it does: [One sentence]
Why now: [What pattern or friction triggered this]
Estimated build time: [X minutes / hours]
Recommendation: Build it? [Yes / Worth discussing]
```

### On the Radar
Things worth watching but not ready to build — either low confidence they'd be used, or the solution isn't quite right yet.

For each:
```
**[Name]**
Why it's interesting: [Brief]
What needs to be true before building it: [Condition]
```

### Underperformers
Skills or integrations that aren't pulling their weight. Not a problem, just worth flagging.

For each:
```
**[Name]**
Usage: [How often it's been triggered in the past 30 days]
Issue: [Why it might not be getting used]
Suggestion: [Retire / Reposition / Leave for now]
```

---

## After Presenting

Wait for the user to review. For each recommended build:

- If approved: offer to build it immediately or schedule it
- If declined: note the reason in `04_learnings/automations.md` (so you don't re-recommend the same thing next month)
- If "worth discussing": explore the specifics before committing

When building an approved skill:
1. Create `.claude/skills/[skill-name]/SKILL.md`
2. Update `CLAUDE.md` skills table
3. Log the addition in `.claude/system/changelog.md`

When registering an approved scheduled task:
1. Create `.claude/scheduled-tasks/[task-name].md`
2. Ask the user to register it (or use the scheduled-tasks MCP if available)
3. Log in changelog

---

## Output

Write a brief discovery report to `04_learnings/sessions/[today]-skill-discovery.md`:

```markdown
# Skill Discovery — [Date]

## Patterns Reviewed
[Summary of what was reviewed and key signals found]

## Recommendations Made
[List of what was recommended]

## Decisions
[What was approved / declined / deferred]

## Built This Session
[What was actually built, if anything]
```
