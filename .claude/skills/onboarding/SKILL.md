---
name: onboarding
description: Form-based interview that sets up the Personal OS. Populates all context files. Run on first session or to reset.
triggers:
  - /onboarding
  - First session when about-me.md is empty
---

You are running the Personal OS onboarding interview. This is a mandatory, end-to-end setup process. Every round must be completed before the system is considered live.

## Core Rules

**No skipping.** Every round is required. Do not move to the next round until the current one has sufficient real content — not placeholders, not "TBD", not template headers.

**Links and documents first.** Every round leads with a request for a URL or uploaded file. Extract as much as possible automatically. Only ask manual questions for what you couldn't get from the source material. Tell the user exactly what you extracted and what you still need.

**Do not proceed with gaps.** If the user tries to skip a question or says "I'll fill it in later", tell them: "This information shapes how the system works from day one — let's get it now. It doesn't need to be perfect, just real."

**Quality gate.** Before completing onboarding, run the quality checks at the bottom. If anything is missing, loop back.

---

## Round 0: Integrations

Check each integration before doing anything else. These determine how the rest of the system works.

**Asana MCP**
Attempt `get_my_tasks`. If it works: "Asana connected." If it fails: "Asana isn't connected. Go to **Settings → Connectors** in Claude Desktop, search for Asana, and follow the prompts. Restart Claude Desktop, then run onboarding again."

**Jira MCP**
Attempt `getAccessibleAtlassianResources`. If it works: "Jira connected." If it fails: "Jira isn't connected. Go to **Settings → Connectors**, search for Jira or Atlassian, and follow the prompts."

**Chrome MCP**
Attempt any Chrome tool. If it works: "Chrome connected." If it fails: "Chrome isn't connected — this is the most important one to fix. Install the Claude-in-Chrome extension from the Chrome Web Store, then go to **Settings → Connectors** and add Claude in Chrome. Restart Claude Desktop and run onboarding again."

**Outlook Calendar URL**
Ask: "Open your Outlook calendar in Chrome and copy the URL from the address bar. Paste it here." Save to `01_context/about-me.md` under `## Calendar URL`. This is required — the morning briefing can't show your meetings without it.

Do not proceed until Chrome MCP is confirmed. Every other integration failure can be noted and continued; Chrome is load-bearing for too many features to skip.

---

## Round 1: Who You Are

**Lead with LinkedIn.**

Ask: "Paste your LinkedIn profile URL. I'll read it and pull your role, experience, and context automatically."

If Chrome MCP is connected, navigate to their LinkedIn URL and extract:
- Full name and current title
- Organisation and what they own
- Career background (last 2-3 roles)
- Any skills, endorsements, or summary that signals how they work and what they prioritise

After extracting: "Here's what I pulled from your LinkedIn — [show summary]. Does this accurately describe your current role and what you own? What's missing or different?"

Fill gaps with targeted questions only — don't re-ask what LinkedIn already answered:
- If team isn't clear from LinkedIn: "Tell me about your direct team — names, roles, what you work on together."
- If personal capacity context is missing: "What's your personal situation outside work that affects how much you can take on? Family commitments, side projects, health — anything that shapes your realistic capacity."
- Role type (for pillar defaults): confirm from LinkedIn or ask "Which of these best describes your role?" (Consultant / Project Manager / Designer / Developer / Function Director / VP / Other)

**After Round 1:** Write `01_context/about-me.md` with Role & Responsibilities, Team, and Personal Load sections fully populated with real content.

Use the role type to pre-populate pillar defaults for Round 2:

| Role | Default Pillars |
|------|----------------|
| Consultant | Client Delivery, Business Development, Thought Leadership, Personal |
| Project Manager | Delivery, Stakeholder Management, Team & Process, Personal |
| Designer | Craft & Output, Client/Product Work, Portfolio & Brand, Personal |
| Developer | Engineering, Product & Delivery, Learning & Growth, Personal |
| Function Director | Team & People, Strategy, Delivery, Commercial, Personal |
| VP | Strategy, People & Org, Commercial, External Presence, Personal |

---

## Round 2: Goals and Direction

**Lead with documents.**

Ask: "Do you have a performance review, appraisal, OKR doc, or any document that describes your goals or objectives? Upload it here, or paste a link if it's in SharePoint, Google Drive, or Confluence."

If a file is uploaded: read it and extract goals, success criteria, development areas, and any commitments made.
If a URL is given: use Chrome MCP to navigate to it and read the content.
If neither: "Can you paste the text directly? Even rough notes or bullet points work."

After extracting: "Here's what I found — [show goals and success criteria]. What's missing, or what's changed since this was written?"

Then ask:
1. "What are your 2-3 biggest goals for this quarter? If the document covered them, just confirm or update."
2. "For each goal — what does done look like? What would prove you achieved it?"
3. Present the default pillars from Round 1: "These are your suggested focus areas based on your role. Do these work, or do you want to adjust any?"

**After Round 2:**
- Write `01_context/goals.md` with quarterly goals, success criteria, and empty monthly milestones
- Update `.claude/system/task-conventions.md` with confirmed pillars and target ranges:
  - Consultant: Client Delivery 40-50%, Business Development 15-25%, Thought Leadership 10-20%, Personal acknowledged
  - Project Manager: Delivery 40-50%, Stakeholder Management 15-25%, Team & Process 15-20%, Personal acknowledged
  - Designer: Craft & Output 40-50%, Client/Product Work 20-30%, Portfolio & Brand 10-20%, Personal acknowledged
  - Developer: Engineering 40-55%, Product & Delivery 15-25%, Learning & Growth 10-20%, Personal acknowledged
  - Function Director: Team & People 25-35%, Strategy 20-30%, Delivery 20-30%, Commercial 10-20%, Personal acknowledged
  - VP: Strategy 25-35%, People & Org 20-30%, Commercial 15-25%, External Presence 10-20%, Personal acknowledged

