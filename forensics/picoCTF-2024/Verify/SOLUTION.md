# Solution — Verify

## Observation
Each file has its own unique SHA-256 hash.

## Hypothesis
We only need to compute the SHA-256 hash of each file and find the one that matches the provided checksum.

## Investigation
The number of files in the `files` directory is relatively small, so hashing all of them is practical.

## Commands

```bash
ssh -p 62590 ctf-player@rhea.picoctf.net
yes
6dd28e9b
ls
sha256sum files/*
sha256sum files/* | grep -f checksum.txt
./decrypt.sh files/00011a60
```

## Result

```text
picoCTF{trust_but_verify_00011a60}
```

## Mistakes / Dead Ends
None.

## Lessons Learned
SHA-256 checksums can be used to verify file identity and integrity. When a target checksum is provided, computing hashes for candidate files is an efficient way to locate the correct file.

## References
- Challenge metadata and source: see [`README.md`](README.md).
