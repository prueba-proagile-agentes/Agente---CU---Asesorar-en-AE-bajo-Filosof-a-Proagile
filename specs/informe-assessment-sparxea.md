# Contrato del Informe de Assessment SparxEA

> **Spec del proyecto** · Consolidada el 18/09/2026 a partir de `#SparxEA_Presentación Informe Assessment.pptx` y los materiales de relevamiento de `input/`.
> Define contenido y controles del informe; no prescribe una identidad visual ni autoriza reutilizar datos, marcas o afirmaciones comerciales de las fuentes.

## Propósito

El informe comunica qué se evaluó, qué se comprobó, cuáles son las brechas y qué evolución se recomienda. Debe servir a dos audiencias sin mezclar sus necesidades:

- **Ejecutiva:** decisiones, riesgos, beneficios y prioridades.
- **Operativa/técnica:** evidencias, alcance, criterios y acciones concretas.

El informe no es una propuesta comercial. Puede habilitar próximos pasos, pero precios, esfuerzo contractual y condiciones comerciales pertenecen a otro entregable.

## Entradas requeridas

- Plan y alcance ejecutado del Assessment.
- Matriz de hallazgos y evidencias.
- Resultados consolidados de encuesta y sesiones.
- Validaciones, disensos y pendientes de retroalimentación.
- Criterios aplicables de `modelo-madurez.md`.
- Contexto sectorial aprobado cuando resulte necesario.

Si faltan estas entradas, se puede producir un borrador estructural, pero no conclusiones presentadas como verificadas.

## Estructura obligatoria

### 1. Portada y control

- Nombre genérico del Assessment y organización destinataria.
- Fecha y versión.
- Clasificación o restricciones de distribución cuando correspondan.

### 2. Resumen ejecutivo

- Objetivo y alcance efectivo.
- Tres a cinco conclusiones principales.
- Fortalezas relevantes.
- Brechas o riesgos prioritarios.
- Próxima decisión recomendada.

Debe poder leerse sin los anexos y no introducir afirmaciones ausentes en el cuerpo del informe.

### 3. Alcance y metodología

- Repositorios, áreas, roles y productos incluidos.
- Modalidad con o sin acceso al repositorio.
- Actividades realizadas y evidencias revisadas.
- Exclusiones, restricciones y desviaciones del plan.
- Limitaciones que condicionan las conclusiones.

### 4. Motivaciones y necesidades

- Drivers y síntomas que originaron el Assessment.
- Stakeholders priorizados y resultados esperados.
- Proceso o casos de uso foco.

### 5. Situación actual

Organizar la descripción, como mínimo, por:

- Stakeholders y organización.
- Procesos de trabajo.
- Conocimientos, adopción y buenas prácticas.
- Repositorios, estructura, modelos y elementos.
- Trazabilidad y gobierno.
- Reportes y salidas.
- Seguridad, licenciamiento y despliegue.

Cada afirmación material debe remitir a un hallazgo o evidencia.

### 6. Evaluación respecto del modelo de madurez

- Mostrar cobertura por ítem evaluado.
- Usar únicamente criterios vigentes de `modelo-madurez.md`.
- Informar **cumple**, **cumple parcialmente**, **no cumple** o **no verificado** por criterio.
- Explicar evidencia y brecha; no calcular un promedio para compensar criterios faltantes.
- No declarar un nivel alcanzado si no se verificaron todos sus mínimos aplicables.

De cara al cliente, priorizar resultados y versiones del marco por sobre puntajes internos, conforme a `ciclos-inter-intra.md`.

### 7. Hallazgos y oportunidades

Cada hallazgo debe contener:

| Campo | Contenido |
|---|---|
| ID | Identificador estable |
| Título | Síntesis neutral del hallazgo |
| Estado | Confirmado, controvertido o no verificado |
| Evidencia | Referencia trazable |
| Alcance | Repositorio, área o proceso afectado |
| Impacto | Consecuencia actual o potencial |
| Recomendación | Acción propuesta, separada del hecho |
| Prioridad | Crítica, alta, media o baja |
| Dependencias | Condiciones o decisiones previas |

La prioridad se interpreta así:

| Prioridad | Criterio |
|---|---|
| Crítica | Bloquea el objetivo del Assessment o expone a una consecuencia grave e inmediata |
| Alta | Impide una capacidad relevante o genera riesgo significativo; requiere tratamiento cercano |
| Media | Reduce calidad, eficiencia o adopción; debe planificarse |
| Baja | Optimización útil sin impacto material inmediato |

La prioridad no se asigna por preferencia comercial y debe justificarse por impacto y urgencia.

### 8. Situación objetivo

- Capacidades esperadas en el corto y mediano plazo.
- Principios que deben preservarse durante la evolución.
- Relación entre necesidades, capacidades y componentes de la solución.
- Beneficios expresados como resultados esperados, no como garantías no demostradas.

### 9. Roadmap candidato

Para cada acción o iniciativa indicar:

- Resultado esperado.
- Hallazgos que atiende.
- Horizonte: inmediato, corto o mediano plazo.
- Dependencias.
- Responsable propuesto.
- Evidencia de finalización.

Cuando se recomienden ciclos INTER o microevoluciones INTRA, respetar las reglas y el lenguaje comercial de `ciclos-inter-intra.md`. El roadmap sigue siendo candidato hasta su validación y dimensionamiento.

### 10. Anexos

Incluir solo cuando aporten trazabilidad:

- Matriz completa de hallazgos.
- Cobertura del cuestionario.
- Inventario de evidencias revisadas.
- Diagramas de contexto o despliegue autorizados.
- Resultados agregados de encuesta.
- Glosario, supuestos y temas pendientes.

## Reglas de redacción

- Separar explícitamente hechos comprobados, declaraciones, inferencias y recomendaciones.
- Indicar alcance y fuente sin divulgar datos personales innecesarios.
- Usar “no verificado” cuando falte evidencia; no convertirlo en incumplimiento.
- Evitar nombres de otros clientes y ejemplos sectoriales no aprobados.
- Evitar afirmaciones comerciales, legales o de propiedad intelectual que no hayan sido validadas para la versión vigente.
- No exponer mecanismos internos de venta ni material marcado como uso interno.
- Explicar términos técnicos para la audiencia ejecutiva y conservar el detalle en anexos.

## Matriz de trazabilidad mínima

El informe debe permitir navegar esta cadena:

`Necesidad → Hallazgo → Evidencia → Brecha/Criterio → Recomendación → Acción de roadmap`

Una recomendación sin hallazgo o una conclusión sin evidencia debe marcarse como hipótesis pendiente, no como resultado del Assessment.

## Criterios de aceptación

Antes de publicar el informe se comprueba que:

- El alcance descrito coincide con el ejecutado.
- Toda conclusión material tiene evidencia o está rotulada como limitación/hipótesis.
- Los disensos y temas no verificados siguen visibles.
- Los criterios de madurez citados coinciden con la spec vigente.
- Las recomendaciones atienden hallazgos identificados.
- El roadmap no promete esfuerzos, fechas o resultados sin dimensionamiento.
- No quedan datos personales, nombres de otros clientes ni enlaces privados innecesarios.
- El resumen ejecutivo es consistente con el detalle y los anexos.
