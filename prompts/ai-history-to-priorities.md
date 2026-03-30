# AI Chat History → Goals and Priorities Prompt

**What this does:** Scans your recent AI conversations and extracts current priorities, goals, recurring challenges, and key people — populating `goals.md` and `current-week.md`.

**How to use:**
1. Export your AI chat history:
   - **ChatGPT:** Settings → Data Controls → Export Data → download and open the conversations.json file
   - **Copilot / Gemini / Claude.ai:** Copy recent conversations manually from your chat history
2. Select conversations from the last 4-6 weeks that relate to work
3. Paste the prompt below into any AI tool, add your conversations, and run it
4. Paste the outputs into the relevant files

---

## PROMPT

I'm going to share extracts from my recent AI conversations. These are real conversations I've had about my work over the past 4-6 weeks. Analyse them and produce structured context for my personal operating system.

Here are my recent AI conversations:

[PASTE YOUR CONVERSATION EXTRACTS HERE]

---

Analyse everything and produce three outputs:

**Output 1: Quarterly Goals (for goals.md)**

Based on the themes, projects, and aspirations that come up repeatedly, identify 2-4 apparent quarterly goals. For each:
- Goal name
- What success looks like (inferred from the conversations)
- Evidence from the conversations that this is a real priority

Format:
## Goal: [Name]
- Success criteria: [What done looks like]
- Evidence: [Quotes or themes from conversations]

---

**Output 2: Current Week Priorities (for current-week.md)**

List the 5-8 most concrete, actionable things that appear to be in flight right now. Format as:
- [ ] [T-placeholder] [P0/P1/P2] [Task description] — *[definition of done]*

Prioritise as P0 if they appear urgent or time-sensitive, P1 if important but flexible, P2 if mentioned but not pressing.

---

**Output 3: Key Patterns (for about-me.md and learnings/preferences.md)**

List:
- Recurring challenges mentioned (what keeps coming up as hard?)
- Working preferences expressed (what approaches did I seem to prefer?)
- Key people mentioned by name and their apparent relationship to the work
- Any commitments made to people that appear to still be open

Be specific — pull actual phrases or situations, not generic observations.

