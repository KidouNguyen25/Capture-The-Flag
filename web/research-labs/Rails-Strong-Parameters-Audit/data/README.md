# Source Material

## Official sources

- Rails security advisory GHSA-wm3x-v3qw-4jh3: https://github.com/rails/rails/security/advisories/GHSA-wm3x-v3qw-4jh3
- Rails 8.1 patch: https://github.com/rails/rails/commit/8ba746e0a786458c281060823f2ccc5c5f6312ac.patch
- Rails 8.0 patch: https://github.com/rails/rails/commit/2fc8838300133931e19eed3ea6cee76a7e83f19c.patch
- Rails security advisories: https://github.com/rails/rails/security/advisories

## How to use the sources

1. Read the maintainer advisory and record its publication date, affected versions, and fixed versions.
2. Compare the behavior described for `each_key` with the sibling iterator methods.
3. Inspect the upstream patch to understand the intended return-value contract.
4. Keep the review scoped to applications that pass the block-form `each_key` return value to mass assignment.
5. Build isolated regression tests. Do not test against a live application or real account data.

## Downloads and redistribution

No binary or third-party challenge data is required. This repository stores only this source guide; consult the official Rails repository for the advisory and patch files. No external challenge assets are mirrored here.

## Safety

Do not deploy vulnerable Rails versions, expose a test endpoint, or attempt to modify real user or authorization attributes. Use a local test harness with synthetic data only.

## Provenance

This is an original educational lab idea based on a public Rails maintainer advisory. It is not an official event challenge, and no third-party write-up or solution is redistributed.
