# Challenge data — basic-mod1

The challenge requires one text file, `message.txt`, hosted by the official picoCTF artifact service.

- Official challenge: https://learn.cylabacademy.org/library/253
- Official download: https://artifacts.picoctf.net/c/128/message.txt
- Required file: `message.txt`
- Redistribution status: not independently verified; the artifact is not committed to this repository.

## Preparation

From this directory:

```bash
bash fetch.sh
```

Alternatively:

```bash
curl -fL --retry 2 'https://artifacts.picoctf.net/c/128/message.txt' -o message.txt
```

Check that the download is a non-empty text file containing a sequence of integers. Do not paste or commit the contents of a solution, a flag, or third-party write-ups. If the official artifact becomes unavailable, open the official challenge and use its current download link instead.

This directory stores only retrieval instructions and a small download helper.
