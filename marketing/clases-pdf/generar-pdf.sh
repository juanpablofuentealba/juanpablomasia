#!/usr/bin/env bash
# Genera los 4 PDF (tamaño CARTA) desde los HTML de este directorio.
# Requiere Chromium. En la malla se corre en el MSI:
#   scp hoja*.html generar-pdf.sh msi-operador:/tmp/ && ssh msi-operador 'bash /tmp/generar-pdf.sh'
set -euo pipefail
DIR="$(cd "$(dirname "$0")" && pwd)"
for n in 1 2 3 4; do
  chromium --headless --disable-gpu --no-sandbox \
    --print-to-pdf="$DIR/Clase-$n.pdf" --no-pdf-header-footer \
    "file://$DIR/hoja$n.html" 2>/dev/null
done
echo "Listo. Tamaño carta (612x792). Verificar: magick identify 'Clase-1.pdf[0]'"
