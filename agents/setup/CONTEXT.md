# Contexto del agente setup

## Alcance

Este agente se usa una vez por proyecto o en mantenimiento de inicializacion.
No produce entregables de negocio; deja el proyecto operativo y validado.

## Fuentes

- `../../AGENTS.md`, `../../agent-config.yaml`: reglas y config del proyecto.
- `scripts/Init-Project.ps1`: reemplazo de tokens y verificacion de estructura.
- Repo de governance (ruta que indica la persona): `scripts/Register-Project.ps1`,
  `scripts/Sync-Skills.ps1` y `scripts/Validate-Structure.ps1`.
- `../../input/`: no lo necesita para inicializar.

## Limites

No ejecuta git add/commit/push. No registra en governance sin confirmar que la
persona es administradora. No relaja controles globales de seguridad o datos.