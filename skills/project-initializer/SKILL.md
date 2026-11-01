---
name: project-initializer
description: "Inicializa el repositorio del proyecto según la arquitectura aprobada: esqueleto, init.sh, .env.example y progress.md, con un commit inicial. Usar una sola vez, en el modo inicializar de developer, después de la compuerta 2."
---

# Inicialización del proyecto

## Antes de empezar
- `docs/04-readiness.md` debe decir PASS, o CONCERNS aceptado por la usuaria. Si no, detente.
- Debe existir el repositorio git. Si no existe, detente y pídeselo a la usuaria: nunca ejecutes `git init` ni configures remotos.
- Toma stack, estructura, herramientas y comandos de `CLAUDE.md` y `docs/03-arquitectura.md`. No elijas herramientas por tu cuenta.

## Pasos
1. Crea la estructura de carpetas de la arquitectura, con el mínimo para arrancar:
   - Backend con un endpoint de salud y una prueba que lo verifica.
   - Frontend con una página inicial y una prueba.
   - Conexión a la base de datos y una migración inicial vacía.
2. `.gitignore`, que incluye `.env`, `.env.*` (excepto `.env.example`), dependencias instaladas, artefactos de compilación y `qa/evidencia/`.
3. `.env.example` con todas las variables que pide la arquitectura, sin valores.
4. `init.sh` a partir de `assets/init-template.sh`, con los comandos reales de la arquitectura.
5. `progress.md` a partir de `assets/progress-template.md`.
6. Configura la publicación según la arquitectura, sin desplegar.
7. Ejecuta `./init.sh`. Debe terminar sin errores dos veces seguidas.
8. Commit: `chore: inicializa el proyecto`.

## Errores comunes
- Implementar funcionalidades. Aquí solo va el esqueleto.
- Sobrescribir `docs/`, `.claude/`, `CLAUDE.md`, `feature_list.json` o `api/openapi.yaml`.
- Un `init.sh` que imprime secretos, que falla al correrlo por segunda vez o que deja procesos sin control.
- Crear `.env`: lo crea la usuaria copiando `.env.example`.
- Desplegar: lo hace la usuaria.
