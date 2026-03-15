# Getting Started with PRISM

This guide walks you through setting up your PRISM persona from scratch. Budget about 30 minutes for your first session — you will not finish all 16 dimensions, and that is expected.

---

## Step 1: Fork and Clone

Fork this repository to your own GitHub account, then clone it locally:

```bash
git clone https://github.com/YOUR-USERNAME/prism-persona.git
cd prism-persona
```

Your persona files live in `template/`. This is your working copy — everything you write goes here.

## Step 2: Start with Identity (Dimension 00)

Open `template/persona/00-identity.md`.

This is the foundation. Every other dimension references your identity, so getting this right early saves you from having to backtrack later. Read the guiding questions, then replace the "Your Content" section with your answers.

Keep it factual and concise. Think of it as the context paragraph you would give a new collaborator on their first day. Save aspiration for dimension 09.

**Time: 5-10 minutes.**

## Step 3: Capture Your Voice (Dimension 03)

Open `template/persona/03-voice-tone.md`.

This is where the immediate payoff lives. A well-defined voice dimension means any AI tool you connect to PRISM will start producing content that sounds like you — not like a generic assistant.

Be specific. "Professional but approachable" tells an AI almost nothing. "Short declarative sentences. British English. No exclamation marks. Open with the conclusion, then support it." tells it everything.

If you already have a style guide or voice document, link to it in the Canonical Sources section rather than duplicating it.

**Time: 10-15 minutes.**

## Step 4: Define Your Boundaries (Dimensions 01 and 04)

Now that you have established who you are and how you sound, define what you stand for and what you refuse to do.

**Dimension 01 (Values & Ethics)** — Your non-negotiable principles. The positions you hold regardless of context. These act as guardrails: any AI output that contradicts a value listed here is wrong by definition.

**Dimension 04 (Anti-Patterns)** — The hard "never do this" rules. Things you would never say, claims you would never make, tones you would never use. Anti-patterns are often more useful than positive instructions because they prevent the worst failures.

**Time: 10-15 minutes for both.**

## Step 5: Fill In More Dimensions (Your Pace)

With dimensions 00, 01, 03, and 04 complete, you have a functional persona that covers identity, voice, values, and boundaries. This is already more than most AI persona setups provide.

Work through the remaining dimensions in whatever order feels natural. Some suggestions:

- **If you use AI for content creation**, prioritise 05 (Communication Style), 11 (Content & Creation), and 14 (Examples & Samples).
- **If you use AI for decision support**, prioritise 06 (Decision-Making), 08 (Knowledge & Expertise), and 02 (Philosophy).
- **If you use AI for professional communication**, prioritise 05 (Communication Style), 10 (Relationships), and 13 (Emotional Texture).

You do not need to complete every dimension to start using PRISM. Four solid dimensions are better than sixteen shallow ones.

## Step 6: Add Writing Samples (Dimension 14)

Place annotated writing samples in `template/samples/` organised by format (blog, LinkedIn, technical, threads, or create your own categories). Annotation matters — do not just drop in raw text. Mark up what makes each piece representative:

```markdown
## Sample: LinkedIn Post — Product Launch (14 March 2026)

**Why this is representative:** Shows my direct opening style, use of concrete
numbers instead of vague claims, and the way I close with a forward-looking
question rather than a call to action.

**What to notice:**
- First sentence is the conclusion
- No exclamation marks
- British English throughout
- Technical specifics without jargon

---

[The actual content here]
```

## Step 7: Generate Synthesis Files

The `template/synthesis/` directory is where you generate compressed versions of your persona for different contexts:

- **PERSONA-BRIEF.md** — A 1-2 page summary covering the most important aspects of your persona. Useful as a quick reference and for tools with limited context windows.
- **PERSONA-PROMPT.md** — A ready-to-paste system prompt optimised for AI tools. Distils your persona into the most impactful instructions.

You can write these manually or use an AI tool to synthesise them from your dimension files. The key is that they should be accurate distillations, not approximations.

## Step 8: Set Up the Living Document System

Your persona is not finished — it is launched. Set up the daily micro-update habit described in the [Living Document Protocol](LIVING-DOCUMENT-PROTOCOL.md):

1. Create your first daily log file in `template/evolution/daily-log/`.
2. Spend under 5 minutes at the end of each working day noting any new insights, reinforcements, or shifts.
3. Schedule a weekly 15-minute review to process accumulated logs.
4. Monthly, synthesise changes back into the relevant dimension files.

## Step 9: Integrate with Your AI Tools

See the [Integration Guide](INTEGRATION-GUIDE.md) for tool-specific instructions on connecting PRISM to Claude Code, ChatGPT, Cursor, and other AI tools.

---

## Summary: Your First Session

| Step | Time | Outcome |
|------|------|---------|
| Fork and clone | 2 min | Working copy on your machine |
| Dimension 00 (Identity) | 5-10 min | Foundation anchored |
| Dimension 03 (Voice & Tone) | 10-15 min | Immediate voice matching |
| Dimensions 01 + 04 (Values + Anti-Patterns) | 10-15 min | Guardrails in place |
| **Total first session** | **~30-45 min** | **Functional persona** |

Everything after this is refinement. Add dimensions as you find the need, not because you feel you must complete all sixteen. A focused persona with six strong dimensions will outperform a vague persona with all sixteen filled in.
