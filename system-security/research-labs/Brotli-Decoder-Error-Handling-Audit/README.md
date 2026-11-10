# Brotli Decoder Error-Handling Audit — Research Lab

## Metadata

- **Type:** Original defensive research lab; not an official CTF competition challenge
- **Category:** System Security — parser error handling and memory safety
- **Difficulty:** Beginner–Intermediate
- **Primary vulnerability:** CVE-2026-111497
- **Original CVE publication:** 22 October 2026
- **Official upstream fix:** Google Brotli commit `0ed4268a4401abcb4472096340477cf4af7d1a2b`
- **Fixed upstream releases:** Brotli 1.0.10, 1.1.1, and 1.2.1
- **Official sources:** NVD, Canadian Centre for Cyber Security, Google Brotli, and Node.js security releases

## Challenge statement

A compression decoder is a security boundary whenever an application processes compressed data from an untrusted source. CVE-2026-111497 describes an out-of-bounds write in the Brotli decoder. The upstream fix changes how an invalid block switch is reported and propagated.

Your task is to reconstruct the error-handling failure from the official source diff, explain why the previous return-value semantics were insufficient, and design a regression strategy that verifies the fixed behavior without executing vulnerable software or attacking a live service.

This is a source-review and defensive testing exercise. It does not contain an exploit, payload, vulnerable binary, or challenge flag.

## Objectives

1. Record the exact affected and fixed Brotli release ranges from the official advisory.
2. Trace the decoder path that handles block-type switches and identify how an invalid switch was represented before the fix.
3. Inspect the upstream patch and explain the change from a boolean result to a decoder error code.
4. Identify how callers propagate decoder errors and why silently ignoring a failed operation is unsafe.
5. Distinguish an invalid stream structure from an incomplete input condition.
6. Design a regression test for the patched release that asserts the expected format-error result.
7. Explain how applications should inventory bundled, statically linked, and distribution-backported Brotli copies.

## Prerequisites

- Basic C programming and function return-value semantics
- Familiarity with HTTP content encoding and compression libraries
- Basic understanding of buffer boundaries, parser state, and error propagation
- Git command-line basics

## Safety constraints

- Do not build, execute, or expose a vulnerable Brotli version.
- Do not send malformed compressed data to public or third-party services.
- Do not create or distribute an exploit payload.
- Do not treat a package version string alone as proof that a distribution backport is absent or present.
- If you run tests, use the patched upstream release only and keep all testing local.
- Any optional fuzzing must target the patched source in an isolated environment; this lab does not require fuzzing.

## Hints

<details>
<summary>Hint 1 — Follow the return value</summary>

Start with `DecodeBlockTypeAndLength()` in `c/dec/decode.c`. Compare the old and new return types, then follow every call site that consumes the result.

</details>

<details>
<summary>Hint 2 — Two different conditions need different states</summary>

A parser must distinguish “more input may complete this operation” from “the input violates the format.” A boolean can be too weak when callers need to preserve that distinction.

</details>

<details>
<summary>Hint 3 — Verify the fix at the boundary</summary>

A useful regression test checks the error observed by the decoder API, not merely that a process crashes or returns a generic failure. Keep the test on the patched release.

</details>

## Completion criteria

- [ ] Record affected and fixed upstream versions with official citations.
- [ ] Draw the decoder call path from input parsing to the block-switch operation.
- [ ] Explain the pre-fix and post-fix return-value semantics.
- [ ] Identify the caller-side checks that preserve the decoder error.
- [ ] Specify a regression assertion for the patched decoder.
- [ ] Explain the difference between upstream releases, bundled copies, and vendor backports.
- [ ] Document the security boundary and a remediation checklist.
- [ ] Record observations, assumptions, and unresolved questions in `SOLUTION.md`.

## Sources

- NVD: https://nvd.nist.gov/vuln/detail/CVE-2026-111497
- Canadian Centre for Cyber Security advisory: https://www.cyber.gc.ca/en/alerts-advisories/al26-027-critical-vulnerability-impacting-google-brotli-cve-2026-111497
- Google Brotli v1.2.1 release: https://github.com/google/brotli/releases/tag/v1.2.1
- Upstream fix commit: https://github.com/google/brotli/commit/0ed4268a4401abcb4472096340477cf4af7d1a2b
- Node.js 22.23.4 security release: https://nodejs.org/en/blog/release/v22.23.4

No third-party write-up, exploit, flag, or binary artifact is included.
