---
description: Inicia, continua, consulta o cierra un Assessment SparxEA
subtask: false
---

Gestiona un Assessment SparxEA en la sesion actual. La solicitud de la persona
es: `$ARGUMENTS`.

## Puerta Git obligatoria

Antes de abrir `input/`, crear un caso o modificar cualquier artefacto:

1. Ejecuta `git rev-parse --is-inside-work-tree` y
   `git branch --show-current` desde la raíz del proyecto.
2. Si no es un repositorio Git o la rama está vacía (detached HEAD), detén el
   Assessment. Si la rama es `main` o `master`, no abras inputs ni escribas
   artefactos del Assessment y aplica los pasos 3 y 4.
3. Si está en `main` o `master`, ejecuta `git status --porcelain`. Si hay cambios,
   informa que deben preservarse y resolverse antes de iniciar; no cambies de
   rama, no muevas esos cambios ni los descartes.
4. Si `main` o `master` está limpia, solicita un único nombre de rama y ofrece la
   convención `assessment/<identificador-neutral>`. Valida el nombre con
   `git check-ref-format --branch` y crea la rama con `git switch -c <rama>` solo
   después de la confirmación de la persona.
5. Para un caso nuevo en una rama permitida, registra la rama actual en
   `assessment.md`. Para continuar, generar, consultar o cerrar, exige que la
   rama actual coincida con la registrada; ante una diferencia, detente y pide
   cambiar a la rama correcta. Nunca hagas `commit`, `merge`, `rebase` o `push`
   como parte de `/assessment`.

Superada la puerta Git:

1. Lee `AGENTS.md`, `agent-config.yaml`, `specs/index.md` y
   `specs/paquete-assessment-sparxea.md`.
2. Lee `skills/safe-input/SKILL.md`,
   `skills/ejecutar-assessment-sparxea/SKILL.md` y
   `skills/generar-informe-assessment-sparxea/SKILL.md`.
3. Interpreta la accion solicitada: iniciar, continuar, estado, generar o cerrar.
   Si no fue indicada, pregunta solo por la accion. No pidas varios datos en una
   misma interaccion.
4. Para un Assessment nuevo, asigna el siguiente identificador disponible con
   formato `ASMT-AAAA-NNN`. No uses el nombre del cliente en rutas. Crea
   `output/assessments/<id>/assessment.md` desde
   `templates/assessment-manifest.md`, copia el contenido de
   `templates/checklist-assessment.md` a
   `output/assessments/<id>/checklist.md`. No crees los ocho entregables vacios.
5. Para continuar, consultar o generar, requiere el identificador. Recupera el
   manifiesto y el checklist existentes. No recorras otros Assessments ni abras
   inputs no relacionados.
6. Usa las plantillas de `templates/assessment/` como estructura generativa.
   Conserva los nombres canonicos `01` a `08`. Genera solo el artefacto de la
   etapa solicitada y solo cuando existan sus entradas minimas. Usa las
   herramientas de Excel para `.xlsx`, las de Word para `.docx` y convierte el
   resumen aprobado a `.pdf`; si una herramienta requerida no está disponible,
   registra un bloqueo y no simules el formato cambiando una extensión.
7. Actualiza el checklist con evidencia verificable. Usa `[ ]` pendiente, `[~]`
   en curso, `[x]` completado, `[!]` bloqueado y `[-]` no aplica. La existencia
   de un archivo vacio no permite marcar un item como completado.
8. Guarda todo artefacto persistente del Assessment dentro de su único paquete
   `output/assessments/<id>/`, incluido manifiesto, checklist y entregables
   revisables. Usa `work/` únicamente para temporales técnicos descartables que
   no formen parte del paquete. No copies evidencia original, secretos, datos
   personales innecesarios ni enlaces privados.
9. Antes de cerrar, lee `agents/revisor/AGENTS.md`, `agents/revisor/CONTEXT.md`
   y `agents/revisor/agent-config.yaml`; revisa el paquete contra sus specs y
   presenta primero los hallazgos por severidad. No cierres con hallazgos
   criticos abiertos ni sin la trazabilidad minima.
10. Al finalizar cada intervencion informa: etapa, avance, bloqueos, archivos
    creados o modificados y proximo paso recomendado. No declares un nivel de
    madurez ni una conclusion sin evidencia suficiente.

Si `$ARGUMENTS` esta vacio y no hay un Assessment identificado en la
conversacion, ofrece estas acciones: iniciar, continuar o consultar estado.
