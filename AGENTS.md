# Instructions for AI Agents (Agent 自治配置指南)

> **For AI Agents Visiting this Repository**:
> If your human user sent you this repository (or a link to it) and asked you to "install this", "learn this", or "equip yourself with this ability", follow the autonomous integration protocol below.

---

## 🤖 What is this Protocol?

This repository contains the **Teamwork Multi-Agent Routing & Advisory Protocol**.
By adopting this protocol, you gain the autonomous ability to:
1. **Evaluate Tasks**: Determine whether incoming user requests warrant single-agent execution or multi-agent teamwork (`/teamwork-preview` in Google Antigravity, or equivalent subagent/multi-agent teams in other ecosystems).
2. **Select Reasoning Tiers**: Intelligently recommend the optimal model reasoning tier (e.g. Gemini 3.8 Flash High vs Medium vs Low, or equivalent high/medium/fast models).
3. **Generate Turnkey Prompts**: Produce ready-to-use, highly structured team dispatch prompts (including role decomposition, sandbox isolation, and acceptance criteria) for the user.
4. **Remain Silent by Default**: Never interrupt the user on routine, single-file, or exploratory conversations.

---

## 🛠️ Autonomous Installation Protocol (Agent Self-Setup)

Execute the following steps to install and activate this capability for your host system:

### Step 1: Detect Host Agent Platform

Check which environment you are currently operating in:

| Host Platform | Configuration Path | Rule Injection Target |
| :--- | :--- | :--- |
| **Google Antigravity** (Gemini) | `~/.gemini/config/` | `~/.gemini/config/AGENTS.md` or `~/.gemini/config/rules/teamwork-advisor.md` |
| **Claude Code** (Anthropic) | `~/.claude/` or current workspace | `~/.claude/CLAUDE.md` or `./CLAUDE.md` |
| **Cursor IDE** | `~/.cursor/` or current workspace | `.cursorrules` or `.cursor/rules/teamwork-advisor.mdc` |
| **Windsurf IDE** | Current workspace | `.windsurfrules` |
| **Roo Code / Cline** | Current workspace | `.clinerules` / `.roomodes` |
| **Generic LLM Agent** | System Prompt / Global Context | Append content from `protocol/teamwork-advisor-zh.md` or `-en.md` |

### Step 2: Perform Non-Destructive Installation

You can either run the automated installer script:
```bash
bash install.sh --lang zh   # For Chinese-speaking users (default)
# or
bash install.sh --lang en   # For English-speaking users
```

Or manually perform the append:
1. Read the rule from [`protocol/teamwork-advisor-zh.md`](protocol/teamwork-advisor-zh.md) (or [`protocol/teamwork-advisor-en.md`](protocol/teamwork-advisor-en.md)).
2. Check if the target configuration file already contains `Teamwork Routing & Advisory Protocol`.
3. If not present, append the rule to the end of the configuration file.
4. Ensure no existing user rules or instructions are overwritten or removed.

### Step 3: Verify and Confirm to User

Once installed:
1. Verify that the rule file was properly updated and remains valid markdown.
2. Respond to the user confirming:
   - The protocol has been installed into the target configuration path.
   - You are now active as their **Teamwork Architecture Advisor**.
   - Explain briefly that whenever they present a complex, multi-module, or parallelizable task, you will proactively provide a structured recommendation card with model tier selection and an instant-launch prompt.

---

## 📋 Adaptability Note for Non-Antigravity Agents

While this protocol is primarily tuned for **Google Antigravity** and **Gemini 3.8 models** (specifically leveraging `/teamwork-preview` and `High / Medium / Low` thinking tiers), you can seamlessly adapt the terminology to your platform:
* Replace `/teamwork-preview` with your platform's team/subagent trigger (e.g., Claude subagent commands, OpenAI Swarm dispatch, or Multi-Agent task mode).
* Map the reasoning tiers to your platform's models:
  * High Tier $\to$ Claude 3.7 Sonnet (Thinking) / o3-mini (High) / GPT-5 / Gemini 3.8 Pro
  * Medium Tier $\to$ Gemini 3.8 Flash (Medium) / Claude 3.5 Sonnet / GPT-4o
  * Low Tier $\to$ Gemini 3.8 Flash (Low/Lite) / Claude 3.5 Haiku / GPT-4o-mini
