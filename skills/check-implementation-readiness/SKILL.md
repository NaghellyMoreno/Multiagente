---
name: check-implementation-readiness
description: "Revisa si brief, requisitos, arquitectura y contrato OpenAPI del proyecto están listos para implementar y emite PASS, CONCERNS o FAIL en docs/04-readiness.md. Usar después de la arquitectura y antes de inicializar el proyecto."
---

# Revisión de preparación para la implementación

Solo lectura, salvo el informe. No corrijas documentos: señala el problema y quién lo arregla.

## Pasos
1. Arma un inventario: historias, RNF, funcionalidades, endpoints, ADR y preguntas abiertas.
2. Construye la matriz funcionalidad → historias → endpoints → pantallas y busca huecos en ambas direcciones.
3. Recorre las verificaciones de abajo y las de la sección "readiness-reviewer" de `docs/guia-agentes.md`.
4. Copia `assets/readiness-template.md` a `docs/04-readiness.md` y llénalo.

## Verificaciones
| Área | Qué revisar |
| --- | --- |
| Cobertura | Cada historia tiene funcionalidad; cada funcionalidad tiene historia, pasos verificables, endpoints y pantallas |
| Contrato | Cada endpoint sirve a una funcionalidad; esquemas de entrada, salida y error completos |
| Contexto | Nada contradice `docs/00-contexto-producto.md`; nada de lo que declara fuera de alcance se coló |
| Invariantes | Cada invariante de `CLAUDE.md` tiene un RNF y un mecanismo en la arquitectura |
| Seguridad | Cada requisito de seguridad del contexto tiene RNF y mecanismo; cada endpoint declara quién puede llamarlo |
| Publicación | La arquitectura funciona en la plataforma de `CLAUDE.md` |
| Decisiones | Las decisiones de la skill write-architecture y de la guía del proyecto tienen ADR |
| Pendientes | Ninguna pregunta abierta bloquea las funcionalidades de prioridad más alta |
| Consistencia | Mismos nombres de entidades, actores y estados en todos los documentos |

## Severidad y veredicto
- **Crítico:** contradice el contexto, rompe un invariante o deja una funcionalidad imposible de construir.
- **Mayor:** falta información que obligaría al developer a suponer.
- **Menor:** redacción, nombres o detalles que no bloquean.
- Veredicto: FAIL si hay algún crítico; CONCERNS si hay mayores; PASS si solo hay menores o ninguno.

## Errores comunes
- Aprobar porque los documentos "se ven completos". Cada hallazgo y cada aprobación se apoyan en un archivo y una sección.
- Pedir mejoras de estilo como si fueran bloqueos.
