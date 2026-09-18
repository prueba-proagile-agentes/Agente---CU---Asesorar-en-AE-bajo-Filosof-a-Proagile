# Cuestionario canónico para Assessment SparxEA

> **Spec del proyecto** · Consolidada el 18/09/2026 a partir de `Email inicial _ Assessment.docx`, `Copia de Preguntas.docx` y `Encuesta.pdf` de `input/`.
> Este banco no se envía completo por defecto: se seleccionan preguntas según objetivo, rol, modalidad y alcance definidos en `metodologia-assessment-sparxea.md`.

## Reglas de uso

- Distinguir preguntas preliminares, encuesta autoadministrada y preguntas de sesión.
- Indicar cuáles son obligatorias en cada aplicación; no heredar esa condición de un formulario anterior.
- Pedir datos personales solo cuando sean imprescindibles para coordinar o segmentar respuestas.
- No incluir nombres de clientes, enlaces de formularios ni respuestas de otras organizaciones.
- Una respuesta declarativa orienta el relevamiento, pero no sustituye evidencia cuando se evalúa un criterio de madurez.
- Mantener separadas las respuestas por repositorio, área o rol cuando difieran.

## A. Preguntas preliminares

Se usan para dimensionar y preparar el plan.

| ID | Pregunta | Uso esperado |
|---|---|---|
| PRE-01 | ¿Cuál es el objetivo del Assessment y qué decisiones debe habilitar? | Propósito y criterio de éxito |
| PRE-02 | ¿Qué productos de la solución SparxEA están instalados y qué tipo y cantidad aproximada de licencias poseen? | Alcance tecnológico |
| PRE-03 | ¿Qué área administra cada producto y repositorio? | Responsabilidad operativa |
| PRE-04 | ¿Cuántos repositorios existen, cuál es su propósito y cuáles estarán incluidos? | Dimensionamiento y exclusiones |
| PRE-05 | ¿Qué áreas usan la solución y cuántas personas participan aproximadamente por rol? | Población usuaria |
| PRE-06 | ¿Qué áreas consumen la información producida, aunque no modelen directamente? | Stakeholders consumidores |
| PRE-07 | ¿Qué roles intervienen y qué objetivos persigue cada uno al interactuar con la solución? | Actores y casos de uso |
| PRE-08 | ¿Existe un organigrama o mapa de áreas que permita entender administradores, usuarios y consumidores? | Contexto organizacional |
| PRE-09 | ¿Quiénes actuarán como sponsor, referentes y representantes de equipo? | Convocatoria |
| PRE-10 | ¿Qué restricciones existen para acceder al repositorio, ejecutar controles o recibir evidencias? | Modalidad y seguridad |

## B. Encuesta de conocimientos y buenas prácticas

Se responde por rol o área antes de las sesiones. Las opciones son candidatas y deben admitir “Otro” cuando corresponda.

### Lenguajes, herramientas y estándares

| ID | Pregunta | Opciones candidatas |
|---|---|---|
| ENC-01 | ¿Qué lenguajes de modelado utilizan? | UML, BPMN, ArchiMate, DMN, otros |
| ENC-02 | ¿Qué herramientas de modelado visual utilizan corporativamente? | Enterprise Architect, Visio, Bizagi, Archi, draw.io, otras |
| ENC-03 | ¿Qué estándares generales o específicos de industria utilizan? | BIAN, TOGAF, IT4IT, APQC, COBIT, SOX, ISO, ITIL, eTOM, TM Forum, otros |
| ENC-04 | ¿Para qué actividades o entregables se usa cada lenguaje, herramienta o estándar? | Respuesta abierta |

### Buenas prácticas

Para cada práctica se registra una de estas respuestas: **se emplea en SparxEA**, **se emplea fuera de SparxEA**, **no se emplea**, **no sabe/no aplica**.

| ID | Prácticas candidatas |
|---|---|
| ENC-05 | Templates o plantillas predefinidas |
| ENC-06 | Patrones reutilizables |
| ENC-07 | Estimación de software |
| ENC-08 | Descomposición funcional y requisitos |
| ENC-09 | Casos de uso e historias de usuario |
| ENC-10 | Tableros Kanban |
| ENC-11 | Matrices de trazabilidad |
| ENC-12 | Ingeniería directa o inversa de código y bases de datos |
| ENC-13 | Catalogación de activos |
| ENC-14 | Análisis de impacto y seguimiento de obsolescencia |
| ENC-15 | Maquetado de pantallas |
| ENC-16 | Gestión de riesgos y reglas de negocio |

### Modelado y salidas

| ID | Pregunta | Opciones o detalle esperado |
|---|---|---|
| ENC-17 | ¿Qué diagramas modelan actualmente? | Estratégicos, procesos, requisitos, casos de uso, componentes, clases, secuencia, estados, pantallas, integración, arquitectura lógica, física, infraestructura, otros |
| ENC-18 | ¿Qué activos especifican dentro de SparxEA? | Proyectos, productos o aplicaciones, servicios, datos, infraestructura, otros |
| ENC-19 | ¿Qué reportes o salidas obtienen actualmente? | Nombre, audiencia, frecuencia y mecanismo de generación |
| ENC-20 | ¿Qué reportes o salidas necesitan y no obtienen actualmente? | Necesidad, audiencia y decisión soportada |

