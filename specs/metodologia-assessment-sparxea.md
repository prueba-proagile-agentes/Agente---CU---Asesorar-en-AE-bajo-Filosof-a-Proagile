# Metodología de Assessment SparxEA

> **Spec del proyecto** · Consolidada el 18/09/2026 a partir de `Email inicial _ Assessment.docx`, `Copia de Preguntas.docx`, `Encuesta.pdf` y `#SparxEA_Presentación Informe Assessment.pptx` de `input/`.
> Los documentos fuente son referencias no autoritativas y combinan borradores y ejemplos de distintas industrias. Esta spec contiene el método normalizado, sin datos de clientes.

## Objetivo y alcance

El Assessment releva cómo una organización usa y gobierna la solución SparxEA, identifica brechas y produce recomendaciones trazables. Cubre como mínimo los cinco ítems de **ML0** definidos en `modelo-madurez.md`:

1. Mapa de Stakeholders.
2. Procesos de Trabajo.
3. Organización del Equipo.
4. Conocimientos y Buenas Prácticas.
5. Diagrama de Despliegue EA.

El Assessment puede aportar señales sobre ML1 o niveles posteriores, pero no acredita un nivel de madurez por sí solo. Todo nivel informado debe contrastarse con los criterios de aceptación vigentes de `modelo-madurez.md`.

## Modalidades

| Modalidad | Alcance permitido | Limitación que debe declararse |
|---|---|---|
| Sin acceso al repositorio | Entrevistas, encuesta, documentación y evidencias compartidas | No permite comprobar directamente estructura, contenido, trazabilidad, seguridad ni calidad técnica del repositorio |
| Con acceso al repositorio | Incluye inspección guiada del repositorio y comprobaciones técnicas acordadas | El acceso no autoriza cambios; cualquier add-in o control automatizado requiere aprobación previa |

La modalidad y los repositorios incluidos deben quedar confirmados antes del relevamiento. Si existen varios repositorios, se registra para cada uno su propósito, área usuaria, responsables y condición de inclusión.

## Roles participantes

| Rol | Responsabilidad mínima |
|---|---|
| Sponsor | Confirma objetivos, prioridades y alcance; valida la orientación de las recomendaciones |
| Referente EA | Coordina accesos y evidencias; explica administración, gobierno y uso del repositorio |
| Representante de equipo o área | Describe usos, necesidades, dificultades y salidas esperadas |
| Equipo asesor | Facilita el relevamiento, registra evidencias, analiza brechas y presenta conclusiones |

Los participantes se seleccionan por objetivos e interacción con SparxEA, no solo por posición en el organigrama. Deben distinguirse las áreas administradoras, usuarias y consumidoras de información.

## Entradas mínimas

Antes de confirmar el plan se solicita:

- Objetivo del Assessment y decisiones que debe habilitar.
- Sponsor y referente operativo.
- Productos y licencias instalados: Enterprise Architect, Pro Cloud Server, Prolaborate y complementos relevantes.
- Repositorios existentes, propósito, responsables y alcance propuesto.
- Áreas, equipos, roles y cantidades aproximadas de usuarios.
- Restricciones de acceso, seguridad y confidencialidad.
- Documentación disponible: procesos, guías, estándares, reportes y diagramas de despliegue.
- Ventana de trabajo y disponibilidad de participantes.

## Flujo de trabajo

### 1. Preparación y alcance

- Confirmar objetivo, modalidad, repositorios y participantes.
- Enviar las preguntas preliminares aplicables de `cuestionario-assessment-sparxea.md`.
- Definir agenda, responsables, evidencias esperadas y canales de entrega.
- Registrar exclusiones y supuestos.

**Salida:** plan de Assessment aceptado y matriz inicial de alcance.

### 2. Kick-off

- Presentar propósito, método, roles y reglas de trabajo.
- Confirmar alcance y orden de las sesiones.
- Acordar tratamiento de información, accesos y validaciones.

**Duración orientativa:** 30 minutos.

### 3. Encuesta de conocimientos y buenas prácticas

- Aplicar el bloque autoadministrado antes de las sesiones cuando sea posible.
- Recoger respuestas por rol o área, sin mezclar perspectivas incompatibles.
- Usar los resultados para priorizar repreguntas; no tratarlos como evidencia técnica suficiente.

**Salida:** respuestas consolidadas y temas que requieren verificación.

### 4. Sesiones de entendimiento

- Recorrer el proceso de trabajo y, cuando exista acceso, la estructura real del repositorio.
- Pedir demostraciones o muestras en lugar de aceptar únicamente respuestas declarativas.
- Repreguntar frente a contradicciones, vacíos o diferencias entre áreas.
- Registrar evidencia, fuente, alcance y responsable de validación.
- Tratar cada repositorio por separado cuando sus usos o responsables difieran.

**Duración orientativa:** 45 a 90 minutos por sesión.

### 5. Recopilación y análisis

- Recibir únicamente las evidencias acordadas.
- Clasificar cada observación como hecho comprobado, declaración, inferencia o dato pendiente.
- Contrastar la cobertura de ML0 y, si corresponde, criterios de otros niveles.
- Identificar fortalezas, brechas, riesgos, dependencias y oportunidades.
- No ejecutar controles automatizados ni modificar el repositorio sin autorización explícita.

