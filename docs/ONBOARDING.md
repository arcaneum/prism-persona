# AI-Guided Onboarding Protocol

This file is for AI agents, not humans. When you detect that the PRISM persona dimensions are empty (placeholder text still present in dimension files), follow this protocol to guide the user through setup.

---

## Step 1: Welcome and Path Selection

Introduce PRISM briefly, then present the three onboarding paths. Ask the user to choose:

```
I've detected that your PRISM persona hasn't been set up yet. I'll guide you through the process — you won't need to edit any files manually. I'll handle all of that.

There are three ways to get started:

**Path A — Guided Conversation (20-30 minutes)**
I'll ask you 20 targeted questions. Your answers give me enough to populate 6-8 dimensions. This is the fastest way to start if you don't have existing content to share.

**Path B — Artefact Analysis (10 minutes + review)**
Share existing content you've written — blog posts, social media posts, emails, your bio, brand guidelines — and I'll analyse them to extract your persona. The more varied the content, the better the result.

**Path C — Combined (recommended, 30-40 minutes)**
Start with a few key questions, then share artefacts to enrich and validate. This produces the most complete persona.

Which would you prefer?
```

---

## Step 2A: Guided Conversation

If the user chose Path A or C, ask these questions in a natural conversational flow. Do not dump all 20 at once — ask 3-4 at a time, acknowledge their answers, and build on what they say. Adapt follow-up questions based on their responses.

### Core Questions (ask these first)

1. **What do you do?** Not your job title — what you actually spend your time on day-to-day.
2. **What is the one-sentence version of your career story?** The arc from where you started to where you are now.
3. **What would you never compromise on professionally, even if it cost you money?**
4. **Describe your writing voice in three adjectives.** Not how you wish you sounded — how you actually sound.
5. **What phrases or cliches make you cringe in your industry?**
6. **What would an AI writing as you get wrong if it only had your job title?**

### Depth Questions (ask these next)

7. **What do you believe about your industry that most people disagree with?**
8. **What values do you want embedded in everything you produce?**
9. **When you explain something complex, how do you do it?** Analogies? Step-by-step? Start with the conclusion?
10. **How formal or informal are you in professional communication?** Think about your range.
11. **How do you make high-stakes decisions?** Research exhaustively, trust your gut, consult others?
12. **What does your ideal working day look like?**

### Context Questions (ask these to round out the picture)

13. **Who is your primary audience?** Describe them as a person, not a demographic.
14. **How do you handle public criticism or disagreement?**
15. **What are you building towards in the next 2-3 years?**
16. **What does success look like for you personally — not your company, you?**
17. **What do you know deeply that most people in your field do not?**
18. **What content or claims would damage your credibility if published under your name?**

### Writing Sample (ask this last)

19. **Paste a paragraph you've written that sounds most like you.** A blog post, an email, a social post — anything that captures your natural voice.
20. **Write a 3-sentence response to this: someone on social media publicly misrepresents your position on a topic you care about.** Don't overthink it — your instinctive response reveals voice, values, and emotional texture all at once.

---

## Step 2B: Artefact Analysis

If the user chose Path B or C, ask them to share content. Guide them on what is most useful:

```
Share any content you've written — I'll analyse it to extract your persona. The most useful types are:

- **Blog posts or articles** (3-5 across different topics is ideal)
- **Social media posts** (LinkedIn, X/Twitter — 10-15 posts gives good signal)
- **Your professional bio or About page**
- **Professional emails** you're proud of (redact sensitive details)
- **Brand guidelines or style guide** if you have one

You can paste text directly, or point me to files on your machine. The more varied the content, the richer the persona I can build.
```

When analysing artefacts, extract:
- Voice patterns (sentence length, rhythm, vocabulary level, formality)
- Values (what they advocate for, what they push back against)
- Anti-patterns (what they conspicuously avoid)
- Communication style (how they adapt to different contexts)
- Philosophy (positions, worldview, opinions)
- Emotional texture (how emotions surface, what stays controlled)

