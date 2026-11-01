# Sistema de agentes de desarrollo

Agentes y skills de Claude Code para desarrollar aplicaciones por fases: brief y requisitos, arquitectura, revisión de preparación, inicialización y un ciclo por funcionalidad con contrato, código y QA independiente. Son genéricos: todo lo propio de un proyecto vive en el proyecto.

## Contenido
| Carpeta o archivo | Qué es |
| --- | --- |
| `agents/` | 7 agentes: orchestrator, product-manager, architect, readiness-reviewer, developer, qa-evaluator y Explore |
| `skills/` | 7 skills de proceso con sus plantillas |
| `plantilla-proyecto/` | Estructura y archivos base de un proyecto nuevo |
| `instalar.sh` | Copia agentes y skills a `~/.claude` |
| `nuevo-proyecto.sh` | Crea la estructura de un proyecto nuevo |

## Instalar o actualizar
```bash
./instalar.sh
```
Después de mejorar un agente o una skill aquí, vuelve a ejecutarlo: todos tus proyectos usan la versión nueva.

## Empezar un proyecto
```bash
./nuevo-proyecto.sh ~/ruta/mi-proyecto
```
Luego completa los tres archivos que conectan el proyecto con el sistema:
1. `CLAUDE.md`: stack, publicación, invariantes y convenciones.
2. `docs/00-contexto-producto.md`: contexto aprobado del producto.
3. `docs/guia-agentes.md`: reglas propias del proyecto para cada agente.

Crea el repositorio git tú misma y ejecuta `claude --agent orchestrator`.

## Reglas para mantenerlo genérico
- Nada de nombres de productos, reglas de dominio ni stack en `agents/` o `skills/`.
- Lo propio de un proyecto va en su `docs/guia-agentes.md`.
- Las skills de un stack (por ejemplo NestJS o React) pueden vivir aquí si sirven para cualquier proyecto con ese stack.
