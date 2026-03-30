# Personal OS

A Personal Operating System for Claude Code. Compounds learning over time, tracks commitments, connects quarterly goals to daily work.

---

## Complete Beginner Setup

Never used Claude before? Start here. This takes about 20 minutes.

### Step 1 — Create a Claude account

Go to [claude.ai](https://claude.ai) and sign up.

You'll need a **Pro plan** ($20/month) at minimum. If you plan to use this system heavily every day, **Max plan** gives you more usage and is worth it.

### Step 2 — Install Node.js

Claude Code runs on Node.js. You need to install it first.

1. Go to [nodejs.org](https://nodejs.org)
2. Download the **LTS** version (the left button — "Recommended for Most Users")
3. Open the downloaded file and follow the installer
4. When it's done, open **Terminal** (press `Cmd + Space`, type "Terminal", press Enter)
5. Type `node --version` and press Enter — you should see a version number like `v20.x.x`

### Step 3 — Install Claude Code

In Terminal, paste this and press Enter:

```bash
npm install -g @anthropic-ai/claude-code
```

When it's done, type `claude --version` to confirm it worked.

### Step 4 — Download Personal OS

1. On this GitHub page, click the green **Code** button
2. Click **Download ZIP**
3. Find the downloaded zip in your Downloads folder and double-click it to unzip
4. You'll have a folder called `personal-os-main` — rename it to `personal-os` if you like

### Step 5 — Open it in Claude Code

1. Open **Terminal**
2. Type `cd ` (with a space after it — don't press Enter yet)
3. Open Finder, find your `personal-os` folder, and **drag it into the Terminal window**
4. Terminal will fill in the path automatically — now press Enter
5. Type `claude` and press Enter

Claude Code will open. It detects the empty system and runs `/onboarding` automatically.

### Step 6 — Complete onboarding

The onboarding interview takes 15–20 minutes. It'll ask about your role, goals, current priorities, how you work, your writing style, and key people you work with.

By the end, all your context files are populated and you have a first daily plan.

### Step 7 — Register scheduled tasks

After onboarding, paste this into Claude:

```
Register the four scheduled tasks from .claude/scheduled-tasks/ — morning briefing, weekly retro, idea incubation, and monthly audit.
```

That's the core system running.

### Step 8 — Set up Chrome (recommended)

Chrome lets Claude browse the web, read articles, and pull content during your sessions.

1. Open Chrome and go to the [Claude-in-Chrome extension](https://chromewebstore.google.com/detail/claude-in-chrome/omphmhniahkabokojfbnagdmejmdcacp)
2. Click **Add to Chrome**
3. Open Terminal and run: `claude mcp add claude-in-chrome -- npx -y claude-in-chrome-mcp`
4. Restart Claude Code — Chrome will now be connected

---

## Already have Claude Code? Quick setup

```bash
# Option A — Download (no git required)
# Download the ZIP from GitHub, unzip it, then:
cd /path/to/personal-os
claude

# Option B — Clone with git
git clone https://github.com/Simeon92/personal-os.git
cd personal-os
claude
```

Claude detects an empty system and runs `/onboarding` automatically.

After onboarding, register scheduled tasks:
```
Register the four scheduled tasks from .claude/scheduled-tasks/ — morning briefing, weekly retro, idea incubation, and monthly audit.
```

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
| `/monthly-audit` | End of month |
| `/system-improve` | "How can we improve the system?" |

---

## Privacy

Uncomment the lines in `.gitignore` before your first commit if you're keeping this repo public — your `01_context/`, `03_people/`, and `04_learnings/` contain personal data.

---

## Integrations

### Chrome (web research)
See Step 8 above. Lets Claude browse and read pages during sessions.

### Asana (tasks)
Install the Asana MCP server, then add it to your Claude Code MCP config. Full instructions: https://github.com/roychri/mcp-server-asana

Once connected, Claude can create, update, and complete Asana tasks directly from conversation.

### Jira (projects and sprints)
Install the Atlassian MCP server. Full instructions: https://github.com/sooperset/mcp-atlassian

Once connected, Claude can reference sprint status and project context during retros and planning.

### Outlook Calendar and Email (meetings)
No MCP needed. Connect your work account to macOS:

1. Open **System Settings → Internet Accounts**
2. Click **Add Account → Microsoft Exchange**
3. Sign in with your work email and password
4. Enable **Calendar** and **Mail**

Your Outlook calendar will sync to Apple Calendar. Today's meetings appear automatically in every session and morning briefing.
