# Source Material

## Official sources

- OpenAI security advisory, CVE-2026-110930: https://openai.com/security/advisories/cve-2026-110930/
- Microsoft `CreateProcessW` documentation: https://learn.microsoft.com/en-us/windows/win32/api/processthreadsapi/nf-processthreadsapi-createprocessw
- Microsoft .NET `ProcessStartInfo.ArgumentList` documentation: https://learn.microsoft.com/en-us/dotnet/api/system.diagnostics.processstartinfo.argumentlist

## How to use the sources

1. Read the OpenAI advisory and record its publication date, exact preconditions, affected versions, fixed versions, and known-exploitation status.
2. Read the `CreateProcessW` documentation. Note that Windows process creation receives a command-line string and that the child process is responsible for parsing it.
3. If using .NET for a benign test harness, review `ProcessStartInfo.ArgumentList` and compare structured argument passing with manual command-line concatenation.
4. Build a harmless child process that prints each received argument and exits. Use synthetic paths only; do not launch another desktop application.
5. Record the exact runtime, operating system, test inputs, and observed argument boundaries. Do not claim that a mock harness reproduces the vendor vulnerability.

## Downloads and redistribution

No binary, third-party challenge asset, or external dataset is required. This repository stores only this source guide. Consult the official Microsoft and OpenAI documentation directly.

## Safety

- Do not create or open a malicious `.library-ms` file.
- Do not run arbitrary commands or payloads through a desktop application.
- Do not test an affected Codex Desktop version.
- Do not use real project directories, credentials, or production data.
- Keep the child process limited to printing its parsed arguments.

## Provenance

This is an original defensive lab idea based on OpenAI's public CVE-2026-110930 advisory and Microsoft process-creation documentation. It is not an official event challenge, and no third-party write-up, flag, exploit, or binary is redistributed.
