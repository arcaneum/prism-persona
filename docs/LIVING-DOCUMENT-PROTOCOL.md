# Living Document Protocol

Your persona is not a document you write once. It is a system you maintain. This protocol describes how to keep your PRISM persona current with minimal daily effort.

---

## The Problem with Static Personas

A persona file written in March and left untouched until September is five months out of date. In that time:

- Your opinions may have shifted
- Your tools and workflows may have changed
- Your audience may have evolved
- Your communication style may have matured
- New anti-patterns may have emerged from experience

Static persona files decay silently. You do not notice until an AI produces something that feels wrong, and by then you have lost trust in the system.

## The Solution: Micro-Updates

The PRISM living document system uses three cycles:

| Cycle | Frequency | Time | Purpose |
|-------|-----------|------|---------|
| Daily log | Every working day | Under 5 minutes | Capture raw signals |
| Weekly review | Once per week | 15 minutes | Process accumulated signals |
| Monthly synthesis | Once per month | 30-60 minutes | Update dimension files |

---

## Daily Log

At the end of each working day, create a new file in `template/evolution/daily-log/` using this format:

**Filename:** `YYYY-MM-DD.md` (e.g., `2026-03-11.md`)

**Template:**

```markdown
# Daily Log — DD Month YYYY

## New Insights
<!-- Anything new you learned about yourself, your audience, or your field today -->

## Reinforcements
<!-- Existing beliefs or patterns that were confirmed today -->

## Potential Shifts
<!-- Ideas, opinions, or practices that might be changing -->

## Content Created
<!-- What you wrote, published, or drafted today — with brief notes on how it felt -->
```

### Rules for Daily Logs

- **Under 5 minutes.** If it takes longer, you are writing too much. Bullet points are fine.
- **Not every section needs an entry.** Some days you have nothing new. That is normal.
- **Capture the signal, not the analysis.** The weekly review is where you make sense of things.
- **Be honest.** If something felt off about your writing today, note it. If an AI output surprised you (positively or negatively), note that too.

### Example Daily Log

```markdown
# Daily Log — 11 March 2026

## New Insights
- Realised I now default to AI pair programming for all code tasks.
  Six months ago I only used it for boilerplate. This is a genuine shift
  in working style that should be reflected in dimension 07.

## Reinforcements
- Still refuse to use exclamation marks in professional writing.
  Had to edit three out of an AI draft today.

## Potential Shifts
- Starting to think my position on open source has softened. Used to
  believe everything should be open. Now leaning towards "open frameworks,
  proprietary products." Need to sit with this before updating dimension 02.

## Content Created
- Published LinkedIn post on AI-assisted development workflow. Felt natural.
  Good example for dimension 14 samples.
```

---

## Weekly Review

Once per week, spend 15 minutes reviewing the accumulated daily logs from that week. The goal is to identify patterns.

### Process

1. **Read through all daily logs for the week.** Do not edit them.
2. **Look for patterns:**
   - Are the same insights appearing on multiple days? That is a confirmed signal.
   - Are potential shifts persisting or fading? Persistent shifts may be real evolution.
   - Are reinforcements consistent? Consistent reinforcements confirm stability.
3. **Flag actionable items.** Create or update a `WEEKLY-REVIEW.md` file in `template/evolution/` with:
   - Confirmed new insights (ready to integrate into dimension files)
   - Potential shifts still under observation
   - Any conflicts detected (see [Conflict Resolution](CONFLICT-RESOLUTION.md))

### Weekly Review Template

```markdown
# Weekly Review — Week of DD Month YYYY

## Confirmed Insights
<!-- Patterns that appeared multiple times this week — ready for integration -->

## Shifts Under Observation
<!-- Changes that seem real but need more time to confirm -->

## Conflicts Detected
<!-- Anything that contradicts existing dimension content -->

## Dimensions to Update
<!-- Specific dimensions that need attention in the monthly synthesis -->
```

---

## Monthly Synthesis

Once per month, spend 30-60 minutes updating the actual dimension files based on accumulated weekly reviews.

### Process

1. **Read all weekly reviews from the past month.**
2. **For each confirmed insight or shift:**
   - Open the relevant dimension file
   - Update the content
   - Add the date to the "Last Updated" section
   - Log the change in dimension 15 (Evolution Log)
3. **For each conflict detected:**
   - Follow the [Conflict Resolution](CONFLICT-RESOLUTION.md) protocol
   - Do not resolve conflicts during synthesis — flag them for dedicated review
4. **Regenerate synthesis files** (PERSONA-BRIEF.md and PERSONA-PROMPT.md) to reflect the updated dimensions.

### Monthly Synthesis Checklist

- [ ] Reviewed all weekly reviews from the past month
- [ ] Updated relevant dimension files
- [ ] Logged all changes in dimension 15 (Evolution Log)
- [ ] Resolved or flagged all detected conflicts
- [ ] Regenerated PERSONA-BRIEF.md
- [ ] Regenerated PERSONA-PROMPT.md
- [ ] Archived processed daily logs (optional — move to `daily-log/archive/`)

---

## Tips for Sustainability

**Attach it to an existing habit.** If you already do a daily review or journaling practice, append the daily log to that. Five minutes added to an existing routine sticks better than a new standalone habit.

**Do not aim for perfection.** A one-line daily log is better than no daily log. The system works on volume over time, not depth on any single day.

**Skip days when there is nothing.** Not every day produces persona-relevant signals. If nothing noteworthy happened, skip the entry. Forcing entries creates noise.

**Use your AI to help.** After a working session, ask your AI collaborator: "What did I say or decide today that might be relevant to my persona?" The AI often catches signals you overlook.

**Archive old logs.** Daily logs more than three months old have already been processed through weekly reviews and monthly synthesis. Archive them to keep the daily-log directory clean.

---

## What "Living" Really Means

A living document system does not mean constant change. It means constant attention. Some dimensions will remain stable for months or years. That is fine — stability is data too, and confirming that a dimension still holds is valuable.

The point is not to change your persona frequently. The point is to ensure that when your persona does change — and it will — the system captures that evolution promptly rather than letting your files drift silently out of date.
