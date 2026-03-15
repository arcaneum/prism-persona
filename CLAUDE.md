# CLAUDE.md — PRISM Persona Framework

## For AI Agents

You are working inside a PRISM persona framework repository. PRISM uses 16 dimensions to teach AI systems a complete human persona.

### First Run Detection

Check if `template/persona/00-identity.md` contains the placeholder text `<!-- Replace this section with your persona content -->`. If it does, the persona has not been set up yet. **Immediately offer to run onboarding** by reading and following `docs/ONBOARDING.md`.

If the dimensions are already populated, you are in a working persona repo. Read `template/synthesis/PERSONA-BRIEF.md` for a quick overview of the persona, or individual dimension files in `template/persona/` for specific context.

### Key Files

| File | Purpose |
|------|---------|
| `template/persona/00-14*.md` | The 16 persona dimension files |
| `template/synthesis/PERSONA-BRIEF.md` | Compiled summary for quick loading |
| `template/synthesis/PERSONA-PROMPT.md` | System prompt format for other AI tools |
| `template/synthesis/PERSONA-FULL.md` | Full compilation of all dimensions |
| `docs/ONBOARDING.md` | AI-guided onboarding protocol |
| `docs/QUICKSTART-GUIDE.md` | Reference for onboarding paths and questionnaire |
| `docs/DIMENSION-GUIDE.md` | Deep guide for each dimension |

### After Onboarding

Once dimensions are populated:
- Generate `PERSONA-BRIEF.md` (structured summary, ~2000 words)
- Generate `PERSONA-PROMPT.md` (concise system prompt for other tools)
- Compile `PERSONA-FULL.md` by running `bash template/scripts/compile-persona.sh` or concatenating dimension files
- Explain to the user how to integrate the persona with their tools (see `docs/INTEGRATION-GUIDE.md`)
