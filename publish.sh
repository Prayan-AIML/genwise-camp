#!/bin/bash
# Push whatever changed and wait until GitHub Pages serves it.
set -e
cd "$(dirname "$0")"
git add -A presentation
git commit -q -m "${1:-Update presentation}" || { echo "Nothing changed."; exit 0; }
git push -q origin main
echo "Pushed. Waiting for GitHub Pages..."
URL="https://prayan-aiml.github.io/genwise-camp/presentation/genwise-journey.html"
LOCAL=$(shasum -a 256 presentation/genwise-journey.html | cut -d' ' -f1)
for i in $(seq 1 30); do
  if [ "$(curl -s "$URL" | shasum -a 256 | cut -d' ' -f1)" = "$LOCAL" ]; then
    echo "LIVE: $URL"; exit 0
  fi
  sleep 5
done
echo "Still building — check again in a minute: $URL"
