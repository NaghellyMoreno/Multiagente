---
name: write-architecture
description: "Escribe la arquitectura del proyecto: docs/03-arquitectura.md, api/openapi.yaml y los ADR en docs/adr/. Usar en la fase 2 o al cambiar una decisión técnica."
---

# Arquitectura

## Pasos
1. Lee `docs/02-requisitos.md`, `feature_list.json`, el stack, la publicación y los invariantes de `CLAUDE.md`, y la sección "architect" de `docs/guia-agentes.md`.
2. Copia `assets/arquitectura-template.md` a `docs/03-arquitectura.md` y llénalo.
3. Escribe un ADR por cada decisión de la lista de abajo y de la guía del proyecto, con `assets/adr-template.md`, en `docs/adr/NNNN-titulo-corto.md` (numeración desde 0001).
4. Escribe `api/openapi.yaml` siguiendo `references/openapi-conventions.md`.
5. Verifica en la documentación oficial cada librería y versión que fijes.

## Decisiones que toda arquitectura cubre
Cada una lleva un ADR. Si depende de información que no tienes, el ADR queda Pendiente con la pregunta concreta y opciones comparadas para que decida la usuaria.
1. Cómo se garantiza cada invariante de `CLAUDE.md` en la base de datos y en la API (transacciones, bloqueos, restricciones).
2. Autenticación, sesiones, roles y autorización.
3. Requisitos de seguridad del contexto: validación de entrada, límites de intentos, cabeceras, CORS, CSRF, auditoría.
4. Tareas programadas y en segundo plano, según lo que permita la plataforma de publicación.
5. Cada integración externa: proveedor, modo de prueba sin efectos reales, costo y manejo de fallos.
6. Archivos: dónde se guardan y cómo se protegen.
7. Datos simulados o semilla: formato y carga. El contenido lo decide la usuaria.
8. Publicación: cómo se despliega cada parte, entornos, variables de entorno y desarrollo local.
9. Estructura del repositorio y cómo comparten tipos frontend y backend a partir de `api/openapi.yaml`.
10. Herramientas: gestor de paquetes, migraciones, pruebas de backend, frontend y extremo a extremo.

## Errores comunes
- Proteger un invariante solo en la interfaz: se garantiza en la base de datos y en la API.
- Diseñar procesos o servicios que la plataforma de publicación de `CLAUDE.md` no soporta.
- Detallar cómo se implementa cada función: define contratos y responsabilidades.
- Elegir una librería sin verificar que existe y sigue mantenida.
