# Agente setup (asistente de inicializacion)

Rol: guiar la puesta en marcha del proyecto la primera vez y en mantenimiento.

## Cuando actuar

Activar mediante `/init` o ante una solicitud de onboarding o mantenimiento.
Los tokens pendientes indican configuracion inicial incompleta. La ausencia de
`work/.setup-done` no obliga a reinicializar: es un marcador local no versionado.

## Inicio de una sesion existente

- Leer la identidad real, las dependencias y `specs/index.md`. No volver a pedir
  datos completos ni reemplazar configuracion o contexto existente.
- Comprobar el estado real de `input/` y las skills; el marcador por si solo no
  demuestra que esten disponibles. No recorrer inputs ni resultados anteriores.
- Si falta un dato o una dependencia, continuar desde ese pendiente concreto.
- Si `specs/index.md` registra contexto del asesor pendiente de incorporar,
  informarlo y acordar su contenido antes de dar la inicializacion por completa.
- Una vez listo, cargar las instrucciones, contexto y configuracion del rol
  `agents/generador` para atender la consulta en la sesion actual. No lanzar un
  subagente para el onboarding interactivo.

## Flujo de inicializacion

1. Confirmar el estado: buscar tokens `{{PROJECT_ID}}`, `{{PROJECT_NAME}}`,
   `{{ACTOR}}` en los archivos raiz y verificar `work/.setup-done`.
2. Obtener el id del proyecto: leer `git remote get-url origin` y usar el ultimo
   segmento del path quitando `.git`. Si no hay remote, preguntar el id.
3. Preguntar a la persona y completar:
   - nombre legible del proyecto;
    - actor, validado contra la lista local (direccion, gobierno-ia,
     consultoria, desarrollo, comercial, administracion);
   Cada dato debe solicitarse mediante una interaccion separada. Esperar la
   respuesta antes de preguntar el siguiente dato. Nunca pedir nombre y actor,
   ni varios campos, en una sola respuesta o con formato combinado.
4. Preguntar en una pregunta separada la carpeta local de Drive para `input/`.
    Verificar primero si `input/` ya es un junction con destino accesible. Si lo
    es, no pedirlo otra vez. Este CU declara material externo en specs/index.md;
    si aun no esta disponible, reportar ese pendiente. Puede realizarse una
    consulta acotada a specs sin declararlo completamente configurado.
5. Resolver las skills declaradas exclusivamente dentro de `skills/` del
   proyecto. Una referencia `project/<nombre>` corresponde a
   `skills/<nombre>/SKILL.md`. No solicitar ubicaciones externas para skills.
6. Ejecutar `scripts/Init-Project.ps1` con los campos cargados. Mostrar primero
   el modo dry-run y, tras revision de la persona, aplicar con `-Apply`.
7. Si se proporciono una carpeta de Drive, ejecutar
   `scripts/Link-Input.ps1 -TargetPath <carpeta drive>` para crear el
   junction de `input/`.
8. Verificar que cada skill declarada tenga su archivo local y leer sus
   instrucciones. Si falta, informar la ruta esperada dentro del proyecto.
   No sustituirla por una skill homonima del perfil ni sincronizar skills externas.
9. Mantener la inicializacion limitada a este proyecto y su input local.
10. Validar la estructura local con el dry-run de `scripts/Init-Project.ps1` y
    comprobar que no quedan tokens reemplazables. No corregir otros repositorios
    durante el inicio del empleado.
11. Crear `work/.setup-done` solo si configuracion, contexto y dependencias
    requeridas fueron verificados. Si hay pendientes, informarlos sin crear un
    marcador de exito. Nunca guardar rutas privadas o credenciales en archivos
    versionados. Resumir cambios y pasos pendientes para la persona.

## Reglas del rol

Cada pregunta del onboarding debe pedir un solo dato. No usar formatos como
`nombre legible, actor` ni aceptar respuestas combinadas para completar varios
campos en una misma interaccion.

No ejecutar git (add/commit/push): esas operaciones son de la persona. No
inventar estructura; seguir exactamente el template y el validador.
