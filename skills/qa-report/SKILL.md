---
name: qa-report
description: "Procedimiento para evaluar una funcionalidad contra su contrato y escribir el informe qa/<id>.md. Usar cuando qa-evaluator evalúa una funcionalidad."
---

# Evaluación e informe de QA

## Preparar
1. Lee `contracts/<id>.md` (incluida la Revisión QA), la funcionalidad en `feature_list.json` y la sección "qa-evaluator" de `docs/guia-agentes.md`.
2. Ejecuta `./init.sh` y la suite completa de pruebas con los comandos de `docs/03-arquitectura.md`.

## Probar
1. Recorre cada criterio en el orden del contrato y anota la evidencia: salida de la prueba, respuesta HTTP o captura de Playwright.
2. Interfaz web: usa Playwright como una persona. Revisa también mensajes de error, estados vacíos y que nada muestre datos que no debe.
3. Integraciones externas (mensajería, pagos, OCR...): usa el modo de prueba que define la arquitectura. No hagas envíos ni cobros reales salvo que el contrato lo pida.
4. Un caso límite por criterio como mínimo: dato vacío, inválido, vencido o sin permiso.
5. Si la funcionalidad tiene control de acceso, prueba sin sesión y con otro rol: deben negarse en la API, no solo en la pantalla.
6. Si la funcionalidad compite por un recurso limitado (cupos, existencias, saldos), prueba dos operaciones simultáneas sobre el último disponible: solo una puede ganar.
7. Aplica las pruebas obligatorias de la guía del proyecto.
8. Guarda las capturas en `qa/evidencia/<id>/`.

## Informar
1. Copia `assets/qa-report-template.md` a `qa/<id>.md`.
2. Veredicto PASA solo si todos los criterios y los invariantes pasan.
3. Solo con PASA, cambia `"passes"` a `true` en esa funcionalidad.

## Errores comunes
- Encontrar un fallo y aprobar porque "es menor". Un fallo es FALLA.
- Dar por bueno lo que no se pudo probar. Va como FALLA, con el motivo.
- Probar solo el camino feliz.
