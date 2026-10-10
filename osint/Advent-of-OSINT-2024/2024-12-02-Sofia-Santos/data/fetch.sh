#!/usr/bin/env bash
set -euo pipefail
URL='https://en.osint4fun.eu/img/advent2024/671e6493358d7.jpg'
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
curl -fL --retry 3 "$URL" -o "$DIR/source-image.jpg"
