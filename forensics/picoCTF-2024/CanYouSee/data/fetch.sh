#!/usr/bin/env bash
set -euo pipefail

DEFAULT_URL='https://artifacts.picoctf.net/c_titan/6/unknown.zip'
URL="${1:-$DEFAULT_URL}"

case "$URL" in
  https://artifacts.picoctf.net/*) ;;
  *) echo 'Refusing URL: only official picoCTF HTTPS artifact links are allowed.' >&2; exit 2 ;;
esac

DEST="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)/unknown.zip"
if [[ -e "$DEST" ]]; then
  echo "File already exists: $DEST" >&2
  exit 3
fi

curl --fail --location --show-error --silent --retry 2 --output "$DEST" "$URL"
echo "Downloaded official artifact to: $DEST"
echo 'Inspect with: unzip -l unknown.zip'
