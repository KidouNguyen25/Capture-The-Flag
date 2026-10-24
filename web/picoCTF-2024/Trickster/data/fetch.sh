#!/usr/bin/env bash
# Fetch the public landing page from a user-provided official picoCTF instance.
# Usage: ./fetch.sh 'http://<instance-host>:<instance-port>/'
set -euo pipefail

if [[ $# -ne 1 || ! "$1" =~ ^https?:// ]]; then
  printf 'Usage: %s <official-instance-url>\n' "$0" >&2
  exit 2
fi

script_dir="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
output="$script_dir/instance-index.html"

curl --fail --location --silent --show-error \
  --connect-timeout 10 --max-time 30 \
  --output "$output" -- "$1"

printf 'Saved landing-page HTML to %s\n' "$output"
printf 'Do not commit local captures or any challenge flags.\n'
