# Windows Project-Path Argument Boundary Audit — Research Lab

## Metadata

- **Type:** Original research-inspired practice lab; not an official CTF competition challenge
- **Event / collection:** Research Labs (2026)
- **Category:** System Security — Windows desktop application argument injection
- **Difficulty:** Beginner–Intermediate (estimated for this lab)
- **Platform:** Windows 11 concepts, source/advisory review, and a benign local argument-inspection harness
- **Official challenge URL:** Not applicable; this is an original lab idea
- **Primary source:** OpenAI, CVE-2026-110930, published 3 November 2026; the CVE record was published 5 November 2026
- **Source link:** https://openai.com/security/advisories/cve-2026-110930/

## Challenge statement

You are reviewing a Windows desktop application that opens projects from File Explorer. A security advisory reports that quotation marks in a project path can alter the startup arguments passed to the application when a user selects **Open project in ChatGPT** for a child item in an attacker-controlled Windows library.

Reconstruct the trust boundary from the Explorer-provided path to process startup. Explain why application code may run before sign-in or project-trust approval, then design a safe argument-handling strategy and a regression-test matrix.

This is a defensive source-review and test-design exercise. Do not create a malicious `.library-ms` file, reproduce the real vulnerability, launch attacker-controlled code, or test an affected Codex Desktop build.

## Objectives

1. Extract the exact preconditions, affected versions, fixed versions, and reported impact from the official advisory.
2. Draw the data flow from Explorer selection through path handling, process creation, argument parsing, and startup actions.
3. Distinguish argument injection from shell injection, path traversal, and remote code execution.
4. Explain why a project-trust prompt cannot protect code that runs before the prompt is reached.
5. Design a harmless test matrix using a child program that only prints its received arguments. Cover spaces, quotation marks, Unicode, long paths, UNC paths, and shell metacharacters as inert input.
6. Propose a mitigation using structured process arguments or correct Windows command-line quoting, strict path validation, and an explicit trust gate before interpreting project actions.
7. Verify the expected behavior against the documented fixed versions.

## Affected and fixed versions

According to the OpenAI advisory:

- Codex Desktop for Windows: affected versions 26.820.60940–26.1002.52244; fixed in 26.1007.21434 or later.
- Microsoft Store/MSIX package: affected versions 26.820.7780.0–26.1002.7124.0; fixed in 26.1007.2314.0 or later.

The advisory reports no known abuse in the wild at publication time. Do not infer that every Windows project-opening workflow is affected; preserve the exact conditions described by the source.

## Prerequisites

- Windows process creation and command-line parsing
- Difference between a command-line string and an argument vector
- Basic file-system path handling
- Familiarity with desktop application startup and trust prompts

## Hints

<details>
<summary>Hint 1 — A path is data, not a command line</summary>

Trace where the Explorer-provided path is inserted into startup arguments. Record whether the application constructs one command-line string or passes arguments through a structured API.

</details>

<details>
<summary>Hint 2 — Quoting rules belong to the receiving process</summary>

Windows process creation passes a command-line string. The child process then parses it into arguments. Review the documented parsing contract rather than assuming that surrounding quotes are sufficient.

</details>

<details>
<summary>Hint 3 — Trust checks must precede privileged interpretation</summary>

A trust prompt is ineffective if startup arguments already trigger actions before the prompt is displayed. Separate path validation, argument parsing, and project-trust decisions.

</details>

## Completion criteria

- [ ] Record the advisory's exact attack preconditions and affected/fixed versions.
- [ ] Produce a data-flow diagram from Explorer path input to the first startup action.
- [ ] Explain the distinction between command-line construction and child-process argument parsing.
- [ ] Define a benign argument-inspection test matrix and expected argument boundaries.
- [ ] Propose a mitigation that avoids manual string concatenation where possible.
- [ ] Explain how the trust gate is enforced before project-specific actions.
- [ ] Record evidence, assumptions, and unresolved questions in `SOLUTION.md`.

## Safety and provenance

This lab contains no exploit, payload, malicious library file, credentials, network target, binary, or third-party challenge material. Use only synthetic paths and a harmless child process that prints its arguments. Do not run tests against an affected Codex Desktop installation or any real user's project library.

The exercise is an independent educational lab based on a public vendor advisory. It is not an official CTF challenge, and no third-party write-up or solution is redistributed.
