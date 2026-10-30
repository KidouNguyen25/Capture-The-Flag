# basic-mod1

## Challenge metadata

| Field | Value |
| --- | --- |
| Event | picoCTF 2022 |
| Category | Cryptography |
| Difficulty | Medium (picoCTF 2022 classification) |
| Points | 100 |
| Challenge author | Not independently verified; no individual author is attributed here |
| Official challenge | [CyLab Security Academy — basic-mod1](https://learn.cylabacademy.org/library/253) |
| Official challenge data | [message.txt](https://artifacts.picoctf.net/c/128/message.txt) |
| Source organization | [CyLab Security Academy / picoCTF](https://learn.cylabacademy.org/) |

## Challenge description (no spoilers)

A sequence of integers was intercepted. The challenge supplies a decoding convention: reduce each integer modulo 37 and interpret the result with a 37-symbol alphabet. Values 0–25 correspond to uppercase English letters, 26–35 to decimal digits, and 36 to an underscore. Recover the message and submit it in the standard picoCTF flag format.

The challenge data is supplied by the official host; it is not mirrored here.

## Objective

Recover the hidden message from the official input file, construct the requested submission format, and submit the correct answer to the official platform. Do not consult public solutions.

## Prerequisites

- Basic command-line file handling.
- Integer division and remainders (modular arithmetic).
- Simple Python scripting or equivalent text processing.
- Character indexing and ordered alphabets.

## Progressive hints (open only if needed)

<details>
<summary>Hint 1 — Inspect the input</summary>

Check how the integers are separated in the downloaded file. Read them as data rather than transcribing them manually.

</details>

<details>
<summary>Hint 2 — Check the numeric range</summary>

For each integer, the remainder after division by the specified modulus should lie in a fixed, small range. Verify the possible minimum and maximum values before mapping symbols.

</details>

<details>
<summary>Hint 3 — Validate the character table</summary>

Confirm that the ordered table contains the required number of symbols and that letters, digits, and the final special character occupy the indices specified by the challenge.

</details>

## Completion checklist

- [ ] Downloaded the input from the official artifact host.
- [ ] Parsed every integer without manual transcription errors.
- [ ] Explained how modulo arithmetic constrains the possible output indices.
- [ ] Reconstructed the message without consulting a write-up.
- [ ] Submitted the result successfully on the official challenge page.
- [ ] Documented the actual investigation in `SOLUTION.md` only after solving.

## Data and redistribution

See [data/README.md](data/README.md). The official artifact is linked rather than committed because redistribution permission for that specific file has not been verified. No flags or solutions are included.
