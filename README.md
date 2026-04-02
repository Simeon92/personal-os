# Personal OS

A Personal Operating System built on Claude Code. Compounds learning over time, tracks commitments, and connects your quarterly goals to daily work.

---

## What this system does

**Remembers how you work.** Every session, Claude reads your current priorities, open commitments, and accumulated preferences before you say a word. After a few weeks, it knows your working style, your patterns, and your mistakes — and applies them automatically.

**Connects goals to daily work.** Your quarterly goals flow down to monthly milestones, weekly priorities, and a daily focus list. Every task connects upward to something that matters. The system flags when milestones are slipping.

**Tracks what you've promised people.** Every commitment you make — to your manager, your team, a client — gets logged with a due date and surfaced daily until it's done.

**Captures ideas without killing flow.** Dump anything into `00_inbox/`. Run `/triage` and Claude routes everything to the right place — tasks, backlog, ideas, people pages — using your goals as context.

**Learns session by session.** At the end of every session, `/process-session` captures preferences, mistakes, ideas, and repeated workflows. Patterns get promoted to permanent memory during the weekly retro. Over time, Claude gets better at working with you specifically.

**Drafts in your voice.** When you need something written, `/draft` produces a first version that sounds like you — not a corporate document. It reads your voice-and-style profile before writing a single word.

---

## Setup

### Step 1 — Download Claude Desktop

Go to [claude.ai/download](https://claude.ai/download) and download the Mac app. Open it and sign in.

### Step 2 — Download Personal OS

On this GitHub page, click the green **Code** button, then **Download ZIP**. Find the zip in your Downloads folder and double-click it to unzip. You'll get a folder called `personal-os-main` — rename it to `personal-os` if you like.

### Step 3 — Open it in Claude

In Claude Desktop, click the **Code** tab. Open the `personal-os` folder — either drag it in or use the folder picker.

Once the folder is open, send this message to Claude:

```
Run the onboarding skill to set up my Personal OS.
```

Claude will read the onboarding skill and start the interview.

### Step 4 — Complete onboarding

The onboarding interview takes 15–20 minutes. It covers:
- Your role and what you own
- Your quarterly goals and what success looks like
- What you're working on right now
- How and when you do your best work
- Your writing style and voice
- The key people you work with

By the end, all your context files are populated and you have a first daily plan ready to go.

### Step 5 — Register scheduled tasks

After onboarding, paste this into Claude:

```
Register the four scheduled tasks from .claude/scheduled-tasks/ — morning briefing, weekly retro, idea incubation, and monthly audit.
```

This sets up your recurring automations:
- **Morning briefing** — weekdays at 8am: priorities, commitments, meetings, daily plan
- **Weekly retro** — Friday at 4pm: what shipped, what slipped, pattern promotion
- **Idea incubation** — Monday at 9am: surfaces unblocked ideas from your backlog
- **Monthly audit** — 28th of each month: system health, skill assessment, maintenance

### Step 6 — Connect your tools

Set up whichever integrations apply to you — see the **Integrations** section below. Chrome is recommended for everyone. Asana, Jira, and Outlook depend on what you use.

---

## Skills

| Skill | When to use it |
|-------|---------------|
| `/onboarding` | First setup, or to reset the system |
| `/triage` | When files are sitting in `00_inbox/` |
| `/morning-briefing` | Start of day — priorities, meetings, deep work windows |
| `/weekly-retro` | Friday — what shipped, what slipped, what you learned |
| `/process-session` | End of session — captures preferences, mistakes, ideas (auto-triggered) |
| `/health-check` | "What's slipping?" — scans for stale tasks and overdue commitments |
| `/done-enough` | When you're over-refining something that's ready to ship |
| `/draft` | "Draft me a..." — writes in your voice |
| `/monthly-audit` | End of month — full system health and maintenance |
| `/system-improve` | "How can we improve the system?" |

---

## Integrations

All integrations are set up through Claude Desktop's built-in connectors — no config file editing required.

1. Open Claude Desktop
2. Go to **Settings → Connectors**
3. Search for and add the ones you need

### Chrome (web research) — recommended for everyone
Lets Claude browse the web, read articles, and pull content directly into your sessions.

1. Install the [Claude-in-Chrome extension](https://chromewebstore.google.com/detail/claude-ai-chrome-extensio/ndeejgokieklaealoikgdmbmjdkmaoco) in Chrome
2. In Claude Desktop, go to **Settings → Connectors** and add **Claude in Chrome**
3. Restart Claude Desktop

### Task Manager
During onboarding, you'll be asked what task manager you use. Claude will connect to it automatically if a connector is available. Supported tools: Things 3, Asana, Todoist, Linear, Notion, ClickUp, Microsoft To Do.

In Claude Desktop, go to **Settings → Connectors** and search for your tool to set it up. If your tool isn't available or you don't have one, Claude will offer to set you up with Asana.

### Jira (projects and sprints)
Lets Claude reference sprint status and project context during retros and planning. In Claude Desktop, go to **Settings → Connectors** and search for **Jira** or **Atlassian**.

### Outlook Calendar
No extra setup required. During onboarding, you'll be asked for your Outlook calendar URL — just open Outlook in Chrome and copy the address bar. The morning briefing reads your calendar directly from the browser each day.
