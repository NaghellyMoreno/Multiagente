# <Nombre del proyecto>

<Qué es el producto, para quién y qué experiencias tiene, en dos o tres frases.>

**Fuente de verdad del producto:** `docs/00-contexto-producto.md`. Ningún requisito, diseño ni código puede contradecirlo. Léelo por secciones, según la tarea.

**Sistema de agentes:** los agentes y skills son genéricos y están instalados en `~/.claude`. Las reglas propias de este proyecto para cada agente están en `docs/guia-agentes.md`.

## Reglas de trabajo
- Redacta en <idioma>: documentos, interfaz, mensajes al usuario y commits.
- La IA propone; la usuaria decide y valida.
- No inventes reglas, cifras, normas, integraciones ni comportamientos. Si falta información, pregunta. Si eres un subagente y no puedes preguntar, detente en ese punto y repórtalo como pendiente al orquestador.
- Distingue siempre **Confirmado**, **Inferido** y **Pendiente**. Una inferencia nunca se vuelve regla sin aprobación.
- Si una tarea contradice el contexto del producto, señala la contradicción y detente.
- Las decisiones de `docs/decisiones.md` están congeladas: no se modifican ni se reabren. Las dudas se resuelven en máximo 3 rondas.
- Para citar el contexto escribe "sección 3.4". No uses el símbolo de párrafo.

## Stack y publicación (fijos)
- Lenguaje:
- Frontend:
- Backend:
- Base de datos:
- Publicación: <plataforma y sus restricciones>

## Mapa del repositorio
| Ruta | Contenido | Quién escribe |
| --- | --- | --- |
| `docs/00-contexto-producto.md` | Contexto aprobado del producto | Solo la usuaria |
| `docs/guia-agentes.md` | Reglas del proyecto para cada agente | Solo la usuaria |
| `docs/decisiones.md` | Decisiones congeladas (solo se agrega con `>>`) | orchestrator agrega; nadie modifica |
| `docs/01-brief.md`, `docs/02-requisitos.md` | Brief y requisitos | product-manager |
| `docs/03-arquitectura.md`, `docs/adr/` | Arquitectura y decisiones | architect |
| `api/openapi.yaml` | Contrato entre frontend y backend | architect |
| `docs/04-readiness.md` | Revisión de preparación | readiness-reviewer |
| `feature_list.json` | Funcionalidades y estado `passes` | product-manager crea; solo qa-evaluator cambia `passes` |
| `contracts/<id>.md` | Contrato de terminado por funcionalidad | developer propone, qa-evaluator revisa |
| `qa/<id>.md` | Informe de QA por funcionalidad | qa-evaluator |
| `progress.md` | Bitácora: una línea por trabajo terminado | developer |
| `init.sh` | Levanta el entorno y corre una prueba de humo | developer |

## Flujo
- Modo proyecto: `claude --agent orchestrator`. Modo cambio (ajustes pequeños): `claude`.
- Una funcionalidad a la vez, con contrato aprobado antes de escribir código.
- Al empezar una sesión de código: leer `progress.md`, `git log --oneline -10` y ejecutar `./init.sh`.
- Git: nunca ejecutes `git init` ni configures remotos; los crea la usuaria. Si no hay repositorio, detente y pídeselo.

## Invariantes del producto (el código nunca los rompe)
1. <Regla que nunca se puede romper, con su sección del contexto.>

## Seguridad
- Credenciales solo en `.env` y en las variables de entorno de la plataforma. `.env` nunca se lee ni se sube al repositorio; `.env.example` lleva los nombres sin valores.

## Convenciones
- Zona horaria:
- Identificadores de código en inglés; textos visibles para el usuario en <idioma>.
- Un commit por funcionalidad o corrección, con mensaje descriptivo.