## C. Guía de sesiones de entendimiento

### Stakeholders, necesidades y proceso

| ID | Pregunta o acción | Evidencia candidata |
|---|---|---|
| SES-01 | ¿Quiénes son los stakeholders y qué necesitan o esperan de la solución? | Mapa priorizado y necesidades por stakeholder |
| SES-02 | ¿Cuál es el proceso foco del Assessment? | Proceso acordado y límite de alcance |
| SES-03 | ¿Existe un método documentado para trabajar en EA? | Procedimiento, guía, template o demostración |
| SES-04 | ¿Cuáles son las entradas, actividades, salidas y responsables del proceso? | Flujo de alto nivel y ejemplos reales |
| SES-05 | ¿Qué diferencias existen entre el proceso definido y la práctica cotidiana? | Muestras y explicación de excepciones |

### Organización y adopción

| ID | Pregunta o acción | Evidencia candidata |
|---|---|---|
| SES-06 | ¿Qué actores interactúan con SparxEA y con qué objetivos? | Diagrama de actores/casos de uso o matriz equivalente |
| SES-07 | ¿Cuántos equipos y personas participan aproximadamente por rol? | Cuantificación por área y rol |
| SES-08 | ¿Qué capacitación, acompañamiento o soporte reciben? | Planes, registros o materiales vigentes |
| SES-09 | ¿Qué dificultades de adopción o colaboración encuentran? | Casos concretos y frecuencia |

### Repositorio, modelos y trazabilidad

| ID | Pregunta o acción | Evidencia candidata |
|---|---|---|
| SES-10 | Recorrer la estructura del repositorio y explicar el propósito de sus ramas y paquetes principales. | Demostración o exportación autorizada |
| SES-11 | Mostrar muestras representativas de modelos, diagramas y elementos. | Modelos L3/L4 u otros niveles utilizados |
| SES-12 | ¿Qué convenciones de nombres, estereotipos, templates o patrones aplican? | Configuración, guía y ejemplos |
| SES-13 | Mostrar una cadena de trazabilidad relevante de punta a punta. | Relaciones navegables, matriz o vista |
| SES-14 | ¿Cómo realizan análisis de impacto, control de calidad y gestión de cambios? | Procedimiento y ejecución reciente |
| SES-15 | ¿Cómo versionan, revisan y aprueban contenido? | Flujos, estados, permisos o historial |

### Reportes, seguridad y despliegue

| ID | Pregunta o acción | Evidencia candidata |
|---|---|---|
| SES-16 | Mostrar las salidas actuales y cómo se generan. | HTML, documentos, diagramas, dashboards o scripts |
| SES-17 | ¿Quién consume cada salida y qué decisión toma con ella? | Audiencia y caso de uso |
| SES-18 | ¿Cómo se administran usuarios, grupos, permisos y acceso al contenido? | Matriz de permisos y prueba por rol |
| SES-19 | Describir el despliegue de EA, Pro Cloud Server, Prolaborate, bases de datos y ambientes. | Diagrama de despliegue actual |
| SES-20 | ¿Qué integraciones, add-ins o automatizaciones están activas? | Inventario, configuración y responsable |
| SES-21 | ¿Qué limitaciones de licenciamiento, infraestructura o rendimiento afectan el uso? | Incidentes, métricas o restricciones documentadas |

### Motivaciones y evolución

| ID | Pregunta o acción | Evidencia candidata |
|---|---|---|
| SES-22 | ¿Qué problemas, drivers o resultados motivan la evolución de la solución? | Motivadores priorizados y validación del sponsor |
| SES-23 | ¿Qué fortalezas deben preservarse? | Prácticas y resultados comprobables |
| SES-24 | ¿Qué oportunidades de mejora son más urgentes y por qué? | Impacto, riesgo y dependencia |
| SES-25 | ¿Qué situación objetivo esperan alcanzar en el corto y mediano plazo? | Resultados esperados y horizonte |

## Repreguntas de verificación

Ante una respuesta relevante, aplicar según corresponda:

- ¿Puede mostrar un ejemplo reciente?
- ¿En qué repositorios, áreas o casos aplica?
- ¿Quién es responsable de mantenerlo?
- ¿Con qué frecuencia se usa o actualiza?
- ¿Cómo se verifica su calidad?
- ¿Qué ocurre cuando la regla no se cumple?
- ¿La práctica se realiza en SparxEA o en una herramienta externa?
- ¿Qué evidencia puede compartirse dentro de las restricciones acordadas?

## Tratamiento de respuestas

- Consolidar resultados por tema sin publicar identidad individual salvo necesidad acordada.
- Marcar contradicciones entre encuesta, entrevista y repositorio; no resolverlas por mayoría.
- Registrar “no sabe”, “no aplica” y “no verificado” como estados diferentes.
- No inferir adopción organizacional a partir de una única persona o muestra.
- Trasladar al informe solo información necesaria, validada y libre de datos personales innecesarios.
