---
description: Prepara el Agente-CU o inicia una sesion del asesor de AE
subtask: false
---

Inicia este Agente-CU en la sesion actual. Este comando reemplaza el /init
generico de OpenCode para este repositorio; no regeneres AGENTS.md.

1. Lee AGENTS.md, agent-config.yaml y specs/index.md desde la raiz del proyecto.
2. Lee agents/setup/AGENTS.md, agents/setup/CONTEXT.md y
   agents/setup/agent-config.yaml. Sigue su flujo de inicializacion o de
   verificacion de una sesion existente, segun el estado real.
3. Solicita solo datos faltantes, un dato por interaccion. Antes de escribir la
   configuracion inicial, muestra el dry-run y espera la revision de la persona.
4. Conserva las specs y las instrucciones especializadas existentes. No ejecutes
    git add/commit/push como parte del inicio habitual.
5. Verifica las skills declaradas y el input local segun las reglas de setup.
   Resuelve project/<nombre> leyendo skills/<nombre>/SKILL.md de este repositorio.
   No pidas rutas externas para skills ni sincronices skills del perfil.
   No confundas una dependencia declarada con una skill efectivamente disponible.
6. Cuando el entorno este preparado, lee agents/generador/AGENTS.md,
   agents/generador/CONTEXT.md y agents/generador/agent-config.yaml, y carga las
   specs pertinentes a la tarea. La revision de entregables corresponde al rol
   agents/revisor, no a la aprobacion del propio generador.
7. Resume el estado y los pendientes reales. Si esta listo, pregunta:
   "¿En que tarea de arquitectura empresarial queres trabajar?".
   Si hay un bloqueo, explica cual y pide el siguiente dato necesario.

Solicitud adicional de la persona (si existe): $ARGUMENTS
