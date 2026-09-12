# IntroToBurp

## Metadata

- **Event:** picoCTF 2024
- **Category:** Web Exploitation
- **Difficulty:** Easy
- **Points:** 100
- **Authors:** Nana Ama Atombo-Sackey & Sabine Gisagara
- **Challenge Library:** https://learn.cylabacademy.org/library/419
- **Platform:** CyLab Security Academy / picoCTF

## Challenge

> Try here to find the flag.

Additional details and the target web application are provided after launching the challenge instance from the official Challenge Library.

## Objective

Inspect and manipulate the HTTP workflow of the provided web application to identify a server-side logic flaw and retrieve the flag.

## Prerequisites

- Basic HTTP request/response structure
- GET and POST requests
- HTML forms and parameters
- Burp Suite Proxy / Repeater basics

## Challenge data

This challenge does not require a downloadable dataset or static challenge files. The target is provisioned dynamically by the official platform when the challenge instance is launched.

Use the official challenge page to start an instance:

https://learn.cylabacademy.org/library/419

## Hints

<details>
<summary>Hint 1</summary>

Do not treat the browser UI as the only interface to the application. Observe the HTTP requests generated while moving through the workflow.

</details>

<details>
<summary>Hint 2</summary>

Use Burp Suite to intercept the request associated with the application's verification step. Compare what the browser sends with what the server actually requires.

</details>

<details>
<summary>Hint 3</summary>

Test how the server behaves when the structure of the verification request is changed, not merely when the value of a parameter is changed.

</details>

## Completion criteria

Consider the challenge complete when you can:

1. Retrieve and submit the correct flag without consulting a write-up.
2. Capture the relevant HTTP request in Burp Suite.
3. Explain the difference between changing a parameter value and changing the request structure.
4. Explain why server-side validation must handle malformed or missing input explicitly.
5. Document your own investigation in `SOLUTION.md`.

## Provenance

- Official platform: https://picoctf.org/
- Official challenge library entry: https://learn.cylabacademy.org/library/419
- Challenge authorship is attributed to Nana Ama Atombo-Sackey and Sabine Gisagara in preserved picoCTF 2024 challenge metadata. No separate official public author profile was found, so no author-profile URL is asserted here.

No flag or solution is included in this challenge package.
