# Source Material

## Official sources

- PHP Group security release and technical advisory index: https://www.php.net/index.php
- CVE-2026-109618 — RCE via OOM corruption: https://github.com/php/php-src/security/advisories/GHSA-w8hw-w9fx-j79w
- CVE-2026-109619 — RCE via stale global state: https://github.com/php/php-src/security/advisories/GHSA-6wmf-4rv5-p3rp
- IPA security alert, originally published 22 October 2026 and updated 2 November 2026: https://www.ipa.go.jp/security/security-alert/2026/alert20261022.html
- PHP source repository: https://github.com/php/php-src

## How to use the sources

1. Read both GitHub Security Advisories maintained in the official php/php-src repository.
2. Read the PHP Group security-release entry and record the fixed release versions.
3. Read the IPA update separately. Note which information was added on 2 November 2026.
4. If reviewing source code, use the official php/php-src repository and compare the affected and patched release tags after verifying that the tags exist. Record the exact tag or commit used.
5. Keep conclusions tied to the specific SAPI, configuration, and request path described by the source.

## Downloads and redistribution

No binary or third-party challenge data is required. This repository intentionally stores only this source guide; consult the official PHP repository for source material. Do not mirror PHP source archives or advisory attachments here.

## Safety

Do not test a production service, generate malformed HTTP requests, deliberately exhaust memory, or attempt remote code execution. The exercise is limited to public advisory review, source inspection, lifecycle modelling, and defensive regression-test design.

## Provenance

This is an original educational lab idea based on public PHP Group and IPA advisories. It is not an official event challenge, and no third-party write-up or solution is redistributed.
