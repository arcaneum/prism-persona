---
name: persona
description: Work with PRISM persona framework — display, check, update, and compile persona dimensions
user_invocable: true
---

# PRISM Persona Skill

Manage a PRISM persona framework instance. This skill assumes the framework is set up in the current repository.

## Commands

### `/persona`
Display the current persona brief from `synthesis/PERSONA-BRIEF.md`.

### `/persona check <text>`
Check if text matches persona voice and anti-patterns.

1. Read `persona/03-voice-tone.md` and `persona/04-anti-patterns.md`
2. Analyse text against rules
3. Report: voice alignment score (1-10), violations, suggestions

### `/persona update`
Interactive daily update.

1. Run `scripts/daily-update-template.sh` to create today's log
2. Walk through 4 sections: New Insights, Reinforcements, Potential Shifts, Content Created
3. Flag any conflicts with existing persona

### `/persona conflicts`
Show pending conflicts from `evolution/CONFLICTS.md` and `evolution/REVIEW-QUEUE.md`.

### `/persona compile`
Recompile synthesis files.

1. Run `scripts/compile-persona.sh`
2. Regenerate PERSONA-BRIEF.md (2000-word summary)
3. Regenerate PERSONA-PROMPT.md (system prompt format)

### `/persona links`
Verify cross-references are intact via `scripts/check-conflicts.sh`.

## Setup

1. Fork this repo
2. Populate `template/persona/` files with your content
3. Move populated files to `persona/`
4. Run `scripts/compile-persona.sh`
5. Reference `synthesis/PERSONA-BRIEF.md` in your AI tool's configuration
