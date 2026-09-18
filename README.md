# Asesorar en AE bajo Filosofía Proagile

Proyecto del actor `consultoria`, id `Agente-CU-Asesorar-AE-Filosofia-Proagile`. Repositorio Git
independiente con instrucciones y skills incluidas localmente.

## Comenzar con OpenCode

1. Abri esta carpeta como proyecto en OpenCode y selecciona un modelo disponible.
2. Escribi `/init`. La primera vez guia la configuracion solicitando un dato por
   vez, muestra un dry-run antes de aplicar y verifica input y skills.
3. Si ya esta configurado, `/init` verifica el entorno y carga el rol generador
   para comenzar una consulta. No vuelve a pedir datos completos.
4. Pedi una tarea concreta e indica las fuentes necesarias. Solicita el rol
   `agents/revisor` para revisar los entregables.
5. Mantene los temporales en `work/` y los finales revisables en `output/`.

## Ejecutar un Assessment

Cada cliente o Assessment debe trabajarse en una rama Git dedicada. `/assessment`
bloquea la ejecución sobre `main`, `master` o detached HEAD y comprueba que los
casos existentes continúen en la rama registrada. Se recomienda no exponer el
nombre del cliente y usar una rama neutral:

```text
git switch -c assessment/ASMT-2026-001
```

Usa `/assessment` para iniciar, continuar, consultar o cerrar un Assessment:

```text
/assessment iniciar
/assessment continuar ASMT-2026-001
/assessment estado ASMT-2026-001
/assessment generar 03 ASMT-2026-001
/assessment cerrar ASMT-2026-001
```

Cada caso usa un identificador neutral `ASMT-AAAA-NNN`. El estado, checklist y
los ocho entregables se conservan juntos en el paquete
`output/assessments/<id>/`. `work/` se usa únicamente para temporales técnicos
descartables. El contrato del paquete esta en
`specs/paquete-assessment-sparxea.md` y sus plantillas en `templates/`.

Los comandos estan definidos en `.opencode/commands/init.md` y
`.opencode/commands/assessment.md`. `/init` reemplaza el comando generico dentro
de este proyecto. Reinicia OpenCode despues de incorporar o actualizar comandos.
No regeneran AGENTS.md. Las skills se resuelven dentro de `skills/` del proyecto,
sin solicitar rutas externas ni sincronizar el perfil.

Los roles de `agents/` son instrucciones cargadas por el comando; no requieren
estar registrados como agentes seleccionables de OpenCode. `/init` usa el agente
y modelo actuales: ejecutalo en un modo con edicion habilitada para configurar.
La configuracion sigue siendo guiada por el modelo, no un instalador automatico.

Fuentes del proyecto: `AGENTS.md`, `agent-config.yaml` y `specs/index.md`.
El enlace local de inputs se crea con `scripts/Link-Input.ps1 -TargetPath <ruta-local>`.

Precedencia: `global < actor < proyecto < agente`.
