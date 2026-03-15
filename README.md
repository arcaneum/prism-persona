# PRISM Persona Framework

**Persona Reference for Intelligent System Modelling**

PRISM is a 16-dimension framework for teaching AI systems your complete persona — not just your voice, but how you think, what you value, how you make decisions, and where your boundaries lie.

---

## The Problem

When people try to personalise AI, they usually start with tone and writing style — and often stop there. The result sounds right on the surface, but falls apart the moment the AI needs to make a judgement call, take a position, or navigate a sensitive situation.

An AI that matches your writing style but makes decisions you would never make, holds positions you disagree with, or fails to respect your ethical boundaries is not a persona clone. It is a voice skin over a generic mind.

PRISM goes deeper. Sixteen dimensions capture the full picture: identity, values, philosophy, decision-making, emotional texture, anti-patterns, relationships, and more. The result is an AI collaborator that does not just write like you — it thinks like you.

## The 16 Dimensions

| # | Dimension | What It Captures |
|---|-----------|-----------------|
| 00 | Identity | Who you are — role, background, professional context |
| 01 | Values & Ethics | Non-negotiable principles, moral positions |
| 02 | Philosophy | Worldview, positions on AI, technology, business, education |
| 03 | Voice & Tone | Writing style, rhythm, sentence patterns |
| 04 | Anti-Patterns | Hard rules — what to never do, say, or imply |
| 05 | Communication Style | Directness, formality, warmth, audience adaptation |
| 06 | Decision-Making | Risk tolerance, research depth, frameworks used |
| 07 | Working Style | Tools, workflows, routines, collaboration preferences |
| 08 | Knowledge & Expertise | Domains of depth, awareness, and blind spots |
| 09 | Aspirations | Goals, vision, what success looks like |
| 10 | Relationships | Audience, partnerships, community, competitors |
| 11 | Content & Creation | Formats, platforms, quality standards, publishing cadence |
| 12 | Brand & Visual | Colours, typography, brand versus personal voice |
| 13 | Emotional Texture | How emotions surface, comfort zones, reactions |
| 14 | Examples & Samples | Annotated real writing across contexts |
| 15 | Evolution Log | Dated changelog of shifts, additions, retirements |

Each dimension has its own file with guiding questions, structure guidance, and space for your content. Start with the ones that matter most — you do not need to complete all sixteen on day one.

## Directory Structure

```
prism-persona/
  template/
    persona/              # The 16 dimension files (00-identity.md through 15-evolution-log.md)
    samples/              # Annotated writing samples by format
      blog/
      linkedin/
      technical/
      threads/
    synthesis/            # Generated summaries (PERSONA-BRIEF.md, PERSONA-PROMPT.md)
    evolution/            # Living document system
      daily-log/          # Daily micro-updates
    context/              # Supplementary context files
    scripts/              # Helper scripts for synthesis and validation
  examples/               # Worked examples with fictional personas
  docs/                   # Framework documentation and guides
```

## Prerequisites

PRISM is a collection of markdown files that live on your local machine. Your AI tool reads them from disk at inference time, so they must be accessible as local files. No programming language, no dependencies, no installation required.

You need:

- **A local folder** — the persona files must be on your filesystem where your AI tool can read them
- **An AI coding tool that can read and write local files** — Claude Code, Cursor, Windsurf, Continue, or similar

That's it. Your AI tool handles the rest — including setting up your persona.

## Quick Start

### 1. Get the framework onto your machine

**Option A — Clone** (if you use git):
```bash
git clone https://github.com/YOUR-USERNAME/prism-persona.git
cd prism-persona
```

**Option B — Download ZIP** (no git needed): Click the green **Code** button on GitHub → **Download ZIP**. Unzip to a local folder.

### 2. Point your AI tool at the repo

Open the folder in your AI coding tool (Claude Code, Cursor, Windsurf, etc.) and start a conversation. The AI agent will detect that the persona hasn't been set up yet and automatically offer to guide you through onboarding.

**In Claude Code:**
```bash
cd prism-persona
claude
```

**In Cursor:** Open the folder as a project. Start a new chat — the `.cursorrules` file will trigger onboarding.

**In other tools:** Open a conversation with access to the repo files and say: *"Read the CLAUDE.md and set up my persona."*

### 3. Follow the AI-guided setup

Your AI agent will offer three paths:

| Path | Time | Best For |
|------|------|----------|
| **Guided Conversation** | 20-30 min | The agent asks you targeted questions and populates dimensions from your answers |
| **Artefact Analysis** | 10 min + review | You share existing writing (blog posts, social media, emails, bios) and the agent analyses it to extract your persona |
| **Combined** (recommended) | 30-40 min | Questions first, then artefacts to enrich and validate |

The agent handles everything: asking questions, analysing your content, writing the dimension files, generating synthesis documents, and explaining how to use the result. You just answer questions and review what it produces.

### 4. Use your persona

Once setup is complete, your AI tool will automatically load your persona in future sessions. For tools that cannot read local files (ChatGPT, Gemini web), paste the contents of `template/synthesis/PERSONA-PROMPT.md` into their system prompt or custom instructions. See the [Integration Guide](docs/INTEGRATION-GUIDE.md) for tool-specific details.

### 5. Keep it alive

PRISM is a living document system. Your persona is not static — it evolves as you do. Use the [Living Document Protocol](docs/LIVING-DOCUMENT-PROTOCOL.md) to keep your persona current with periodic updates.

## Documentation

| Document | Purpose |
|----------|---------|
| [AI Onboarding Protocol](docs/ONBOARDING.md) | How the AI agent guides you through setup |
| [Quickstart Guide](docs/QUICKSTART-GUIDE.md) | Reference: questionnaire, artefact types, progressive build |
| [Getting Started](docs/GETTING-STARTED.md) | Step-by-step setup guide |
| [Framework Overview](docs/FRAMEWORK-OVERVIEW.md) | The 16 dimensions explained in depth |
| [Dimension Guide](docs/DIMENSION-GUIDE.md) | Expanded prompting questions and examples |
| [Why Voice Is Not Enough](docs/WHY-VOICE-IS-NOT-ENOUGH.md) | Why persona goes beyond voice |
| [Living Document Protocol](docs/LIVING-DOCUMENT-PROTOCOL.md) | How to keep your persona current |
| [Conflict Resolution](docs/CONFLICT-RESOLUTION.md) | Handling contradictions in the persona |
| [Integration Guide](docs/INTEGRATION-GUIDE.md) | Using PRISM with Claude, ChatGPT, Cursor, and more |

## A Living Document System

Static persona files go stale. PRISM includes a protocol for daily micro-updates, weekly reviews, and monthly synthesis — so your AI persona evolves alongside you rather than drifting into a snapshot of who you were six months ago.

When conflicts arise between dimensions (and they will — people are contradictory), the [Conflict Resolution](docs/CONFLICT-RESOLUTION.md) protocol ensures nothing changes without your explicit review and approval.

## Contributing

Contributions are welcome. See [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.

## Licence

MIT Licence. See [LICENSE](LICENSE) for details.

## Author

Created by [Anil Clifford](https://github.com/arcaneum) / [Eden Digital](https://edendigital.io)

---

*PRISM is framework-agnostic. It works with any AI tool that accepts system prompts or context files — Claude, ChatGPT, Cursor, Copilot, and anything that comes next.*
