#!/usr/bin/env bash
# Prepara la estructura de un proyecto nuevo: ./nuevo-proyecto.sh ~/ruta/mi-proyecto
# No sobrescribe archivos que ya existan.
set -euo pipefail
destino="${1:?Uso: nuevo-proyecto.sh <carpeta del proyecto>}"
origen="$(cd "$(dirname "$0")" && pwd)/plantilla-proyecto"
mkdir -p "$destino"
cp -Rn "$origen/." "$destino/"
chmod +x "$destino/init.sh" 2>/dev/null || true
echo "Proyecto preparado en $destino."
echo "Completa CLAUDE.md, docs/00-contexto-producto.md y docs/guia-agentes.md antes de usar el orquestador."
