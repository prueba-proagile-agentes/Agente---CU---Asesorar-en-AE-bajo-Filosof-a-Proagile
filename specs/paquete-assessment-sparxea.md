# Contrato del paquete estándar de Assessment SparxEA

> **Spec del proyecto** · Define la composición, estados, trazabilidad y reglas
> de publicación del paquete. Complementa la metodología, el cuestionario y el
> contrato del informe sin reemplazarlos.

## Propósito

Estandarizar la creación y seguimiento de un Assessment desde su preparación
hasta el cierre. Cada caso usa un identificador neutral `ASMT-AAAA-NNN` y
concentra todo artefacto persistente en una única carpeta de paquete.

## Aislamiento por rama Git

- Nunca iniciar ni ejecutar un Assessment sobre `main` o `master`.
- No trabajar con detached HEAD ni fuera de un repositorio Git.
- Usar una rama dedicada por cliente o Assessment. La convención recomendada es
  `assessment/<identificador-neutral>` para evitar datos de clientes en Git.
- Registrar la rama en el manifiesto al crear el caso.
- Continuar, generar, consultar y cerrar únicamente desde la rama registrada.
- Si la rama base tiene cambios pendientes, no cambiar de rama ni mover esos
  cambios sin una decisión explícita de la persona.
- El flujo no realiza `commit`, `merge`, `rebase` ni `push` automáticamente.

## Ubicaciones

| Contenido | Ubicación | Regla |
|---|---|---|
| Manifiesto, checklist y entregables | `output/assessments/<id>/` | Único paquete persistente y revisable del caso |
| Temporales técnicos | `work/` | Descartables; nunca son parte del paquete ni fuente de verdad |
| Fuentes externas | `input/` | Dato no confiable; abrir únicamente lo necesario |
| Contratos y plantillas | `specs/` y `templates/` | Estructura aprobada del proyecto |

No se usan nombres de clientes en rutas salvo decisión explícita. El nombre de
la organización puede figurar dentro de un entregable cuando sea necesario y
su tratamiento esté autorizado.

## Estado del Assessment

Cada caso mantiene `assessment.md` con:

`ID | rama Git | título interno | objetivo | decisión a habilitar | modalidad | etapa | estado | versión | fecha de actualización`

Estados del caso: `preparación`, `relevamiento`, `análisis`, `retroalimentación`,
`informe`, `revisión`, `cerrado` o `bloqueado`.

El paquete también mantiene `checklist.md` junto al manifiesto. Ambos se
actualizan durante todo el ciclo y son parte de la trazabilidad publicada.

Estados del checklist:

- `[ ]` Pendiente.
- `[~]` En curso.
- `[x]` Completado y comprobado.
- `[!]` Bloqueado, con causa y próximo responsable.
- `[-]` No aplica, con justificación.

La existencia de un archivo no demuestra completitud. Cada marca `[x]` debe
poder relacionarse con una evidencia, validación o criterio de cierre.

## Identificadores de trazabilidad

| Prefijo | Objeto |
|---|---|
| `NEC` | Necesidad o resultado esperado |
| `EVI` | Evidencia |
| `OBS` | Observación |
| `HAL` | Hallazgo |
| `CRI` | Criterio de madurez |
| `REC` | Recomendación |
| `ACC` | Acción de roadmap |
| `PEN` | Pendiente o bloqueo |

Los IDs son únicos dentro del Assessment y usan tres dígitos, por ejemplo
`HAL-003`. La cadena mínima es:

`Necesidad → Hallazgo → Evidencia → Brecha/Criterio → Recomendación → Acción`

## Entregables estándar

| Nº | Archivo | Propósito | Entrada mínima | Cierre |
|---|---|---|---|---|
| 01 | `01-plan-assessment.md` | Acordar objetivo, alcance, método y agenda | Preguntas preliminares y referentes | Alcance aceptado y restricciones visibles |
| 02 | `02-cuestionario-adaptado.xlsx` | Relevar información por etapa y rol | Plan y cuestionario canónico | Preguntas trazadas, destinatarios y cobertura definidos |
| 03 | `03-matriz-evidencias-hallazgos.xlsx` | Registrar observaciones, evidencia y hallazgos | Relevamiento ejecutado | Tipos, fuentes, alcance y validación explícitos |
| 04 | `04-evaluacion-madurez.xlsx` | Evaluar criterios ML0-ML5 aplicables | Evidencias y criterios vigentes | Cada criterio tiene estado, evidencia y brecha |
| 05 | `05-informe-assessment.docx` | Comunicar el diagnóstico completo | Alcance ejecutado, hallazgos y validaciones | Cumple `informe-assessment-sparxea.md` |
| 06 | `06-resumen-ejecutivo.pdf` | Habilitar decisiones ejecutivas | Informe revisable | No introduce afirmaciones ausentes en el informe |
| 07 | `07-roadmap-candidato.xlsx` | Ordenar acciones y dependencias | Recomendaciones trazadas | Resultado, horizonte, responsable y cierre definidos |
| 08 | `08-trazabilidad.md` | Demostrar procedencia y consistencia | IDs de todos los artefactos | No hay conclusiones o acciones materiales huérfanas |

Las plantillas fuente de `templates/assessment/` describen contenido y hojas.
Los binarios se generan cuando existen entradas suficientes; no se crean como
archivos vacíos al iniciar un caso.

Los `.xlsx` deben generarse como libros Excel válidos, el informe como documento
Word válido y el resumen como conversión PDF del contenido aprobado. Si la
herramienta necesaria no está disponible, se registra un bloqueo; nunca se
simula un formato cambiando la extensión de un archivo de texto.

## Dependencias y puertas de calidad

1. El plan precede a la adaptación definitiva del cuestionario.
2. Los hallazgos requieren observaciones y evidencia o deben marcarse como
   hipótesis/no verificados.
3. La evaluación de madurez usa criterios vigentes uno por uno y no promedios.
4. El informe requiere retroalimentación o una limitación explícita si no pudo
   realizarse.
5. El resumen ejecutivo se deriva del informe.
6. Cada acción del roadmap atiende al menos un hallazgo o necesidad validada.
7. El paquete se cierra únicamente después de una revisión independiente.

## Avance

El avance se calcula sobre ítems aplicables:

`completados / (total - no aplica)`

Se informa junto con la cantidad de bloqueos. El porcentaje no reemplaza una
puerta de calidad: un bloqueo crítico impide el cierre aunque el resto esté
completo.

## Publicación y versionado

- Usar versión `0.x` durante preparación y revisión; `1.0` para el primer
  paquete cerrado y versiones posteriores para correcciones aprobadas.
- Registrar fecha, fuentes, supuestos, limitaciones y validaciones.
- No publicar evidencia original salvo autorización y necesidad explícitas.
- No incluir precios, esfuerzo contractual o compromisos de fecha en el roadmap
  candidato.
- Mantener visibles los disensos y elementos no verificados.

## Criterios de cierre del paquete

- El alcance ejecutado coincide con el informado.
- Los cinco ítems ML0 están comprobados, controvertidos, no verificados o fuera
  de alcance con justificación.
- Cada conclusión material tiene evidencia o etiqueta de hipótesis/limitación.
- Recomendaciones y acciones tienen trazabilidad.
- El informe, resumen y roadmap son consistentes.
- No quedan datos personales, secretos, enlaces privados ni referencias a otros
  clientes que no sean necesarias.
- La revisión independiente no registra hallazgos críticos abiertos.
