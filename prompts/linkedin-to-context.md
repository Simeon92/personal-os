# LinkedIn → About Me + Strategy Prompt

**What this does:** Converts your LinkedIn profile into a populated `about-me.md` and a starter `strategy.md`.

**How to use:**
1. Go to your LinkedIn profile
2. Copy your headline, About section, and your most recent 2-3 job descriptions
3. Paste the prompt below into any AI tool, add your LinkedIn content, and run it
4. Paste the two outputs into `01_context/about-me.md` and `01_context/strategy.md`

---

## PROMPT

I'm going to share my LinkedIn profile. Use it to produce two structured documents for my personal operating system.

Here's my LinkedIn content:

**Headline:**
[PASTE YOUR HEADLINE]

**About section:**
[PASTE YOUR ABOUT SECTION]

**Current role description:**
[PASTE YOUR CURRENT ROLE DESCRIPTION]

**Previous role (optional):**
[PASTE IF RELEVANT]

---

Produce two documents:

**Document 1: about-me.md**

Use these exact sections:

## Role & Responsibilities
What I do, what I own, what I'm accountable for. Be specific — not just the job title, but the actual scope.

## Team
Who I work with directly. If not explicit in the profile, infer from the role description.

## What I'm Working Toward
Based on the profile, what does this person appear to be building toward professionally? What's the trajectory?

## Working Patterns
Based on how they've described their work, what can we infer about how they operate? Do they lead strategy, execution, or both? Do they work cross-functionally? What seems to energise them?

## What I Need from Claude
Based on the role complexity and responsibilities, what are the most likely areas where an AI PM would be most useful? (e.g., managing competing priorities, drafting stakeholder comms, staying on top of commitments)

---

**Document 2: strategy.md**

Use these exact sections:

## The Core Problem I'm Solving
Based on the role and context, what is the fundamental problem this person exists to solve in their organisation?

## Winning Aspiration
What does success look like in 2-3 years based on the trajectory visible in the profile?

## Where I Play
What do they focus on? What's their scope? What do they appear to deliberately not do?

## How I Win
What makes their approach distinctive? What capabilities do they bring that others don't?

## Capabilities Required
What skills, relationships, or resources are needed to execute on this?

Keep both documents grounded in what's actually in the profile — don't invent things. Where something is unclear, write "[To fill in]" rather than guessing.

