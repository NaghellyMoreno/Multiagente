# Sistema de agentes de desarrollo

Agentes y skills de Claude Code para desarrollar aplicaciones por fases: brief y requisitos, arquitectura, revisión de preparación, inicialización y un ciclo por funcionalidad con contrato, código y QA independiente. Son genéricos: todo lo propio de un proyecto vive en el proyecto.

## Contenido
| Carpeta o archivo | Qué es |
| --- | --- |
| `agents/` | 8 agentes: orchestrator, product-manager, architect, readiness-reviewer, developer, developer-paralelo, qa-evaluator y Explore |
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

## Dudas, decisiones y consumo
- **3 iteraciones:** las dudas a la usuaria van en máximo 3 rondas (la tercera ya cerrada, con respuesta recomendada). Los bucles de revisión de contrato, readiness y corrección tienen el mismo tope; al tercero el orquestador se detiene y explica.
- **Decisiones congeladas:** `docs/decisiones.md` solo admite filas nuevas (`>>`). Un hook en `plantilla-proyecto/.claude/hooks/` bloquea editar, sobrescribir o borrar. Solo la usuaria lo cambia, a mano.
- **Consumo:** skills cargadas por modo, `tail` en progress.md, sin `init.sh` en modo contrato, `maxTurns` en todos los agentes y respuestas cortas.

## Desarrollo en paralelo
El orquestador puede implementar 2 o 3 funcionalidades independientes a la vez con `developer-paralelo`: cada una en su worktree y rama (`isolation: worktree`), integradas y evaluadas de a una. Requiere un commit previo, `worktree.baseRef: "head"` (ya en la plantilla) y que `init.sh` funcione en una copia nueva. Va más rápido, no gasta menos tokens.

## Reglas para mantenerlo genérico
- Nada de nombres de productos, reglas de dominio ni stack en `agents/` o `skills/`.
- Lo propio de un proyecto va en su `docs/guia-agentes.md`.
- Las skills de un stack (por ejemplo NestJS o React) pueden vivir aquí si sirven para cualquier proyecto con ese stack.
