---
name: onboarding
description: Form-based interview that sets up the Personal OS. Populates all context files. Run on first session or to reset.
triggers:
  - /onboarding
  - First session when about-me.md is empty
---

You are running the Personal OS onboarding interview. This sets up the entire system through a series of structured forms. By the end, all context files will be populated and the user will have a working OS with a first daily plan.

## Instructions

Work through 6 rounds of AskUserQuestion forms. After each round, immediately write the data to the appropriate files. Don't wait until all rounds are complete.

Do not ask for information you already have. If some files have content, skip the relevant round and note what was already populated.

---

## Round 1: Who Are You

Ask these questions as a form:

1. "What's your name?" (free text, required)
2. "What's your role and what do you own?" (free text, e.g., "VP of Product at Acme Corp — I own the roadmap, a team of 6, and the relationship with our enterprise clients")
3. "Tell me about your team — names, roles, what you work on together" (free text, optional)
4. "What's your personal situation that affects your work capacity? Family commitments, health considerations, side projects, anything that shapes how much you can realistically take on." (free text, optional but encouraged)

**After Round 1:** Write `01_context/about-me.md` with the Role & Responsibilities, Team, and Personal Load sections populated.

---

## Round 2: What Are You Working Toward

Ask these questions as a form:

1. "What are your 2-3 biggest goals for this quarter? One per line — just name them for now." (free text)
2. "For each goal, what does success look like? What would prove you achieved it?" (free text)
3. "What are your main areas of responsibility? These become your 'pillars' — the categories your work falls into. Examples: Product & Engineering, Content & Thought Leadership, Client Work, Operations, Personal." (free text)

**After Round 2:**
- Write `01_context/goals.md` with quarterly goals + success criteria + empty monthly milestones
- Update `01_context/task-conventions.md` with the pillar definitions from their answer
- Note: Monthly milestones are empty — tell the user they'll add these as they understand the quarter better

---

## Round 3: Right Now

Ask these questions as a form:

1. "What are you working on right now? List your top 3-5 priorities — the things that matter most this week." (free text)
2. "Is anything blocking you on any of these?" (free text, optional)
3. "Have you made any commitments to people recently that are still open? Examples: 'I told my manager I'd send a proposal by Friday', 'I promised a colleague I'd review their work'." (free text, optional)

**After Round 3:**
- Write `01_context/current-week.md` — format the top priorities as P0/P1/P2 tasks with IDs (T-[today]-01, etc.). Connect each to a quarterly goal where possible.
- If they listed more than 5 priorities, put the rest in `01_context/backlog.md`
- Write any commitments to `01_context/commitments.md` (C-001, C-002, etc.)

---

## Round 4: How You Work

Ask these questions as a form:

1. "When do you do your best deep work?" with options: Morning (before 11am) / Late morning / Afternoon / Evening / No consistent pattern
2. "What's your biggest productivity challenge?" with multi-select options:
   - Perfectionism — I over-refine things that are good enough to ship
   - Starting but not finishing — I lose momentum on the last 20%
   - Too many ideas — I jump to new things before finishing current ones
   - Avoiding hard tasks — I do creative work when I should be doing hard/boring work
   - Decision fatigue — I struggle to choose when multiple options exist
   - Sharing — I hesitate to put work out before it feels "ready"
   - Other (describe)
3. "What tools do you use? List your task manager, calendar app, project management tool, and note-taking tool." (free text)
4. "When you're uncertain what to work on, do you want: One clear recommendation / A prioritized list / To think it through together?" with options.

**After Round 4:**
- Update `01_context/about-me.md` with the Working Patterns and What I Need from Claude sections
- Note the productivity challenges — these determine which protocols in rules-of-engagement.md get emphasized
- Note the tools — the system will adapt to what they use

---

## Round 5: Your Voice

Ask these questions as a form:

1. "Paste a short paragraph of something you've written that sounds like you — an email, a message, a document excerpt. Or describe how you communicate: formal/casual, direct/exploratory, short/detailed." (free text, the more specific the better)
2. "What writing style makes you cringe?" with multi-select options:
   - Corporate buzzwords (leverage, synergy, unlock, drive)
   - Over-formal / academic language
   - Excessive hedging (it could potentially, one might argue)
   - Filler phrases (in conclusion, it's worth noting, importantly)
   - Generic AI language (great question!, absolutely!, that's really interesting)
   - None of these bother me much
3. "What are the main contexts you write in? Examples: internal team updates, client proposals, LinkedIn posts, technical documentation, strategy docs." (free text)

**After Round 5:**
- Write `01_context/voice-and-style.md` — derive voice principles from their sample/description, populate anti-patterns from their selections, list their writing modes

---

## Round 6: Key People

Ask these questions as a form:

1. "Name 3-5 people you work with most closely. For each person, tell me: their name, their role, what you work on together, and how they prefer to communicate (if you know)." (free text — they can do one person per line or free-form)

**After Round 6:**
- For each person mentioned, create a page in `03_people/internal/` or `03_people/external/` using the people-template.md format
- Populate the Overview and Context & Notes sections from what they shared

---

## Post-Onboarding

After all 6 rounds are complete:

1. **Write `06_System/changelog.md`** — add v1.0 entry:
   - Date: today
   - Trigger: Initial setup via /onboarding
   - Changes: All context files populated through onboarding interview
   - Expected outcome: Working OS from day 1, context available to Claude on every session

2. **Write `01_context/strategy.md`** — derive from goals + role context. Use the strategy template structure. Keep it brief — this is a starting point they'll refine.

3. **Run the morning briefing** — produce a first daily quickref at `01_context/daily/[today].md` using whatever context was just captured.

4. **Present a summary:**
   - What got set up
   - Your first daily plan (from the quickref)
   - One clear task to start with right now
   - How to run each skill when they need it

Keep the summary short. End with the single clearest first action.

---

## Quality Checks Before Finishing

- `about-me.md` has real content (not just template headers)
- `goals.md` has at least one quarterly goal with success criteria
- `current-week.md` has tasks formatted with IDs and priorities
- `voice-and-style.md` has specific principles, not just the template structure
- `task-conventions.md` has their actual pillars, not placeholders
- At least one person page exists in `03_people/`

If any of these are missing, loop back and collect the missing information before finishing.
