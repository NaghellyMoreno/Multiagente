#!/usr/bin/env bash
# init.sh — levanta el entorno del proyecto y corre una prueba de humo.
# Debe poder ejecutarse varias veces seguidas sin errores. Nunca imprime secretos.
set -euo pipefail
cd "$(dirname "$0")"

if [ ! -f .env ]; then
  echo "Falta .env. Cópialo desde .env.example y completa los valores." >&2
  exit 1
fi

echo "== Dependencias"
# TODO: comando de instalación del backend (docs/03-arquitectura.md)
# TODO: comando de instalación del frontend

echo "== Base de datos"
# TODO: levantar PostgreSQL y esperar a que acepte conexiones
# TODO: aplicar migraciones

echo "== Servicios"
# TODO: iniciar backend y frontend si no están corriendo; guardar los PID en .run/

echo "== Prueba de humo"
# TODO: verificar el endpoint de salud del backend y que el frontend responda

echo "Listo. Backend: <URL>  Frontend: <URL>"
