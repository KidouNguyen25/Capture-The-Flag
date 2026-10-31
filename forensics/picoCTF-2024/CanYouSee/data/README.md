# Official challenge data — CanYouSee

## Required material

- Official challenge: https://learn.cylabacademy.org/library/408
- Official archived download URL: https://artifacts.picoctf.net/c_titan/6/unknown.zip
- Archive filename: `unknown.zip`
- Expected extracted image: `ukn_reality.jpg`

The file is served from picoCTF's own artifact host. The challenge page remains the authoritative source for the current file URL; if the archived link is unavailable or your account provides a different link, copy the download URL from the official challenge page and supply it to the fetch script.

The direct archive URL was corroborated against a public link to the official host, but binary download was not successfully tested in the automation environment on 2026-10-31. Do not claim an independent live download check.

## Preparation

From this directory:

```bash
bash fetch.sh
unzip -l unknown.zip
unzip unknown.zip
```

To override the archived official link:

```bash
bash fetch.sh 'https://artifacts.picoctf.net/ACTUAL/OFFICIAL/PATH/unknown.zip'
```

The script refuses non-HTTPS or non-official artifact hosts. It does not download from write-up mirrors. Inspect the downloaded archive before opening untrusted contents.

## Redistribution

No permission to redistribute the challenge archive or image has been independently established. Therefore neither is committed. Keep downloaded files locally and out of version control.