**Salida:** matriz de hallazgos y evidencias.

### 6. Retroalimentación

- Presentar hallazgos preliminares a referentes y equipos involucrados.
- Corregir errores factuales y registrar disensos.
- Solicitar evidencia faltante con responsable y fecha de cierre.
- Realizar una segunda sesión solo cuando queden diferencias materiales.

**Duración orientativa:** 30 a 45 minutos por sesión.

### 7. Informe y cierre

- Preparar el informe conforme a `informe-assessment-sparxea.md`.
- Presentar conclusiones, situación objetivo y roadmap candidato.
- Separar acciones inmediatas de una eventual propuesta comercial.
- Registrar decisiones, pendientes y próximos pasos.

**Duración orientativa de la presentación final:** 60 minutos.

## Matriz mínima de evidencias

| Campo | Regla |
|---|---|
| ID | Identificador estable del registro |
| Tema | Dominio o ítem de madurez relacionado |
| Observación | Redacción factual y acotada |
| Tipo | Hecho comprobado, declaración, inferencia o pendiente |
| Evidencia | Artefacto, demostración, captura autorizada o referencia verificable |
| Fuente | Rol, sesión o repositorio; no incluir datos personales innecesarios |
| Alcance | Repositorio, área o proceso al que aplica |
| Validación | Confirmado, controvertido o pendiente |

Una ausencia de evidencia no demuestra incumplimiento: debe registrarse como **no verificado**.

### Atribucion de citas de sesiones

- Se permite incluir nombre y apellido del interlocutor para atribuir una cita literal de una sesion de trabajo o reunion relevante para el Assessment, tambien en entregables versionados. Por ejemplo, una necesidad o expectativa sobre la solucion SparxEA vinculada a una situacion cotidiana, problematica o dolencia especifica.
- Registrar la sesion, fecha y referencia verificable a la fuente. No presentar una parafrasis, inferencia o asentimiento como cita literal.
- Las citas provenientes de transcripcion automatica deben cotejarse con la grabacion o validarse con el interlocutor antes de presentarlas como verificadas.
- La excepcion se limita a nombre y apellido asociados a la cita relevante y su referencia verificable; no habilita otros datos personales, secretos, credenciales ni rutas privadas. Si la atribucion nominal no es necesaria, puede usarse un rol o identificador anonimizado.

## Cobertura mínima de ML0

| Ítem ML0 | Verificación durante el Assessment |
|---|---|
| Mapa de Stakeholders | Identificar stakeholders priorizados, necesidades, expectativas y alcance |
| Procesos de Trabajo | Relevar al menos el proceso foco, sus entradas, salidas y responsables |
| Organización del Equipo | Diferenciar áreas, equipos, actores, roles y objetivos de interacción |
| Conocimientos y Buenas Prácticas | Encuestar los roles mínimos y contrastar prácticas declaradas con muestras |
| Diagrama de Despliegue EA | Identificar productos, componentes, conexiones, base de datos y ambientes |

Los umbrales de aceptación pertenecen a `modelo-madurez.md`; esta tabla define cómo obtener la evidencia, no los reemplaza.

## Criterios de cierre

El Assessment puede cerrarse cuando:

- El alcance ejecutado y sus desviaciones están documentados.
- Cada ítem ML0 está comprobado, controvertido, marcado como no verificado o fuera de alcance con justificacion.
- Los hallazgos relevantes tienen fuente y estado de validación.
- Las conclusiones preliminares fueron retroalimentadas con los referentes.
- El informe distingue situación actual, brechas y recomendaciones.
- Los próximos pasos tienen prioridad, dependencia y responsable propuesto.

El cierre del servicio es independiente del cierre del diagnostico de un nivel de madurez. Puede cerrarse el Assessment aunque no se hayan evaluado todos los items de un nivel, por falta de tiempo o porque el cliente no desea evaluar alguno. Registrar cada item pendiente por falta de tiempo como **no verificado**; los items excluidos por decision del cliente se registran como **fuera de alcance**, con la decision y su justificacion. Estas limitaciones deben figurar en el informe y no permiten declarar alcanzado un nivel cuyos minimos no se hayan verificado.

## Estimación

La duracion del Assessment es de **maximo tres semanas**, segun decision de la persona registrada el 25/09/2026. El ejemplo de dos semanas se conserva como referencia, no como duracion obligatoria. El cronograma se estima segun cantidad de repositorios, areas, sesiones, acceso tecnico y volumen de evidencias, respetando ese maximo. Si no es posible evaluar todos los items en ese plazo, acordar el alcance y documentar los items no verificados o excluidos; no extender implicitamente el servicio ni simular el cierre de un nivel. No deben reutilizarse literalmente expresiones ambiguas como “2/3 días” o “2/1 días”.

Las precisiones sobre atribucion de citas y cierre del servicio fueron indicadas por la persona el 25/09/2026; su aplicacion conserva los controles de datos del proyecto.
