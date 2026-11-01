---
name: done-contract
description: "Plantilla y reglas del contrato de terminado de una funcionalidad (contracts/<id>.md). Usar antes de codificar una funcionalidad de feature_list.json, al revisar un contrato y cuando QA evalúa contra él."
---

# Contrato de terminado

El contrato define qué significa "terminado" antes de escribir código. Lo propone developer, lo revisa qa-evaluator y después ambos trabajan contra él.

## Proponer (developer)
1. Copia `assets/contract-template.md` a `contracts/<id>.md`.
2. Por cada paso de la funcionalidad en `feature_list.json`, escribe al menos un criterio.
3. Cada criterio es una acción y un resultado observable, y dice cómo se verifica: prueba automática, Playwright o petición HTTP.
4. Lista los invariantes de `CLAUDE.md` que la funcionalidad toca y cómo se comprobará cada uno.
5. Indica los endpoints y pantallas según `docs/03-arquitectura.md`, y los datos de prueba que usarás.

## Revisar (qa-evaluator)
- Cada paso de la funcionalidad está cubierto y cada criterio se marca PASA o FALLA sin interpretación.
- Responde en la sección "Revisión QA": APROBADO, o la lista exacta de cambios.

## Errores comunes
- Criterios vagos como "funciona bien" o "se muestra correctamente". Reescríbelos como acción y resultado esperado.
- Agregar comportamiento que no está en la funcionalidad ni en el contexto.
- Olvidar los casos de error: datos inválidos, recursos agotados, sesión vencida, permisos insuficientes.
- En funcionalidades con control de acceso, olvidar los criterios de acceso sin sesión y con otro rol.
- Datos de prueba reales. Solo datos ficticios.
