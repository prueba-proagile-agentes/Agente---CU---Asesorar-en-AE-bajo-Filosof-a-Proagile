# Estructura de `03-matriz-evidencias-hallazgos.xlsx`

## Hoja `Evidencias`

Columnas:

`ID | Tema | Descripción | Tipo de evidencia | Fuente | Alcance | Fecha | Validación | Referencia autorizada | Restricción`

## Hoja `Observaciones`

Columnas:

`ID | Tema | Observación | Tipo | Evidencia relacionada | Fuente | Alcance | Validación | Notas`

Tipos permitidos: `Hecho comprobado`, `Declaración`, `Inferencia` o `Pendiente`.

## Hoja `Hallazgos`

Columnas:

`ID | Título | Estado | Observaciones | Evidencias | Alcance | Impacto | Prioridad | Recomendación | Dependencias`

Estados: `Confirmado`, `Controvertido` o `No verificado`.

## Hoja `Pendientes`

Columnas:

`ID | Descripción | Evidencia requerida | Responsable propuesto | Fecha objetivo | Estado | Efecto sobre la conclusión`

## Controles

- No convertir ausencia de evidencia en incumplimiento.
- Mantener contradicciones y disensos.
- Separar observación, impacto y recomendación.
- Justificar prioridad por impacto y urgencia.
