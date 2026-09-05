# Verify — picoCTF 2024

## Metadata

- Event: picoCTF 2024
- Category: Forensics
- Difficulty: Easy
- Author: Jeffery John
- Tags: `grep`, `browser_webshell_solvable`, `checksum`
- Source: picoCTF / Carnegie Mellon University CyLab Security and Privacy Institute
- Official platform: https://picoctf.org/
- Official challenge package: https://artifacts.picoctf.net/c_rhea/12/challenge.zip
- Author attribution: Jeffery John is credited as the challenge author in the official picoCTF challenge interface and is listed by picoCTF as a Problem Writer: https://picoctf.org/about.html

## Problem

People keep trying to trick the players with imitation flags. The challenge provides a SHA-256 checksum and a decryption script so that the legitimate artifact can be identified before it is decrypted.

The challenge package contains a large set of candidate files. Determine which file matches the supplied SHA-256 checksum, then use the supplied tooling to recover the flag.

This repository intentionally keeps the challenge statement spoiler-free. The flag and solution are not stored here.

## Challenge data

See [`data/README.md`](data/README.md). The official package can be reproduced locally with [`data/fetch.sh`](data/fetch.sh).

## Goal

- Understand what a cryptographic checksum verifies.
- Use SHA-256 to identify the authentic artifact among many candidates.
- Practice shell pipelines and text filtering.
- Inspect and correctly invoke a supplied shell script.

## Prerequisites

- Basic Linux shell usage: `cd`, `ls`, executable scripts.
- Basic understanding of hashes/checksums.
- Common shell utilities such as `sha256sum` and `grep`.

## Write-up

Write the solution in [`SOLUTION.md`](SOLUTION.md) after completing the challenge. Keep the reasoning, commands, mistakes, and lessons learned there rather than modifying the original problem statement.
