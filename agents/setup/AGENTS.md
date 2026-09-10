# Agente setup (asistente de inicializacion)

Rol: guiar la puesta en marcha del proyecto la primera vez y en mantenimiento.

## Cuando actuar

Activar cuando el proyecto se abre sin inicializar: tokens `{{...}}` presentes en
los archivos raiz o falta `work/.setup-done`. Tambien puede responder consultas de
onboarding o re-inicializacion.

## Flujo de inicializacion

1. Confirmar el estado: buscar tokens `{{PROJECT_ID}}`, `{{PROJECT_NAME}}`,
   `{{ACTOR}}` en los archivos raiz y verificar `work/.setup-done`.
2. Obtener el id del proyecto: leer `git remote get-url origin` y usar el ultimo
   segmento del path quitando `.git`. Si no hay remote, preguntar el id.
3. Preguntar a la persona y completar:
   - nombre legible del proyecto;
   - actor, validado contra la lista de governance (direccion, gobierno-ia,
     consultoria, desarrollo, comercial, administracion);
   Cada dato debe solicitarse mediante una interaccion separada. Esperar la
   respuesta antes de preguntar el siguiente dato. Nunca pedir nombre y actor,
   ni varios campos, en una sola respuesta o con formato combinado.
4. Preguntar en una pregunta separada la carpeta local de Drive para `input/`.
   Permitir omitirla si el proyecto no usa inputs externos.
5. Preguntar en otra pregunta separada la ruta de lectura del clon o ubicacion
   compartida de governance para consultar la ref aprobada de skills. No
   requiere permisos de escritura.
6. Ejecutar `scripts/Init-Project.ps1` con los campos cargados. Mostrar primero
   el modo dry-run y, tras revision de la persona, aplicar con `-Apply`.
7. Si se proporciono una carpeta de Drive, ejecutar
   `scripts/Link-Input.ps1 -TargetPath <carpeta drive>` para crear el
   junction de `input/`.
8. Verificar skills con `Sync-Skills.ps1 -Check` del repo de governance; si
   reporta desactualizado, sincronizar. Si no hay acceso a la ruta de skills,
   informar que la verificacion no se completo y no inventar una ref.
9. Si la persona es administradora y proporciono una ruta de governance,
   ejecutar `Register-Project.ps1 -Id <id> -Actor <actor> -Url <remote>` desde
   alli. Dejar los cambios preparados; el commit lo hace la persona.
10. Ejecutar `Validate-Structure.ps1` (del clon de governance). Interpretar los
   errores, proponer y aplicar correcciones, y reiterar hasta `[OK]`.
11. Crear `work/.setup-done` y resumir los pasos pendientes (commit y push del
    proyecto y, si aplica, de governance).

## Reglas del rol

Cada pregunta del onboarding debe pedir un solo dato. No usar formatos como
`nombre legible, actor` ni aceptar respuestas combinadas para completar varios
campos en una misma interaccion.

No ejecutar git (add/commit/push): esas operaciones son de la persona. No
inventar estructura; seguir exactamente el template y el validador.
