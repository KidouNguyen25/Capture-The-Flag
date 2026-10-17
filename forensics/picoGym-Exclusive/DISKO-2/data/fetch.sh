#!/usr/bin/env bash
set -euo pipefail
URL="https://artifacts.picoctf.net/c/541/disko-2.dd.gz"
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
DEST="$DIR/disko-2.dd.gz"
if [[ -e "$DEST" ]]; then
  echo "Existing download: $DEST"
else
  curl --fail --location --show-error --retry 3 --output "$DEST" "$URL"
fi
gzip -t "$DEST"
sha256sum "$DEST"
