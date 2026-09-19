# interencdec

## Metadata

- Event: picoCTF 2024
- Category: Cryptography
- Difficulty: Easy / Beginner
- Points: 50
- Author: NGIRIMANA Schadrack
- Challenge ID: 418

## Challenge

Can you get the real meaning from this file?

The challenge provides one encoded text artifact. Determine the original meaning and submit the resulting picoCTF flag.

Do not use public write-ups while solving.

## Challenge data

The official artifact is not mirrored in this repository because redistribution permission has not been verified.

Official artifact URL:

`https://artifacts.picoctf.net/c_titan/3/enc_flag`

Download it with:

```bash
mkdir -p data
curl -fL 'https://artifacts.picoctf.net/c_titan/3/enc_flag' -o data/enc_flag
```

The picoCTF artifact service is the authoritative source. If this particular artifact instance is unavailable, launch/open the challenge from the official platform and use the artifact URL presented there rather than obtaining the file from a third-party write-up.

## Objective

Recover the hidden plaintext/flag by identifying and reversing the transformations applied to `enc_flag`.

## Prerequisites

- Basic Linux command line usage
- Difference between encoding and encryption
- Familiarity with common textual encodings
- Basic understanding of substitution/rotation ciphers

## Hints

<details>
<summary>Hint 1</summary>

Inspect the file as text. Look at the character set, length, and any padding characters. Ask which common text encoding has this shape.

</details>

<details>
<summary>Hint 2</summary>

Do not assume there is only one transformation layer. After reversing one layer, inspect the result again before deciding what to do next.

</details>

<details>
<summary>Hint 3</summary>

If the final text has the structure of a picoCTF flag but the letters are wrong, compare the expected prefix `picoCTF` with what you have and consider a classical alphabet rotation.

</details>

## Completion criteria

You should be able to:

1. Recover and submit the correct flag without reading a public solution.
2. Identify every transformation layer in the correct order.
3. Explain why each decoding/decryption step is justified from the data itself.
4. Reproduce the process from the command line rather than relying only on an automatic decoder.
5. Explain the difference between encoding such as Base64 and a Caesar-style cipher.

## Provenance

- Official platform: https://learn.cylabacademy.org/
- Legacy picoCTF site: https://www.picoctf.org/
- Challenge page: https://play.picoctf.org/practice/challenge/418
- Official artifact: https://artifacts.picoctf.net/c_titan/3/enc_flag
- Challenge author: NGIRIMANA Schadrack

The author attribution is preserved from the picoCTF challenge metadata. Challenge files remain hosted by picoCTF/CyLab Security Academy and are not redistributed here.