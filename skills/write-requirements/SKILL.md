---
name: write-requirements
description: "Escribe docs/02-requisitos.md y feature_list.json: historias de usuario, requisitos no funcionales y funcionalidades verificables. Usar en la fase 1, después del brief, o al ajustar requisitos."
---

# Requisitos y lista de funcionalidades

## Pasos
1. Lee `docs/01-brief.md`, la sección "product-manager" de `docs/guia-agentes.md` y, del contexto, solo las secciones de cada capacidad que vas a detallar.
2. Copia `assets/requisitos-template.md` a `docs/02-requisitos.md`.
3. Historias de usuario (`HU-001`, `HU-002`...): "Como <actor>, quiero <acción>, para <beneficio>", con criterios de aceptación en formato Dado / Cuando / Entonces y la sección del contexto que las origina.
4. Requisitos no funcionales (`RNF-001`...): incluye cada invariante de `CLAUDE.md` y cada requisito de seguridad del contexto como un RNF verificable.
5. `feature_list.json`: sigue `assets/feature-example.json`. Cada funcionalidad cita las historias que cubre.

## Reglas para feature_list.json
- Una funcionalidad es un comportamiento que una persona puede probar de punta a punta y que cabe en un ciclo de contrato, código y QA.
- Si una capacidad existe en varios canales (por ejemplo, web y un bot), crea una funcionalidad por canal: se prueban distinto.
- `priority` sigue el orden del recorrido principal que describe el contexto, o el que indique la guía del proyecto.
- Cada rol con acceso restringido lleva funcionalidades de seguridad propias (categoría `security`): acceso sin sesión y con otro rol.
- `steps` son acciones y verificaciones concretas, no intenciones.
- `category`: `functional`, `security`, `privacy`, `notification` o `ui`.
- Toda funcionalidad nace con `"passes": false`.

## Errores comunes
- Reglas de tiempo, cantidades o límites aproximados. Usa las cifras exactas del contexto.
- Agregar funcionalidades que el contexto declara fuera de alcance.
- Requisitos que solo se pueden comprobar leyendo el código. Todo criterio se verifica desde fuera.
