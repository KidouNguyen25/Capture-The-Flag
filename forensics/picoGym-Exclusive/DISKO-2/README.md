# DISKO 2 — picoGym Exclusive

## Challenge metadata

- **Category:** Forensics
- **Difficulty:** Medium
- **Event/collection:** picoGym Exclusive (CyLab Security Academy / picoCTF)
- **Author credited:** Darkraicg492
- **Official challenge:** https://learn.cylabacademy.org/practice/challenge/506
- **Official legacy challenge URL:** https://play.picoctf.org/practice/challenge/506
- **Author attribution reference:** The official challenge detail page above is the primary attribution location. The author handle is also independently reported in community challenge metadata; no separate official author profile has been verified.
- **Official artifact:** https://artifacts.picoctf.net/c/541/disko-2.dd.gz
- **Artifact name:** `disko-2.dd.gz`
- **Artifact format:** gzip-compressed raw disk image

## Original problem statement

> Can you find the flag in this disk image? The right one is Linux! One wrong step and its all gone!

Download the disk image from the official challenge page or via the official artifact URL above.

## Objective

Investigate the supplied disk image and recover the correct flag using evidence from the relevant part of the image. Submit the flag on the official challenge platform. Do not rely on a published write-up.

## Prerequisites

- Basic Linux command-line navigation.
- Understanding of files, compression, and raw disk images.
- Introductory understanding of partitions and filesystems.
- Familiarity with basic read-only inspection tools.

## Challenge data and provenance

See [data/README.md](data/README.md) for the verified official download URL, provenance, and acquisition instructions. Use [data/fetch.sh](data/fetch.sh) to download the artifact directly from the official picoCTF host.

The binary artifact is **not mirrored** here: permission to redistribute this specific challenge file has not been independently verified. The fetch script obtains it directly from the original host.

## Progressive hints

<details>
<summary>Hint 1</summary>

Before searching for anything, identify the file type and how its contents are organized. A disk image may contain more than one logical region.

</details>

<details>
<summary>Hint 2</summary>

Treat the reference to Linux in the problem statement as a constraint. Determine how the image describes its internal regions and which one meets that constraint.

</details>

<details>
<summary>Hint 3</summary>

Keep the original evidence unchanged. Analyze the relevant region separately, and do not assume every flag-shaped string in the image is valid.

</details>

## Completion criteria

- [ ] Retrieve the artifact from the official host and record its SHA-256 digest.
- [ ] Explain the difference between a raw disk image, a partition, and a filesystem.
- [ ] Identify the relevant region from evidence rather than guessing offsets.
- [ ] Recover and submit the correct flag without consulting a write-up.
- [ ] Explain why other candidate data may be misleading.
- [ ] Reproduce the investigation and record the steps in [SOLUTION.md](SOLUTION.md).

## Attribution

- Challenge and submission: https://learn.cylabacademy.org/practice/challenge/506
- Official challenge artifact: https://artifacts.picoctf.net/c/541/disko-2.dd.gz
- Platform: https://www.cylabacademy.org/

No flags, solved payloads, or solution steps are included in this initial challenge record.
