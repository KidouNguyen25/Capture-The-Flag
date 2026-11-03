# Lab Data

## Contents

- run_report.py — entry point for the sample reporting job.
- reporting.py — report-generation helper imported by the entry point.
- statistics.py — workspace-local module used by the sample import chain.

All files are original, text-only starter material. No external download is required.

## Run

Use a disposable copy of this directory and Python 3.11 or later:

~~~bash
python --version
python run_report.py
~~~

Inspect the workspace before and after execution. Keep the marker and any logs as evidence until the investigation is complete.

## Safety

The sample has no network access or external dependencies. Its only intentional side effect is a small marker file in the current working directory. Do not run it in a workspace containing secrets or production data.

## Provenance

This lab is an original educational exercise inspired by the threat model in:

- Shuai Yang et al., *Characterizing LLM Agent Behaviors in Module Shadowing Environments*, arXiv:2610.40716, 29 October 2026.
- https://arxiv.org/abs/2610.40716

The paper is a preprint, not an official challenge release. No third-party files or write-ups are redistributed.