Flag anything you're inferring rather than observing directly. Tell the user what you're confident about and what you're guessing.

---

## Step 3: Populate Dimension Files

Based on the conversation and/or artefact analysis, write content into the dimension files. For each dimension:

1. Read the dimension file to understand its guiding questions and structure
2. Write the user's content into the `## Your Content` section
3. Replace the `<!-- Replace this section with your persona content -->` placeholder entirely
4. Set `## Last Updated` to today's date
5. Add any relevant canonical sources

**Populate in this order** (highest impact first):
1. `00-identity.md` — anchors everything
2. `03-voice-tone.md` — immediate visible payoff
3. `04-anti-patterns.md` — highest-leverage guardrail
4. `01-values-ethics.md` — deepest guardrail
5. `05-communication-style.md` — if sufficient signal
6. `02-philosophy.md` — if sufficient signal
7. `06-decision-making.md` — if sufficient signal
8. `09-aspirations.md` — if sufficient signal
9. `13-emotional-texture.md` — if sufficient signal
10. Remaining dimensions as signal allows

**Do not fabricate content.** If you don't have enough information for a dimension, leave it with its placeholder and tell the user which dimensions still need input. A partially populated persona is better than a fabricated one.

After writing each dimension, briefly tell the user what you wrote and ask if it sounds right. Correct anything they flag — their corrections are themselves valuable persona data.

---

## Step 4: Generate Synthesis Files

Once at least 4 dimensions are populated:

1. **Generate `PERSONA-BRIEF.md`** — Read all populated dimension files and write a structured summary of approximately 2000 words. Organise by dimension, focusing on the populated ones. This is the quick-reference document for AI tools with large context windows.

2. **Generate `PERSONA-PROMPT.md`** — Write a concise, directive system prompt (500-800 words) that captures the essence of the persona in a format optimised for pasting into AI system prompts. This should be imperative ("Write in short declarative sentences") not descriptive ("The user writes in short declarative sentences").

3. **Compile `PERSONA-FULL.md`** — Either run `bash template/scripts/compile-persona.sh` or concatenate all dimension files with separators.

---

## Step 5: Confirm and Explain Next Steps

Tell the user what was set up, what dimensions are populated, and what gaps remain:

```
Your PRISM persona is set up. Here's what I've populated:

[list populated dimensions with one-line summary of each]

Dimensions left for later:
[list unpopulated dimensions]

Your synthesis files are ready:
- PERSONA-BRIEF.md — full reference for AI tools
- PERSONA-PROMPT.md — paste this into any AI tool's system prompt
- PERSONA-FULL.md — compiled version of all dimension files

To use your persona:
- In Claude Code: I'll read these files automatically when this repo is your working directory
- In Cursor: The .cursorrules file points to your persona
- In ChatGPT: Paste the contents of PERSONA-PROMPT.md into Settings → Custom Instructions
- In other tools: See docs/INTEGRATION-GUIDE.md

To keep it current:
- Update dimension files when something changes about you
- Run the synthesis generation again after significant updates
- See docs/LIVING-DOCUMENT-PROTOCOL.md for the full maintenance protocol

Want me to help you fill in any of the remaining dimensions now?
```

---

## Important Rules for AI Agents

- **Never populate dimensions with fabricated content.** Only write what the user has told you or what you can directly observe in their artefacts.
- **Always confirm with the user** before writing to files. Show them what you plan to write and ask for approval.
- **Flag uncertainty.** If you're inferring something from artefacts rather than hearing it directly, say so.
- **Respect the user's pace.** If they want to stop after 4 dimensions, that's fine. Don't push for completeness.
- **Use the guiding questions** in each dimension file to structure your follow-up questions naturally.
- **Keep the user's voice.** When writing dimension content, mirror the way the user speaks and writes. Don't impose a formal writing style on someone who communicates casually.
