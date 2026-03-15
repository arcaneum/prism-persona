# Integration Guide

PRISM produces two key output files that make your persona usable across any AI tool:

| File | Purpose | Size |
|------|---------|------|
| `PERSONA-BRIEF.md` | Structured reference -- all dimensions in a scannable format | Longer, detailed |
| `PERSONA-PROMPT.md` | Optimised system prompt -- ready to drop into any AI tool | Concise, directive |

This guide covers how to integrate these files with every major AI tool and workflow.

---

## The General Principle

Any AI tool that accepts a system prompt, custom instructions, or context file can use your PRISM persona. The approach is always the same:

1. Find where the tool accepts persistent instructions
2. Paste or reference `PERSONA-PROMPT.md` (for generation) or `PERSONA-BRIEF.md` (for deeper context)
3. Test with a representative prompt to verify the persona is applied

Use `PERSONA-PROMPT.md` when you need concise, directive instructions (most tools). Use `PERSONA-BRIEF.md` when the tool has a large context window and you want the AI to have full access to your persona dimensions.

---

## Claude Code

Claude Code is the primary development environment for PRISM, so integration is the most seamless.

### Project-Level Reference

Add a reference to your persona in any project's `CLAUDE.md`:

```markdown
## Persona Context

For content generation, voice alignment, and communication tasks,
reference the PRISM persona files:

- Brief: path/to/your-persona/synthesis/PERSONA-BRIEF.md
- Prompt: path/to/your-persona/synthesis/PERSONA-PROMPT.md
```

Claude Code will read these files when instructed, giving it full persona context for the session.

### Create a /persona Skill

For quick access, create a skill at `~/.claude/skills/persona/SKILL.md`:

```markdown
# /persona Skill

Load the PRISM persona context for content generation.

## Usage
Invoke with `/persona` before any content creation task.

## Steps
1. Read path/to/your-persona/synthesis/PERSONA-PROMPT.md
2. Apply all persona constraints to subsequent outputs
3. Flag any requests that would conflict with stated persona values
```

### Direct Context Loading

For one-off use, simply instruct Claude Code:

```
Read path/to/your-persona/synthesis/PERSONA-PROMPT.md
and use it as context for the following task...
```

---

## ChatGPT

### Custom Instructions

1. Open ChatGPT settings
2. Navigate to **Personalisation** > **Custom Instructions**
3. Paste the contents of `PERSONA-PROMPT.md` into the "How would you like ChatGPT to respond?" field
4. Save

This applies your persona to all conversations. To limit it to specific chats, use the GPT builder instead.

### GPT Builder (Custom GPT)

1. Create a new GPT via **Explore GPTs** > **Create**
2. In the **Configure** tab, paste `PERSONA-PROMPT.md` into the **Instructions** field
3. Name it something like "My Voice" or "PRISM Persona"
4. Save and use this GPT when you need persona-aligned outputs

### Per-Conversation Usage

If you do not want to set Custom Instructions globally, paste the prompt at the start of any conversation:

```
Use the following persona for all responses in this conversation:

[paste PERSONA-PROMPT.md contents]
```

---

## Cursor

### .cursorrules File

Add your persona to Cursor's project-level rules:

1. Create or open `.cursorrules` in your project root
2. Add a persona section with the contents of `PERSONA-PROMPT.md`
3. Cursor will apply these rules to all AI interactions in the project

```markdown
# .cursorrules

## Persona
[paste PERSONA-PROMPT.md contents here]

## Code Style
[your existing code rules]
```

### Context File

Alternatively, include `PERSONA-PROMPT.md` as a context file:

1. Open the Cursor chat panel
2. Use the `@` mention to reference the file directly
3. Cursor will include it in the AI's context for that conversation

---

## Windsurf

### Rules File

Windsurf uses `.windsurfrules` (or its equivalent context configuration):

1. Create `.windsurfrules` in your project root
2. Include the contents of `PERSONA-PROMPT.md`
3. Windsurf applies these rules to all AI-assisted interactions

### Context Inclusion

