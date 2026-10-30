#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")"
url='https://artifacts.picoctf.net/c/128/message.txt'
output='message.txt'

if command -v curl >/dev/null 2>&1; then
  curl --fail --location --retry 2 --silent --show-error "$url" --output "$output"
elif command -v wget >/dev/null 2>&1; then
  wget --quiet --output-document="$output" "$url"
else
  echo 'Error: curl or wget is required.' >&2
  exit 1
fi

if [[ ! -s "$output" ]]; then
  echo 'Error: downloaded file is empty.' >&2
  exit 1
fi
echo "Saved official challenge data to $PWD/$output"
