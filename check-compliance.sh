#!/bin/bash
echo "🔍 Checking for disallowed licenses..."

DISALLOWED="GPL"

if grep -q "$DISALLOWED" package-lock.json; then
  echo "❌ Disallowed license found: $DISALLOWED"
  exit 1
else
  echo "✅ No disallowed licenses found."
fi
