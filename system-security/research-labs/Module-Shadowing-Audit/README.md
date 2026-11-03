# Module Shadowing Audit — Research Lab

## Metadata

- **Type:** Original research-inspired practice lab; not an official competition challenge
- **Event / collection:** Research Labs (2026)
- **Category:** System Security — Python import hijacking
- **Difficulty:** Beginner–Intermediate (estimated for this lab)
- **Platform:** Local Python 3.11+ environment
- **Official challenge URL:** Not applicable; this is an original lab
- **Primary source:** Shuai Yang, Enmeng Lu, Jinyu Fan, Gongce Cao, Yu Chen, Jiawei Xie, Feifei Zhao, Zhangsheng Wang, Yongyu Jiang, and Yi Zeng, *Characterizing LLM Agent Behaviors in Module Shadowing Environments*, arXiv:2610.40716, first submitted 29 October 2026.
- **Research source:** https://arxiv.org/abs/2610.40716

## Challenge statement

A small reporting job completes and prints a plausible result. However, a new marker file appears in the workspace after execution.

Audit the project as if it were an untrusted repository opened by an automated coding agent. Determine whether the program loaded the intended modules, reconstruct the import path that led to the unexpected side effect, and produce evidence that distinguishes the module name from the actual file executed.

The lab uses a harmless local marker only. It does not access the network, credentials, external files, or system services.

## Objective

1. Reconstruct the complete import chain used by the reporting job.
2. Establish which module file was actually loaded and why.
3. Reproduce the unexpected side effect in a disposable copy and preserve evidence.
4. Propose and demonstrate a mitigation that prevents the unintended module from loading while preserving the report's expected output.
5. Explain how the same trust-boundary issue could affect an automated coding agent working inside an untrusted repository.

This is a diagnostic lab, not a flag-based competition task. Completion is based on reproducible evidence and a defensible remediation.

## Prerequisites

- Python modules, packages, and import resolution
- Basic use of sys.path, __file__, or importlib
- Command-line execution and filesystem inspection
- Basic understanding of trusted versus untrusted workspace content

## Setup

1. Use Python 3.11 or later.
2. Copy the data/ directory to a disposable local workspace.
3. Follow the instructions in data/README.md.
4. Do not run the sample in a project containing real secrets or production data.

## Hints

<details>
<summary>Hint 1 — Trace beyond the entry point</summary>

The imports executed by the main script are not necessarily the complete import chain. Follow imports made by the modules it loads.

</details>

<details>
<summary>Hint 2 — A module name is not proof of its origin</summary>

Python resolves imports using ordered search locations. Record the actual file path associated with the imported module, not just its name.

</details>

<details>
<summary>Hint 3 — Compare execution environments</summary>

Compare normal execution with a safe-path or isolated execution configuration. Account for legitimate project dependencies when choosing a mitigation.

</details>

## Completion criteria

- [ ] Document the import chain from the entry point to the module responsible for the side effect.
- [ ] Record the resolved module origin and relevant import search paths.
- [ ] Reproduce the marker creation in a disposable copy.
- [ ] Demonstrate one mitigation and verify that the report output remains correct.
- [ ] Explain at least two defensive controls and their trade-offs.
- [ ] Record observations, commands, evidence, mistakes, and conclusions in SOLUTION.md.

## Safety and provenance

All starter files are original, self-contained Python code. The only side effect is creation of a harmless marker file in the lab working directory. No third-party challenge files, write-ups, flags, credentials, or binary artifacts are included.

The research paper is a preprint and provides the motivation for the exercise; it is not the source of an official CTF challenge. The lab is an independent educational adaptation and does not reproduce the paper's experimental payload.
