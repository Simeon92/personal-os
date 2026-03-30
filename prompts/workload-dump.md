# Bootstrap Prompt: Workload Dump → Current Week + Backlog

Use this prompt to turn a brain dump of everything you're juggling into a structured `current-week.md` and `backlog.md`. Paste it into any AI tool (Claude, ChatGPT, Gemini) along with your dump.

---

## How to use

1. Open a new AI chat
2. Paste this prompt
3. Add your workload dump below the `---` line — write stream-of-consciousness, don't organise it
4. Copy the output into `01_context/current-week.md` and `01_context/backlog.md`

---

## Prompt

I'm going to dump everything I'm currently working on, worrying about, or owe someone. It's going to be messy and unstructured — that's fine.

Your job is to turn this into two structured files.

**Rules before you start:**
- Max 3 P0s (must happen this week, blocking something or someone)
- Max 5 P1s (important, high value, can flex if needed)
- Everything else goes to backlog — sorted by rough urgency (this month / next month / someday)
- Flag anything that looks like a commitment to another person separately
- Don't invent tasks I didn't mention — work with what I give you

**Output File 1 — current-week.md:**

```markdown
# This Week: [Week of DATE]

## P0 — Must happen this week (max 3)
- [ ] [T-001] [Task] — *Definition of done: [what does complete look like]*
- [ ] [T-002] ...

## P1 — High priority, can flex (max 5)
- [ ] [T-003] [Task] — *Definition of done: ...*
- [ ] [T-004] ...

## P2 — Should happen, lower urgency
- [ ] [T-005] [Task]

## Blockers
[Anything mentioned as blocked or waiting on someone]

## Commitments Due This Week
| ID | To | What | Due |
|----|----|------|-----|
| C-001 | [Name] | [What you promised] | [Date or ASAP] |
```

**Output File 2 — backlog.md:**

```markdown
# Backlog

## This Month
- [ ] [Task] — [Brief context]

## Next Month
- [ ] [Task]

## Someday / Maybe
- [ ] [Task]

## On Hold (waiting on someone/something)
- [ ] [Task] — *Waiting on: [who/what]*
```

**After generating both files, give me:**
- A one-sentence summary of what this week is actually about
- Any overload flags (if I gave you more than 3 genuinely urgent things, tell me which 2-3 are the real P0s)
- Any commitments I mentioned that I should log immediately

---

## My workload dump:

[Paste your brain dump here — tasks, projects, deadlines, things you promised people, things you're worried about, half-finished work, everything]