Most Windsurf configurations allow you to specify additional context files. Add the path to `PERSONA-PROMPT.md` in your workspace settings.

---

## Continue

### .continuerules or Context Configuration

Continue (the open-source AI code assistant) supports context files:

1. Add `PERSONA-PROMPT.md` to your Continue context configuration
2. Reference it in `.continuerules` if your version supports it
3. Alternatively, paste the contents into Continue's system prompt settings

---

## Other AI Code Editors

The pattern is consistent across tools:

1. **Find the rules/context file** -- most editors have one (`.cursorrules`, `.windsurfrules`, `CLAUDE.md`, etc.)
2. **Paste or reference PERSONA-PROMPT.md** -- either inline or as a linked file
3. **Test** -- ask the AI to describe your communication style to verify it has absorbed the persona

---

## API Usage (Programmatic)

When calling AI APIs directly (OpenAI, Anthropic, Google, etc.), include your persona in the system message.

### Anthropic API (Claude)

```python
import anthropic

client = anthropic.Anthropic()

# Load persona
with open("output/PERSONA-PROMPT.md", "r") as f:
    persona = f.read()

message = client.messages.create(
    model="claude-sonnet-4-20250514",
    max_tokens=1024,
    system=persona,
    messages=[
        {"role": "user", "content": "Write a LinkedIn post about..."}
    ]
)
```

### OpenAI API (GPT)

```python
from openai import OpenAI

client = OpenAI()

# Load persona
with open("output/PERSONA-PROMPT.md", "r") as f:
    persona = f.read()

response = client.chat.completions.create(
    model="gpt-4o",
    messages=[
        {"role": "system", "content": persona},
        {"role": "user", "content": "Write a LinkedIn post about..."}
    ]
)
```

### Google Gemini API

```python
import google.generativeai as genai

# Load persona
with open("output/PERSONA-PROMPT.md", "r") as f:
    persona = f.read()

model = genai.GenerativeModel(
    model_name="gemini-2.0-flash",
    system_instruction=persona
)

response = model.generate_content("Write a LinkedIn post about...")
```

### General API Pattern

For any API that supports system prompts:
- Use `PERSONA-PROMPT.md` as the system message (concise, fits most context limits)
- Use `PERSONA-BRIEF.md` as the system message when you have ample context budget and want richer persona data
- Never put persona instructions in the user message if a system message is available -- system messages carry more weight

---

## Choosing the Right File

| Scenario | Use This File |
|----------|---------------|
| System prompt with limited space | `PERSONA-PROMPT.md` |
| Full context window available | `PERSONA-BRIEF.md` |
| Quick reference during manual writing | `PERSONA-BRIEF.md` |
| Automated content pipeline | `PERSONA-PROMPT.md` |
| Training a custom GPT | `PERSONA-PROMPT.md` |
| Code editor context/rules | `PERSONA-PROMPT.md` |
| Deep persona analysis or audit | `PERSONA-BRIEF.md` + dimension files |

---

## Testing Your Integration

After setting up any integration, run this quick verification:

1. **Style test:** Ask the AI to write a short social media post on a topic you care about. Does it sound like you?
2. **Values test:** Ask it to write something that subtly conflicts with your stated values. Does it resist or flag the conflict?
3. **Anti-pattern test:** Ask for something in a style you have explicitly marked as "never do." Does it avoid those patterns?

If any test fails, check that the full persona file loaded correctly -- truncation is the most common issue with tools that have short context limits.

---

## Keeping Integrations Current

When you update your persona through the living document protocol (see LIVING-DOCUMENT-PROTOCOL.md), remember to:

1. Regenerate `PERSONA-PROMPT.md` and `PERSONA-BRIEF.md` from your updated dimension files
2. Re-paste into any tools that use inline copies (ChatGPT Custom Instructions, .cursorrules, etc.)
3. File-referenced integrations (Claude Code, API scripts) update automatically when the source files change

Consider adding a reminder to your monthly synthesis cycle: "Update all persona integrations."

---

*Your persona is only useful if it is actually loaded into the tools you use. Spend five minutes setting up these integrations and every AI interaction benefits from it.*
