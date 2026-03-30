# Personal OS

A Personal Operating System for Claude Code. Compounds learning over time, tracks commitments, connects quarterly goals to daily work.

---

## Setup

**Requirements:** [Claude Code](https://claude.ai/code) installed. Claude Pro or higher recommended.

**Option A — Download (no git required):**
Download the zip from GitHub, unzip it, open Terminal, drag the folder into Terminal to get the path, then:
```bash
cd /path/to/personal-os
claude
```

**Option B — Clone with git:**
```bash
git clone https://github.com/Simeon92/personal-os.git
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

---

## Integrations

The OS works out of the box, but connects to four external systems for full capability.

### Chrome (web research)
Install the [Claude-in-Chrome extension](https://chromewebstore.google.com/detail/claude-in-chrome/omphmhniahkabokojfbnagdmejmdcacp) from the Chrome Web Store, then add it to your Claude Code MCP config:

```json
{
  "mcpServers": {
    "Claude_in_Chrome": {
      "command": "npx",
      "args": ["-y", "claude-in-chrome-mcp"]
    }
  }
}
```

Once connected, Claude can read web pages, pull content from URLs, and do live research without leaving the session.

### Asana (tasks)
Install the Asana MCP server, then add it to your Claude Code MCP config. Full instructions: https://github.com/roychri/mcp-server-asana

Once connected, Claude can create, update, and complete Asana tasks directly from conversation.

### Jira (projects and sprints)
Install the Atlassian MCP server. Full instructions: https://github.com/sooperset/mcp-atlassian

Once connected, Claude can reference sprint status and project context during retros and planning.

### Outlook Calendar and Email (meetings)
No MCP needed. Just connect your work account to macOS:

1. Open **System Settings → Internet Accounts**
2. Click **Add Account → Microsoft Exchange**
3. Sign in with your work email and password
4. Enable **Calendar** and **Mail**

Your Outlook calendar will sync to Apple Calendar. Today's meetings appear automatically in every session and morning briefing.
