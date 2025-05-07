#!/bin/bash

set -e

URL=$1
echo "🔍 Performing health check on $URL"

status_code=$(curl --silent --output /dev/null --write-out "%{http_code}" "$URL")

if [ "$status_code" -eq 200 ]; then
  echo "✅ Health check passed"
  exit 0
else
  echo "❌ Health check failed with status $status_code"
  exit 1
fi
