# Official challenge environment — Trickster

## Source

- Official challenge: https://learn.cylabacademy.org/library/445
- Event: picoCTF 2024
- Challenge author: Junias Bonou

## Data availability

This challenge is hosted as an **on-demand web application**. The official challenge entry does not advertise a separate downloadable challenge archive, source code, binary, or dataset. The generated instance is the required challenge input; its hostname and port can change between launches.

To reproduce access:

1. Open the official challenge URL and sign in if required.
2. Select **Launch Instance**.
3. Open the dynamically assigned application URL.
4. Observe the application and HTTP traffic in your browser or an intercepting proxy.
5. Optionally save the public landing-page HTML for your own local analysis using `./fetch.sh '<INSTANCE_URL>'`.

The helper script downloads only the landing page from the **official instance URL you provide**. It does not mirror the application backend or replace the running instance. Avoid capturing or committing authentication cookies, challenge flags, personal data, or sensitive HTTP traffic.

## Redistribution

No challenge-owned binaries, application assets, or other artifacts are redistributed here. Redistribution rights for the dynamically hosted challenge application have not been independently established. Local HTML captures are ignored by Git.

## Provenance

Do not substitute challenge files from third-party write-ups. Use the official platform to create a fresh instance when needed.
