# Modelo de Madurez para Implementaciones SparxEA (ML0–ML5)

> **Spec del proyecto** · Migrado el 10/09/2026. Destilado de "Proagile_ModeloMadurez_SparxEA_2026.html" (presentación institucional 2026) del Proyecto Claude "Asesor Arquitectura Empresarial". La presentación original y la planilla "Criterios de Aceptación Modelo de Madurez.xlsx" quedan en `input/` como fuentes.
> **Pendiente**: contrastar los umbrales de este destilado contra la planilla de Criterios de Aceptación (fuente operativa) antes de usarlos en propuestas.

Modelo exclusivo y patentado de Proagile ®. **6 niveles, 31 ítems, criterios de aceptación verificables.** Principios rectores: cada nivel es un piso estable (nunca se regresa); el cliente puede "Iniciar · Detenerse · Retomar" a su ritmo; de cara al cliente el modelo se expresa en **versiones** (Marco Base v1.0 → v1.1), no en puntajes (ver `ciclos-inter-intra.md`).

## ML0 — Assessment (5 ítems) · Punto de partida

| Ítem | Criterio / umbral mínimo |
|---|---|
| Mapa de Stakeholders | 1–3 stakeholders priorizados con ≥3 necesidades/expectativas cada uno; evidencias de cierre para necesidades "en alcance" |
| Procesos de Trabajo | 1 proceso de alto nivel (obligatorio) + procesos específicos por stakeholder (entradas, salidas, responsables) |
| Organización del Equipo | 1 organigrama modelado + 1 diagrama de casos de uso con actores/roles y objetivos explícitos |
| Conocimientos & Buenas Prácticas | Cuestionarios por rol (mínimo: Arquitectura + Admin Repo + 1 referente de área usuaria); informe con brechas y recomendaciones |
| Diagrama de Despliegue EA | 1 diagrama con componentes y conexiones clave (EA / Pro Cloud Server / WebEA), BD y ambientes identificados |

## ML1 — Pilares Esenciales (6 ítems) · Cimientos listos

| Ítem | Criterio / umbral mínimo |
|---|---|
| Motivadores | 3 drivers priorizados en diagrama de Motivaciones + validación del sponsor registrada |
| Estructura EA | Estructura base (ASSETS / WORKSPACE / VIEWS) + ≥1 estructura específica por caso de uso |
| Modelos y Elementos | Hasta 10 modelos, hasta 100 elementos; mínimo ≥3 modelos + 5 catálogos con carga inicial, nombres consistentes |
| Mapa de Trazabilidad | Metamodelo en EA con relaciones permitidas; ≥1 cadena completa validada con el equipo |
| Reportes / Salidas | 1–5 reportes ejecutables por el cliente con datos reales, cada uno documentado |
| Seguridad EA | Grupos, usuarios y permisos por rol (Admin, Modelador, Consumidor); prueba de acceso por rol + matriz documentada |

## ML2 — Marco Base MDG (8 ítems) · ★ Pivote del modelo

Nivel más estratégico: sin ML2 no existe práctica sostenible. El entregable tangible es el **Marco Base FWK** en tecnología **MDG** (Model Driven Generation, la personalización de EA: estereotipos, toolboxes, plantillas, patrones y scripts adaptados a la organización), instalable y transferido al cliente.

