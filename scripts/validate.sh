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
    for ref in $(grep -oE '(href|src)="[^"]+"' "$f" | sed 's/^[^"]*"//;s/"$//'); do
    case "$ref" in
      http*|'#'*|'') continue ;;
      /*.css|/*.svg|/*.html|/*.md) target=".${ref}" ;;
      ../*.css|../*.svg|../*.html|../*.md) target="${ref#../}" ;;
      *) continue ;;
    esac
    if [ ! -f "$target" ]; then
      echo "MISSING: $ref in $f"
      status=1
    fi
  done
done

echo "=== Checking internal links ==="
for f in templates/*.html docs/*.html; do
  dir=$(dirname "$f")
  for link in $(grep -oE 'href="[^"]*\.html"' "$f" | sed 's/^[^"]*"//;s/"$//'); do
    case "$link" in
      http*|'#'*) continue ;;
      /*.html) target=".${link}" ;;
      ../*.html) target="${link#../}" ;;
      *.html) target="$dir/$link" ;;
      *) continue ;;
    esac
    if [ ! -f "$target" ]; then
      echo "BROKEN LINK: $link in $f"
      status=1
    fi
  done
done

exit $status
