# Trickster — picoCTF 2024

## Metadata

- **Event:** picoCTF 2024
- **Category:** Web Exploitation
- **Difficulty:** Medium
- **Points:** 300
- **Challenge author:** Junias Bonou (listed as JUNIAS BONOU in challenge metadata)
- **Platform:** CyLab Security Academy / picoCTF
- **Official challenge:** https://learn.cylabacademy.org/library/445
- **Author's professional biography:** https://www.first.org/events/symposium/africa-arab-regions2024/program
- **Challenge type:** On-demand web application

## Challenge statement

> I found a web app that can help process images: PNG images only!

The official platform supplies the target web application after you launch an instance. Investigate the application's file-processing functionality and retrieve the challenge flag without using a published solution.

## Objective

Assess the security of a web application's image-upload workflow in the authorized picoCTF environment. Determine whether the application safely validates and handles submitted files, and demonstrate the issue required to recover and submit the flag.

## Prerequisites

- HTTP requests, responses, and multipart form submissions
- Browser Developer Tools and/or Burp Suite Proxy and Repeater
- Basic file formats, extensions, and content types
- Linux command-line basics and introductory web security concepts

## Official challenge data

No separate downloadable dataset, source-code archive, or binary is specified for this challenge. The **on-demand web instance** is the complete official challenge environment.

1. Sign in at https://learn.cylabacademy.org/library/445.
2. Launch the challenge instance and open its generated application URL.
3. Use the provided application and its HTTP responses as the challenge input.
4. See [data/README.md](data/README.md) for provenance and reproduction notes.

The instance address is assigned dynamically. Do not commit a temporary instance URL, uploaded test files, cookies, credentials, or any flag. No third-party write-up artifacts are included.

## Hints

<details>
<summary>Hint 1</summary>

Observe the complete file-upload HTTP exchange, not only the success or failure message in the browser.

</details>

<details>
<summary>Hint 2</summary>

A file's name, its declared content type, and its actual bytes are different pieces of information. Consider which of these the server checks.

</details>

<details>
<summary>Hint 3</summary>

A successful upload is not the same as safe storage or safe processing. Investigate what the application does with an accepted file after upload.

</details>

## Completion criteria

1. Retrieve and submit the valid flag on the official challenge platform without consulting a write-up.
2. Document the initial upload behavior and at least one reproducible test.
3. Explain the difference between client-side restrictions and server-side validation.
4. Identify the insecure trust boundary and its security impact.
5. Propose concrete defenses for the issue you observed.
6. Record your own observations, commands, results, and reasoning in `SOLUTION.md`.

## Provenance and author verification

- Official challenge: https://learn.cylabacademy.org/library/445
- Official platform: https://learn.cylabacademy.org/
- Author attribution: the picoCTF 2024 challenge metadata names **JUNIAS BONOU**.
- Independent professional biography identifying **Dona Gracia Junias Bonou**: https://www.first.org/events/symposium/africa-arab-regions2024/program
- The FIRST biography establishes the author's identity and professional affiliation; it is not an independent claim of challenge authorship.
- The official challenge page may require an account to view or launch.

No solution, flag, or exploit payload is included.