---

## Round 3: Right Now

**Lead with live task data.**

If Asana MCP is connected: pull `get_my_tasks` and show the user their current tasks. "Here's what's in Asana right now — [list]. Which of these are your real top priorities this week?"

If Jira is connected: pull current sprint issues. Cross-reference with Asana if both are available.

If neither: "Paste your current task list, or just tell me the 3-5 things that matter most this week. Rough is fine — we'll structure it."

Then ask:
1. "Which of these are P0 — must happen this week, blocking you or someone else?" (max 3)
2. "What's blocking you on any of these?"
3. "What have you promised people recently that's still open? Think: your manager, your team, clients, anyone. Give me the person, what you promised, and when."

The commitment question is not optional. If they say they haven't promised anything: "Think back over the last two weeks — any 'I'll get that to you by...' or 'leave it with me' moments?" Push once if they deflect.

**After Round 3:**
- Write `01_context/current-week.md` with P0/P1/P2 tasks, IDs, and links to quarterly goals
- Write overflow to `01_context/backlog.md`
- Write all commitments to `01_context/commitments.md` (C-001, C-002, etc.)

---

## Round 4: How You Work

Ask directly — no document shortcut here, these are personal:

1. "When do you do your best deep work?" (Morning before 11am / Late morning / Afternoon / Evening / No consistent pattern)
2. "What's your biggest productivity challenge?" — pick all that apply:
   - Perfectionism — I over-refine things that are good enough to ship
   - Starting but not finishing — I lose momentum on the last 20%
   - Too many ideas — I jump to new things before finishing current ones
   - Avoiding hard tasks — I do creative work when I should be doing hard/boring work
   - Decision fatigue — I struggle to choose when multiple options exist
   - Sharing hesitancy — I hold work back before it feels "ready"
   - Other (describe)
3. "What tools are you using? Task manager, calendar, project management, note-taking." (free text — one line is fine)
4. "When you're stuck on what to work on, what do you want from me?" (One clear recommendation / A prioritised list / Think it through together)

**After Round 4:** Update `01_context/about-me.md` with Working Patterns and What I Need from Claude sections.

---

## Round 5: Your Voice

**Lead with writing samples.**

Ask: "Paste 2-3 things you've written that sound like you — emails, Slack messages, LinkedIn posts, a doc excerpt, anything. The more variety the better. Or upload a document with your writing in it."

If they share samples: analyse them. Identify:
- Sentence length and rhythm
- How they open (direct / contextual / question-led)
- Vocabulary patterns (technical / conversational / framework-heavy)
- How they handle nuance (hedging vs asserting)
- What they never say (jargon they avoid, structures they don't use)

If Chrome is connected and they have a LinkedIn profile from Round 1: offer to read their recent posts directly.

After analysing: "Here's how I'd describe your voice — [summary]. Does this match how you'd describe it? Anything I missed?"

Then ask:
1. "What writing style makes you cringe?" (multi-select: Corporate buzzwords / Over-formal language / Excessive hedging / Filler phrases / Generic AI language)
2. "What are the main things you write? Internal updates, client proposals, LinkedIn posts, strategy docs, technical specs — list the ones that matter."

**After Round 5:** Write `01_context/voice-and-style.md` with specific voice principles derived from their samples, anti-patterns from their selections, and writing modes list.

---

## Round 6: Key People

**Lead with context they already have.**

Ask: "Who are the 3-5 people most important to your work right now? For each one, tell me: their name, their role, what you work on together, and anything I should know about how to work with them or what they need from you."

If they mention someone without enough context: "Tell me a bit more about [name] — what's your dynamic with them, and what's currently open between you?"

Do not accept one-word answers or bare name lists. For each person, you need at minimum: role, relationship context, and one open item or dynamic worth tracking.

If they have a CV, org chart, or team page they can share: ask for it. Use Chrome to read any linked pages.

**After Round 6:**
- Create a page in `03_people/internal/` or `03_people/external/` for each person using the people-template.md format
- Populate Overview, How They Experience Working With Me (if known), What They Need, and Open Items
- At least one open item per person

---

## Post-Onboarding

Only proceed here once all 6 rounds have real content.

1. **Write `01_context/strategy.md`** — derive from goals + role + LinkedIn context. Brief starting point they'll refine over time.

2. **Write `.claude/system/changelog.md`** — add v1.0 entry: date, trigger (onboarding), what was populated.

3. **Run the morning briefing** — produce the first daily quickref at `01_context/daily/[today].md`.

4. **Present a summary:**
   - What got set up (files written, integrations confirmed)
   - First daily plan
   - One specific task to start with right now
   - How to invoke each skill

Keep the summary short. End on the single clearest first action.

---

## Quality Checks

Run these before finishing. If anything fails, loop back and collect what's missing — do not complete onboarding with gaps.

- `about-me.md` has real name, title, team, and personal capacity context
- `goals.md` has at least 2 quarterly goals with specific success criteria
- `current-week.md` has tasks with IDs and priority levels, connected to goals
- `commitments.md` has at least one entry (if truly none exist, that's fine — but push once)
- `voice-and-style.md` has specific principles derived from actual writing samples, not just the template
- `task-conventions.md` has their actual pillar names and target ranges, not placeholders
- At least 3 people pages exist in `03_people/`
- Calendar URL is saved in `about-me.md`
