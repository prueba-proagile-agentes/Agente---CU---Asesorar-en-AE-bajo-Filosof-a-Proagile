# {{PROJECT_NAME}}

Proyecto del actor `{{ACTOR}}`, id `{{PROJECT_ID}}`. Repositorio Git
independiente registrado en governance.

1. Si es la primera vez, usa el agente `agents/setup` para inicializar el
   proyecto (tokens, input, skills y alta en governance si corresponde).
2. Lee `AGENTS.md`, `agent-config.yaml` y `specs/index.md`.
3. Crea el junction con `scripts/Link-Input.ps1 -TargetPath <ruta-local>`.
4. Selecciona `agents/generador` o `agents/revisor`.
5. Manten los temporales en `work/` y los finales en `output/`.

Precedencia: `global < actor < proyecto < agente`.