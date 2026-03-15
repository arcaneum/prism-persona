# Framework Overview

PRISM (Persona Reference for Intelligent System Modelling) is built on a simple premise: the more precisely you define your persona, the more precisely AI systems can embody it. This document explains each of the 16 dimensions, why it exists, and how it connects to the whole.

---

## Design Principles

**Modular.** Each dimension is a standalone file. You can use four dimensions or all sixteen. The framework does not break if some are empty.

**Ordered but not sequential.** The numbering (00-15) suggests a logical progression from identity through to evolution, but you can fill them in any order. Start where you have the strongest signal.

**Opinionated about structure, open about content.** Every dimension file has guiding questions and structure guidance. But your answers can take any form — bullet points, prose, examples, links to external documents.

**Living, not static.** Dimension 15 (Evolution Log) and the daily-log system exist because personas change. PRISM is designed to evolve with you.

---

## The 16 Dimensions

### 00 — Identity

**What it captures:** Who you are right now — role, background, location, professional context.

**Why it matters:** Identity is the anchor. Every other dimension is interpreted through this lens. An anti-pattern that says "never use informal language" means something different for a startup founder than for a barrister. Without identity, the persona floats free of context.

**Connections:** Informs every other dimension. Referenced most directly by 05 (Communication Style), 08 (Knowledge & Expertise), and 10 (Relationships).

---

### 01 — Values & Ethics

**What it captures:** Non-negotiable principles and moral positions. The things you believe regardless of audience, context, or incentive.

**Why it matters:** Values act as the deepest guardrails. An AI that matches your voice but violates your values is worse than useless — it is actively dangerous, because people will assume the output reflects your genuine position. Values are the hardest thing to reverse if an AI gets them wrong.

**Connections:** Directly constrains 04 (Anti-Patterns), 06 (Decision-Making), and 11 (Content & Creation). Shapes 02 (Philosophy).

---

### 02 — Philosophy

**What it captures:** Your worldview and positions on the topics that define your field — technology, AI, business, education, or whatever your domain demands.

**Why it matters:** Philosophy is where opinions live. Unlike values (which are non-negotiable), philosophical positions can be nuanced, debatable, and context-dependent. An AI that understands your philosophy can generate content that takes positions you would actually take, rather than hedging into safe neutrality.

**Connections:** Builds on 01 (Values & Ethics). Informs 06 (Decision-Making) and 11 (Content & Creation). Often surfaces in 14 (Examples & Samples).

---

### 03 — Voice & Tone

**What it captures:** How you write — rhythm, sentence patterns, vocabulary choices, openings, closings, and the overall texture of your prose.

**Why it matters:** Voice is the most immediately noticeable dimension. Readers may not consciously identify your values or philosophy, but they will instantly notice if something does not sound like you. This is the quickest win in any persona system.

**Connections:** Expressed through 05 (Communication Style) and 11 (Content & Creation). Demonstrated in 14 (Examples & Samples). Constrained by 04 (Anti-Patterns).

---

### 04 — Anti-Patterns

**What it captures:** Hard rules about what to never do, say, or imply. The explicit boundary lines that no output should cross.

**Why it matters:** Positive instructions tell an AI what to do. Anti-patterns tell it what to avoid. In practice, anti-patterns prevent the most embarrassing failures — the tone-deaf joke, the inflated claim, the phrase that makes you wince. They are the safety net beneath everything else.

**Connections:** Enforces 01 (Values & Ethics). Constrains 03 (Voice & Tone), 05 (Communication Style), and 11 (Content & Creation).

---

### 05 — Communication Style

**What it captures:** How you adapt your communication across audiences and contexts — directness, formality, warmth, and how you adjust when speaking to different people.

**Why it matters:** Voice (03) is how you write in general. Communication style is how you modulate that voice depending on who you are addressing and what the stakes are. A LinkedIn post and an internal Slack message may both be "your voice" but differ significantly in style. Without this dimension, AI outputs tend to be monotone.

**Connections:** Modulates 03 (Voice & Tone) based on context. Informed by 10 (Relationships) and 13 (Emotional Texture).

---

### 06 — Decision-Making

**What it captures:** How you approach decisions — risk tolerance, research depth, speed versus thoroughness, and any frameworks or mental models you rely on.

**Why it matters:** When AI assists with strategy, analysis, or recommendations, it needs to think the way you think. Someone who decides fast on intuition needs different AI support than someone who requires three data sources before committing. This dimension ensures AI recommendations match your decision-making style, not a generic "balanced" approach.

**Connections:** Grounded in 01 (Values & Ethics) and 02 (Philosophy). Informed by 08 (Knowledge & Expertise). Applied in 07 (Working Style).

---

### 07 — Working Style

**What it captures:** Your tools, workflows, routines, and collaboration preferences. How you actually get things done day to day.

**Why it matters:** An AI that understands your working style can make suggestions that fit your actual workflow rather than an idealised one. If you work in 90-minute deep blocks, an AI should not suggest task-switching every 25 minutes. If you prefer asynchronous communication, it should not recommend standups.

**Connections:** Implements 06 (Decision-Making) in practice. Informed by 08 (Knowledge & Expertise). Relates to 11 (Content & Creation) for content workflows specifically.

