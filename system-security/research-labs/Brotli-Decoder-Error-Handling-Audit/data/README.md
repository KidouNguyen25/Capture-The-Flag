# Official Sources and Data — Brotli Decoder Error-Handling Audit

## Source records

- NVD CVE record: https://nvd.nist.gov/vuln/detail/CVE-2026-111497
- Canadian Centre for Cyber Security advisory: https://www.cyber.gc.ca/en/alerts-advisories/al26-027-critical-vulnerability-impacting-google-brotli-cve-2026-111497
- Google Brotli v1.2.1 release: https://github.com/google/brotli/releases/tag/v1.2.1
- Upstream decoder fix: https://github.com/google/brotli/commit/0ed4268a4401abcb4472096340477cf4af7d1a2b
- Node.js 22.23.4 security release: https://nodejs.org/en/blog/release/v22.23.4

## Data availability

No challenge-owned binary, exploit payload, or vulnerable build is redistributed. Use the official upstream source and advisory records directly.

To inspect the official patch:

```bash
git clone https://github.com/google/brotli.git
cd brotli
git show --stat 0ed4268a4401abcb4472096340477cf4af7d1a2b
git show 0ed4268a4401abcb4472096340477cf4af7d1a2b -- c/dec/decode.c
git checkout v1.2.1
```

The historical source should be reviewed as text only. Do not build or execute an affected release. If you run the official test suite, use the patched `v1.2.1` source only.

## Redistribution and safety

- All source code and release artifacts remain at their official upstream locations.
- This repository stores only exercise instructions and a blank solution template.
- Do not upload malformed-stream payloads, exploit code, binaries, credentials, cookies, or data captured from third-party services.
- Do not test any public or third-party endpoint.
- The CISA KEV due date of 10 November 2026 applies to covered US federal agencies; it is not a universal legal deadline.

## Provenance

This is an original defensive research lab based on the public CVE record and upstream fix. It is not an official CTF challenge and does not redistribute third-party challenge material.
