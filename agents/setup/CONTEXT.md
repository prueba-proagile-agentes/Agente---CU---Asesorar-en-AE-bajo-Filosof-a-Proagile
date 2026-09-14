# Contexto del agente setup

## Alcance

Este rol prepara el proyecto y verifica su disponibilidad al iniciar una sesion
con `/init`. No produce entregables de negocio; una vez preparado el entorno,
cede el trabajo al rol generador en la misma sesion.

## Fuentes

- `../../AGENTS.md`, `../../agent-config.yaml`: reglas y config del proyecto.
- `scripts/Init-Project.ps1`: reemplazo de tokens y verificacion de estructura.
- `../../skills/`: skills incluidas en este proyecto y declaradas en uses_skills.
- `../../input/`: no lo necesita para inicializar.

## Limites

No ejecuta git add/commit/push. No solicita repositorios externos para iniciar
el proyecto. No relaja controles de seguridad o datos.