---

### 08 — Knowledge & Expertise

**What it captures:** What you know deeply, what you know broadly, and where your blind spots are. Your domains of genuine expertise versus areas of general awareness.

**Why it matters:** This dimension prevents two failure modes. First, it stops AI from generating content that claims expertise you do not have. Second, it helps AI lean into your genuine strengths — the areas where your perspective is most valuable and differentiated.

**Connections:** Supports 02 (Philosophy) with domain knowledge. Informs 06 (Decision-Making) about confidence levels. Shapes 11 (Content & Creation) and 09 (Aspirations).

---

### 09 — Aspirations

**What it captures:** Where you are going — goals, vision, and what success looks like in the near and long term.

**Why it matters:** Persona is not just who you are today; it includes the direction you are heading. An AI that understands your aspirations can align its outputs with your trajectory rather than anchoring you to the past. Content suggestions, strategic advice, and opportunity evaluation all benefit from knowing what you are building towards.

**Connections:** Builds on 00 (Identity) as the forward-looking counterpart. Informed by 01 (Values & Ethics) and 02 (Philosophy). Shapes 11 (Content & Creation) strategy.

---

### 10 — Relationships

**What it captures:** Your audience, partnerships, community, and competitive landscape. Who you serve, who you collaborate with, and who else operates in your space.

**Why it matters:** Communication does not happen in a vacuum. Your audience shapes what you say and how you say it. Your partnerships affect what you can recommend. Your competitive landscape determines what positions are differentiated versus generic. Without relationship context, AI outputs are addressed to nobody in particular.

**Connections:** Directly informs 05 (Communication Style). Shapes 11 (Content & Creation) for audience targeting. Relates to 09 (Aspirations) for partnership and community goals.

---

### 11 — Content & Creation

**What it captures:** The formats you create in, the platforms you publish on, your quality standards, and your publishing cadence.

**Why it matters:** This is where persona meets production. If AI is generating or drafting content for you, it needs to know what "done" looks like — your standard for quality, the formats you work in, and how frequently you publish. This dimension turns the abstract persona into concrete creative parameters.

**Connections:** Expresses 03 (Voice & Tone) and 05 (Communication Style) in specific formats. Constrained by 04 (Anti-Patterns). Serves the audience defined in 10 (Relationships).

---

### 12 — Brand & Visual

**What it captures:** Colours, typography, brand guidelines, and the relationship between your personal voice and your brand voice.

**Why it matters:** For anyone whose persona extends to visual content — social media, presentations, marketing materials — brand consistency matters. This dimension also captures the important distinction between personal voice and brand voice, which are related but not identical for most professionals.

**Connections:** Relates to 03 (Voice & Tone) at the visual level. Informs 11 (Content & Creation) for visual content. Supports 00 (Identity) as the visible expression of who you are.

---

### 13 — Emotional Texture

**What it captures:** How emotions surface in your communication — what you are comfortable expressing, your comfort zones, and how you react to different situations.

**Why it matters:** People are not purely rational, and a persona that strips out emotional texture reads as robotic. This dimension captures the human element — the enthusiasm that surfaces when you talk about your craft, the frustration you express about industry problems, the warmth you show to your community. Without it, AI outputs are technically correct but emotionally flat.

**Connections:** Colours 03 (Voice & Tone) and 05 (Communication Style). Informed by 01 (Values & Ethics) — what you care about enough to feel strongly. Demonstrated in 14 (Examples & Samples).

---

### 14 — Examples & Samples

**What it captures:** Annotated real writing across different contexts — the concrete evidence of everything described in the other dimensions.

**Why it matters:** Examples are the single most effective way to teach an AI your persona. Descriptions of your voice are useful; actual samples of your voice are powerful. The annotations make the implicit explicit — marking up what makes each piece representative of you.

**Connections:** Demonstrates every other dimension in practice. Most directly demonstrates 03 (Voice & Tone), 05 (Communication Style), and 13 (Emotional Texture).

---

### 15 — Evolution Log

**What it captures:** A dated changelog of how your persona has shifted over time — additions, changes, and retirements.

**Why it matters:** This is the meta-dimension. It tracks the persona's own development, providing an audit trail that explains why things changed and when. It also serves as a reality check: if a dimension has not been updated in six months, it may be going stale.

**Connections:** References all other dimensions. Supported by the daily-log system in `template/evolution/daily-log/`.

---

## How Dimensions Interact

The 16 dimensions are not isolated. They form a web of relationships:

- **Foundation layer** (00, 01, 02): Who you are, what you believe, how you see the world. These change slowly.
- **Expression layer** (03, 04, 05, 13): How the foundation manifests in communication. These are relatively stable but modulate by context.
- **Action layer** (06, 07, 08): How you think and work. These evolve as your skills and tools change.
- **Direction layer** (09, 10, 11, 12): Where you are headed and who you serve. These shift as your career and business evolve.
- **Evidence layer** (14): Concrete proof of the above. Grows continuously.
- **Meta layer** (15): The system that keeps everything else current.

No single dimension is sufficient on its own. The power of PRISM is in the interplay — a persona defined across multiple dimensions is robust in ways that a voice-only profile cannot be.
