# PHP2Shell Request Lifecycle Audit — Research Lab

## Metadata

- **Type:** Original research-inspired practice lab; not an official CTF competition challenge
- **Event / collection:** Research Labs (2026)
- **Category:** Web / System Security — PHP runtime request lifecycle
- **Difficulty:** Beginner–Intermediate (estimated for this lab)
- **Platform:** Local source and advisory review; no vulnerable service required
- **Official challenge URL:** Not applicable; this is an original lab idea
- **Primary sources:**
  - PHP Group, *Security advisory: Critical remote code execution vulnerabilities, update now*, 21 October 2026
  - IPA, *PHP security measures (CVE-2026-109618 and CVE-2026-109619: PHP2shell)*, published 22 October 2026 and updated 2 November 2026
- **Source links:**
  - https://www.php.net/index.php
  - https://www.ipa.go.jp/security/security-alert/2026/alert20261022.html
  - https://github.com/php/php-src/security/advisories/GHSA-w8hw-w9fx-j79w
  - https://github.com/php/php-src/security/advisories/GHSA-6wmf-4rv5-p3rp

## Challenge statement

You are reviewing a PHP-based web service that uses persistent workers. A security review has identified two critical PHP runtime advisories, but the service owner believes that hiding error messages and lowering upload limits are sufficient.

Prepare an evidence-based security assessment using the official advisories and PHP release information. Reconstruct the relevant request lifecycle, explain how exceptional control flow and request-owned state can cross lifecycle boundaries, and determine which mitigations are complete versus partial.

This is a static-analysis and defensive-design exercise. Do not build or run an exploit, send malformed requests to a live service, or attempt to exhaust memory.

## Objectives

1. Build a request-lifecycle diagram covering request startup, input parsing, application execution, shutdown, request-memory release, worker reuse, and the next request's initialization.
2. Analyze CVE-2026-109618 and CVE-2026-109619 separately. Identify the relevant state transition and the conditions described by the maintainers.
3. Distinguish a failure contained within one request from state that can remain reachable by a later request handled by the same worker.
4. Compare the SAPI-specific behavior described for Apache mod_php and PHP-FPM. Do not generalize a demonstrated path to every SAPI or deployment.
5. Classify each documented mitigation as a complete fix, a path-specific mitigation, or a risk-reduction measure. Explain the residual risk.
6. Produce a regression-test plan that checks lifecycle invariants without constructing an exploit payload.

## Prerequisites

- Basic PHP and web-server architecture
- Request lifecycle, worker processes, and memory ownership
- Familiarity with use-after-free and exceptional control flow
- Ability to read a security advisory and inspect a source-code diff

## Hints

<details>
<summary>Hint 1 — Follow ownership, not only input validation</summary>

Track which component owns request-scoped memory and when that memory becomes invalid. A parser limit alone does not describe every relevant lifecycle transition.

</details>

<details>
<summary>Hint 2 — Separate the two advisories</summary>

Do not merge the root causes into one generic memory-corruption explanation. Build a separate state-transition sequence for each CVE before comparing them.

</details>

<details>
<summary>Hint 3 — Worker reuse matters</summary>

Check what happens after a request fails and whether the worker can process another request. Treat worker termination and worker reuse as different security properties.

</details>

## Completion criteria

- [ ] Provide one lifecycle diagram with ownership and validity boundaries.
- [ ] Provide separate root-cause summaries for CVE-2026-109618 and CVE-2026-109619.
- [ ] Cite the advisory sections supporting every SAPI-specific claim.
- [ ] Compare Apache mod_php and PHP-FPM without claiming unsupported equivalence.
- [ ] Classify the documented mitigations and state what each does not prevent.
- [ ] Propose regression tests for request cleanup, worker reuse, and initialization ordering.
- [ ] Record evidence, assumptions, uncertainty, and conclusions in `SOLUTION.md`.

## Safety and provenance

This lab contains no exploit, payload, credentials, network target, binary, or third-party challenge material. It uses public PHP Group and IPA security advisories as research sources. The lab itself is an independent educational exercise and is not an official CTF challenge or an official PHP training exercise.
