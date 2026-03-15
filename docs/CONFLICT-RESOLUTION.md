# Conflict Resolution

Contradictions are inevitable. As you evolve, new insights will conflict with existing persona data. This is healthy -- it means you are growing. The problem is not contradictions themselves but unresolved contradictions sitting silently in your persona files.

This document describes how to detect, flag, review, and resolve conflicts in your PRISM persona.

---

## The Core Principle

**You are always the final authority on your own persona.**

No automated process, no AI suggestion, and no framework rule overrides your judgement about who you are and how you communicate. Every conflict resolution ultimately requires human confirmation.

---

## The Resolution Pipeline

Conflicts move through five stages:

```
Detection --> Flagging --> Human Review --> Resolution --> Changelog
```

### 1. Detection

Contradictions surface in two ways:

**Automated detection** via `check-conflicts.sh`:
- Scans dimension files for semantic contradictions (e.g., a value marked as "core" in one file and "rejected" in another)
- Flags entries where daily logs contradict established dimension values
- Run manually or as part of your weekly review

**Manual detection** during regular use:
- You notice an AI output that feels wrong despite using your persona
- A daily log entry directly contradicts something in a dimension file
- Someone gives you feedback that conflicts with your stated positioning
- You realise a stated preference no longer reflects reality

### 2. Flagging

When a conflict is detected, append it to `evolution/CONFLICTS.md` using this format:

```markdown
## CONFLICT-YYYY-MM-DD-NNN

**Status:** PENDING REVIEW
**Detected:** DD Month YYYY
**Source:** [daily log / automated scan / manual observation]
**Dimension:** [which dimension file is affected]

**Existing statement:**
> [Quote the current text from the dimension file]

**Conflicting evidence:**
> [Quote or describe the contradicting information]

**Context:**
[Any additional context that might help resolution]
```

Rules for flagging:
- One entry per conflict -- do not batch unrelated contradictions
- Quote the exact text from dimension files, not paraphrased versions
- Include enough context for your future self to understand the issue
- Do not attempt to resolve at this stage -- just record

### 3. Human Review

Review flagged conflicts during your weekly review cycle (see LIVING-DOCUMENT-PROTOCOL.md). For each `PENDING REVIEW` conflict:

- Re-read both the existing statement and the conflicting evidence
- Consider whether this is a genuine shift or a situational exception
- Ask yourself: "If I had to explain this to someone, which version would I use?"
- Decide on a resolution option (see below)

**Important:** Do not rush this. If you are unsure, leave the status as `PENDING REVIEW` and revisit next week. A conflict left open is better than a wrong resolution committed hastily.

### 4. Resolution Options

Every conflict resolves in one of three ways:

| Option | When to Use | Action |
|--------|-------------|--------|
| **UPDATE** | The new information genuinely replaces the old | Replace the text in the dimension file with the updated version |
| **KEEP ORIGINAL** | The conflict was situational or the original still holds | Dismiss the conflict; optionally add a note explaining why |
| **NUANCE** | Both are true in different contexts | Add qualifying context to the dimension file (e.g., "Generally X, but in context Y, prefers Z") |

After resolving, update the conflict entry:

```markdown
**Status:** RESOLVED -- [UPDATE / KEEP ORIGINAL / NUANCE]
**Resolved:** DD Month YYYY
**Resolution notes:**
[Brief explanation of why you chose this option]
```

### 5. Changelog

Every resolution must be logged in `evolution/CHANGELOG.md`:

```markdown
## DD Month YYYY

- **CONFLICT-YYYY-MM-DD-NNN** -- [DIMENSION NAME]: [One-line summary of what changed and why]
  - Resolution: [UPDATE / KEEP ORIGINAL / NUANCE]
  - Affected file: [path to the dimension file]
```

This creates an audit trail. If a future conflict touches the same area, you can see how you resolved it previously.

---

## What Counts as a Conflict?

Not every discrepancy is a conflict. Use this guide:

**Is a conflict:**
- A stated value that you no longer hold
- A communication preference that has genuinely shifted
- A positioning statement that no longer matches your actual work
- A "never do" that you now sometimes do (or vice versa)

**Is NOT a conflict:**
- A one-off exception that does not represent a pattern
- A dimension that applies differently in different contexts (this is normal)
- Temporary experimentation that you have not committed to
- Someone else's opinion about what your persona should be

---

## Preventing Conflict Accumulation

The best way to handle conflicts is to prevent them from piling up:

- **Complete your daily logs.** Small signals caught early are easier to resolve than months of accumulated drift.
- **Run weekly reviews consistently.** Even a quick five-minute scan is better than skipping entirely.
- **Resolve promptly.** A `PENDING REVIEW` backlog of twenty items is demoralising. Aim to clear conflicts within two weekly review cycles.
- **Accept evolution.** Resistance to updating your persona because "it was hard to write the first time" leads to stale files. The whole point of PRISM is that your persona is alive.

---

## Emergency Conflicts

Occasionally, a conflict is urgent enough that it cannot wait for the weekly review:

- You publish content that directly contradicts your persona files
- A professional context requires an immediate positioning shift
- You discover factually incorrect information in a dimension file

In these cases, resolve immediately but still follow the full pipeline: flag, resolve, changelog. Do not skip the documentation steps just because you are moving quickly.

---

## File Locations

| File | Purpose |
|------|---------|
| `evolution/CONFLICTS.md` | Active and resolved conflict entries |
| `evolution/CHANGELOG.md` | Audit trail of all persona changes |
| `scripts/check-conflicts.sh` | Automated conflict detection |

---

*Contradictions are not failures -- they are evidence that you are paying attention. The only real failure is leaving them unresolved.*
