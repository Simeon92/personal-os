# Bootstrap Prompt: Appraisal & Feedback Docs → People Pages + Commitments

Use this prompt to extract useful working context from 360 feedback, appraisal outputs, or stakeholder feedback docs. Converts them into people pages and surfaced commitments you can act on.

---

## How to use

1. Open a new AI chat
2. Paste this prompt
3. Add your feedback documents below the `---` line (360 responses, appraisal notes, stakeholder feedback, peer comments — paste whatever you have)
4. Copy the people pages into `03_people/internal/` or `03_people/external/`
5. Copy the commitments into `01_context/commitments.md`

---

## Prompt

I'm going to paste feedback from a recent appraisal or 360 review — this might include comments from direct reports, peers, stakeholders, or my manager. Some of it may be anonymised.

Your job is to extract two types of working context:

1. **People pages** — what does this feedback tell me about how specific people experience working with me, and what do I need to do differently with them?
2. **Commitments** — what explicit or implicit commitments did I make (or should I make) based on what this feedback says?

**For people pages:**
Only create a page if the feedback is attributed to a named person or role you can identify. Skip fully anonymised comments — use those for the commitments section instead.

Use this format for each person:

```markdown
# [Name]

**Role:** [Their title/role]
**Relationship:** [Direct report / Peer / Stakeholder / Manager]

## Overview
[1-2 sentences: who they are, what you work on together]

## How They Experience Working With Me
[What this feedback tells me about their perspective — be honest, not defensive]

## What They Need From Me
[Specific things this feedback suggests they want more or less of]

## Open Items
- [ ] [Action I should take based on their feedback]

## Context & Notes
[Anything else worth remembering]

---
*Last updated: [today's date]*
```

**For commitments:**
Extract anything that reads as:
- A promise I made (explicit or implicit)
- Something I said I'd improve or change
- A development area I agreed to work on
- Something a stakeholder said they needed that I haven't delivered

Format:

```markdown
## Commitments from Appraisal/Feedback — [Date]

| ID | To | What | Due | Status |
|----|----|------|-----|--------|
| C-001 | [Name or "Team"] | [What I committed to] | [Date or Quarter] | open |
```

**After generating the files, give me:**
- The single clearest pattern across all the feedback (positive or developmental)
- The 2 things I should do in the next 30 days based on this
- Anything in the feedback that I might be tempted to dismiss but probably shouldn't

---

## My appraisal / feedback documents:

[Paste your 360 feedback, appraisal outputs, stakeholder comments, or peer feedback here]
