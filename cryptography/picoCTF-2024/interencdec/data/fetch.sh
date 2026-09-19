#!/usr/bin/env bash
set -euo pipefail

URL='https://artifacts.picoctf.net/c_titan/3/enc_flag'
SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"

curl --fail --location --proto '=https' --tlsv1.2 "$URL" --output "$SCRIPT_DIR/enc_flag"
printf 'Downloaded official picoCTF artifact to %s\n' "$SCRIPT_DIR/enc_flag"
