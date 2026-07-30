#!/usr/bin/env bash
set -euo pipefail

ROOT=$(cd "$(dirname "$0")/.." && pwd)
cd "$ROOT"

status=0

echo "=== Checking DOCTYPE ==="
for f in templates/*.html docs/*.html; do
  if ! grep -q '<!DOCTYPE html>' "$f"; then
    echo "FAIL: $f is missing DOCTYPE"
    status=1
  fi
done

echo "=== Checking required elements ==="
for f in templates/*.html; do
  if ! grep -q '<nav>' "$f"; then echo "FAIL: $f is missing <nav>"; status=1; fi
  if ! grep -q '<footer>' "$f"; then echo "FAIL: $f is missing <footer>"; status=1; fi
done

echo "=== Checking asset references ==="
for f in templates/*.html docs/*.html; do
  grep -oE '(href|src)="([^"]+)"' "$f" | while read -r match; do
    path=$(echo "$match" | sed 's/.*"\(.*\)"/\1/')
    case "$path" in
      http*|'#'*) continue ;;
      ../*) resolved="${path#../}" ;;
      *) continue ;;
    esac
    if [ ! -f "$resolved" ]; then
      echo "MISSING: $path referenced in $f"
      status=1
    fi
  done
done

echo "=== Checking internal links ==="
for f in templates/*.html docs/*.html; do
  grep -oE 'href="([^"]*\.html)"' "$f" | while read -r match; do
    link=$(echo "$match" | sed 's/href="\(.*\)"/\1/')
    case "$link" in
      http*) continue ;;
      ../templates/*) resolved="${link#../}" ;;
      ../docs/*) resolved="${link#../}" ;;
      *) continue ;;
    esac
    if [ ! -f "$resolved" ]; then
      echo "BROKEN LINK: $link in $f"
      status=1
    fi
  done
done

exit $status
