#!/usr/bin/env bash
set -euo pipefail

URL="https://artifacts.picoctf.net/c_rhea/12/challenge.zip"
OUT="${1:-challenge.zip}"

curl --fail --location --show-error "$URL" --output "$OUT"
printf 'Downloaded %s from the official picoCTF artifact source.\n' "$OUT"
