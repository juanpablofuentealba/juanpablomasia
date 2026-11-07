#!/usr/bin/env bash
cd /tmp
for n in 1 2 3 4; do
  chromium --headless --disable-gpu --no-sandbox \
    --print-to-pdf="/tmp/clase-$n.pdf" --no-pdf-header-footer \
    "file:///tmp/hoja$n.html" 2>/dev/null
done
ls -la /tmp/clase-*.pdf
