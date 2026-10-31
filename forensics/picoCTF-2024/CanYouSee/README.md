# CanYouSee — picoCTF 2024

| Field | Value |
| --- | --- |
| Event | picoCTF 2024 |
| Category | Forensics |
| Difficulty | Easy (beginner) |
| Points | 100 |
| Author | Not independently verified from the official public page; attribution intentionally omitted |
| Official challenge | https://learn.cylabacademy.org/library/408 |
| Original practice link | https://play.picoctf.org/practice/challenge/408 |
| Official artifact host | https://artifacts.picoctf.net |

## Challenge description (no spoilers)

> How about some hide and seek?

Download the file linked on the official challenge page. Investigate the supplied image and identify the hidden information required to submit the challenge flag. The goal is to justify the finding from evidence, not to guess or use a third-party solution.

## Objective

Practice evidence-driven examination of an image and its surrounding file information, document observations, and submit the correct flag to the official platform.

## Prerequisites

- Basic shell navigation and ZIP extraction.
- Ability to distinguish a file's visible content from other information stored with it.
- Basic familiarity with file inspection tools and recording reproducible steps.

## Hints

<details>
<summary>Hint 1 — Start with the evidence</summary>

Identify the archive and its contents before making assumptions about what is hidden.
</details>

<details>
<summary>Hint 2 — Look beyond appearance</summary>

A normal-looking picture may contain information that a standard image viewer does not display.
</details>

<details>
<summary>Hint 3 — Validate unusual fields</summary>

Compare any unexpected field values with their usual formats, then test a defensible interpretation rather than guessing.
</details>

## Self-check

- [ ] Downloaded the challenge file from the official source.
- [ ] Identified and documented the file formats without modifying the original.
- [ ] Found a reproducible evidence trail leading to the submission value.
- [ ] Submitted the correct flag on the official platform without using a write-up.
- [ ] Explained why the decisive evidence is meaningful.
- [ ] Documented personal observations and commands in `SOLUTION.md` after solving.

## Data and provenance

See [data/README.md](data/README.md) for official download links and local preparation. No binary artifacts, solutions, flags, or third-party write-up assets are stored in this repository.

The official challenge page is accessible as of 2026-10-31. Direct retrieval of the binary archive could not be independently completed in this execution environment; use the official challenge page to confirm the current artifact URL if needed.
