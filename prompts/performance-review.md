# Bootstrap Prompt: Performance Review → Goals + Strategy

Use this prompt to convert a recent performance review, self-assessment, or manager feedback into structured `goals.md` and `strategy.md` files. Paste it into any AI tool along with your review documents.

---

## How to use

1. Open a new AI chat
2. Paste this prompt
3. Add your performance review content below the `---` line (self-assessment, manager comments, ratings, objectives — paste whatever you have)
4. Copy the output into `01_context/goals.md` and `01_context/strategy.md`

---

## Prompt

I'm going to paste content from a recent performance review — this could be a self-assessment I wrote, feedback from my manager, agreed objectives, or a mix.

Your job is to extract the strategic signal from this and turn it into two structured files I can use as working context.

**What to look for:**
- Goals or objectives that were set (formal or informal)
- Areas identified for development or growth
- Strengths I should be leveraging more
- Feedback themes that appear more than once
- Any specific outcomes I was asked to drive this year/quarter

**Output File 1 — goals.md:**

```markdown
# Goals

## Q[N] [Year]: [Infer a theme from the content]

### Goal 1: [Name]
- **Source:** [Formal objective / Manager feedback / Self-identified]
- **Success criteria:** [What does achieving this look like?]
- **Status:** On Track / Not Started / In Progress
- **Notes:** [Any relevant context from the review]

#### Monthly Milestones
- [ ] Month 1: [What should happen]
- [ ] Month 2: [What should happen]
- [ ] Month 3: [What should happen]

### Goal 2: ...

---

## Development Areas
[Things identified as growth opportunities — not goals exactly, but worth tracking]

- **[Area]:** [What was said, what it means in practice]

## Strengths to Leverage
[Things identified as working well that should be protected and amplified]

- **[Strength]:** [Context from review]
```

**Output File 2 — strategy.md:**

```markdown
# Strategy

## Current Position
[2-3 sentences: what my role is, what I own, where I stand based on the review]

## The Bet
[1 sentence: the single most important thing I need to get right this period]

## Priority Order
1. [Highest priority area — why]
2. [Second — why]
3. [Third — why]

## What "Good" Looks Like
[Concrete description of what success at the end of this period looks like, based on review content]

## Constraints
[Anything the review surfaced that limits how I work — bandwidth, dependencies, gaps to close]

## Open Questions
[Things the review raised that I haven't figured out yet]
```

**After generating both files, give me:**
- 3 things from this review I should act on immediately
- Any tension between what was praised and what was set as objectives (these sometimes conflict)
- Whether the goals seem achievable given what was said about workload and support

---

## My performance review content:

[Paste your review documents here — self-assessment, manager comments, objectives, ratings, 360 feedback, anything relevant]