| Ítem | Criterio / umbral mínimo |
|---|---|
| Métricas | 1–10 métricas de adopción y calidad con baseline inicial; mínimo 1 de adopción + 1 de calidad |
| Estructuras Templates (MDG) | 1–5 plantillas instanciables (usables sin saber UML), basadas en los casos de uso de ML1; mínimo 1 funcionando |
| Estereotipos & Perfiles (MDG) | Hasta 50, alineados a los elementos del repositorio, con notación visual y tagged values; mínimo ≥5 utilizables |
| Cajas de Herramientas (MDG) | 1–10 toolboxes que exponen estereotipos y patrones respetando el metamodelo; mínimo 1 con ≥5 elementos |
| Reportes & Scripts (MDG) | 1–5 versionados con salidas reales, ejecutables por el cliente en forma autónoma; mínimo 1 |
| Patrones & Otros (MDG) | 1–10 patrones reutilizables que instancian estructura de elementos y relaciones; mínimo 1 funcionando |
| Gobierno EA | ≥1 ruta metodológica + controles mínimos (reglas de modelado, revisión, trazabilidad mínima); probado con ≥1 caso completo |
| **Marco Base FWK MDG ★** | Consolida todo; 1 MDG instalable + instalación, activación y transferencia al cliente realizadas |

## ML3 — Colaboración (5 ítems) · Prolaborate activo

Activa **Prolaborate**: el repositorio deja de ser de los arquitectos y pasa a toda la organización.

| Ítem | Criterio / umbral mínimo |
|---|---|
| Indicadores en Prolaborate | Hasta 50 con widgets nativos; mínimo ≥5 operativos con datos reales |
| Vistas / Dashboards | Hasta 5 por stakeholder; mínimo 2 validadas (1 ejecutiva + 1 operativa) |
| Ambientes | Dev/Test/Prod (hasta 3) con reglas de promoción y responsables; mínimo 2 operativos |
| Trabajo Colaborativo | Comentarios, flujos de revisión/aprobación, reglas de participación; ≥1 ciclo end-to-end ejecutado |
| Marco de Trabajo | Institucionalizado |

## ML4 — Integraciones (3 ítems) · EA conectado

| Ítem | Criterio / umbral mínimo |
|---|---|
| Tableros consolidados Prolaborate | Hasta 5 con información viva; mínimo ≥2 (ejecutivo + operativo) validados por stakeholders |
| Integración con herramienta externa | ≥1 operativa (Jira, DevOps, RRHH, Power BI…), bidireccional con ≥3 tipos de elementos, frecuencia documentada; 1 ejecución comprobada |
| Procedimiento de Gestión SparxEA | Engloba Gobierno (ML2) + Trabajo Colaborativo (ML3): roles, ciclo operativo, control de cambios, QA, accesos; publicado + 1 ejecución |

## ML5 — Mejora Continua (4 ítems) · AE viva

| Ítem | Criterio / umbral mínimo |
|---|---|
| Gestión de Capacidad | Procedimiento estrategia↔tecnología; 1 ciclo completo (demanda, brechas, impacto, priorización, roadmap) + ≥5 indicadores activos |
| Comunicación Efectiva | Plan con audiencias, canales y artefactos; 1 plan + 2 artefactos + ≥1 decisión causa→efecto documentada |
| Colaboración Inter-áreas | ≥3 áreas participando; ruta metodológica inter-áreas con revisión/aprobación; ≥1 caso real ejecutado |
| Ciclos de Mejora | Backlog priorizado + ≥2 iteraciones + mejora demostrable en ≥1 métrica del repositorio |

## Contexto de la suite (modelo cebolla)

Cada capa se activa cuando la organización alcanza el nivel de madurez que la soporta: **EA** (núcleo: repositorio y modelado) → **Pro Cloud Server + WebEA** (multiusuario, ambientes) → **Prolaborate** (colaboración, dashboards, gobierno) → **Integraciones/SaaS** (Jira, DevOps, RRHH, Power BI…).

## Ciclos de activación asociados (línea A)

#StartUp ML1 (21 días, ~125 hs) · #Intensive ML2 preliminar (5 sem, ~208 hs) · #Express ML2 Full (12 sem, ~400 hs — **recomendado**) · #Standard ML3 (16 sem) · #Standard Full ML3 (24 sem) · Microevolución INTRA (3 sem) · INTER (12 sem). Detalle de reglas comerciales y versionado en `ciclos-inter-intra.md`.
