---
name: write-product-brief
description: "Escribe docs/01-brief.md a partir del contexto aprobado del proyecto (docs/00-contexto-producto.md). Usar en la fase 1, cuando product-manager prepara o actualiza el brief."
---

# Brief del producto

El brief no crea producto nuevo: ordena el contexto aprobado para que el resto del flujo trabaje sobre él. Toda afirmación cita la sección de origen (por ejemplo, sección 3.4).

## Pasos
1. Lee el contexto por secciones: dominio, restricciones y fuera de alcance completos; las demás secciones solo para listar capacidades, no para copiarlas.
2. Lee la sección "product-manager" de `docs/guia-agentes.md`.
3. Copia `assets/brief-template.md` a `docs/01-brief.md` y llena cada sección.
4. Marca cada objetivo, supuesto y riesgo como **Confirmado**, **Inferido** o **Pendiente**.
5. Junta en "Preguntas abiertas" todo lo que el contexto no responde y bloquea los requisitos.

## Errores comunes
- Copiar párrafos enteros del contexto. Resume y cita la sección; el contexto sigue siendo la fuente.
- Inventar métricas. Si el contexto no da la cifra, el objetivo va sin cifra y con estado Pendiente.
- Convertir en alcance algo que el contexto declara fuera de alcance.
- Presentar como obligación legal algo que el contexto define como regla propia del producto.
