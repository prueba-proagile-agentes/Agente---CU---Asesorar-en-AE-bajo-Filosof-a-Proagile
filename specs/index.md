# Índice de contexto del proyecto

CU: **Asesorar en AE bajo Filosofía Proagile**. Primera migración desde el Proyecto Claude "Asesor Arquitectura Empresarial": 10/09/2026. Plan completo de migración en `Match_Proyecto_a_Repo_AgenteAE.xlsx` (fuera del repo, en la carpeta madre y en Drive).

## Specs (contexto aprobado y autoritativo)

- [Ciclos INTER e INTRA](ciclos-inter-intra.md): reglas de la línea A — versionado vX.0/+0.1, usos canónicos de la microevolución, uso comercial y presentación al cliente. **Uso interno.**
- [Modelo de Madurez SparxEA](modelo-madurez.md): ML0–ML5, 31 ítems con criterios de aceptación y umbrales; MDG y Marco Base; ciclos de activación asociados.
- [Marco AE para Banca](marco-ae-banca.md): estrategia en 7 aspectos y Master Plan en 6 fases con anclaje regulatorio (BCRA, SOX).
- [Visión Holística — Summits](vision-holistica-summits.md): línea narrativa de evangelización 2020–2023 + webinar Casos BANCA (restricción rombo, prueba ácida, modelo cebolla).

## Material de referencia en `input/` (Drive, no versionado)

Templates comerciales aprobados (familia "Servicio Integral de Acompañamiento": Microevolución 3 sem, ML1 21 días, ML2 preliminar, ML2 Full, ML3, CicloINTRA 2 micros; Ciclo Express 12s; Template Despliegue ML2 xlsx) · Criterios de Aceptación Modelo de Madurez xlsx (fuente operativa de umbrales) · Presentación institucional Modelo de Madurez (HTML) · Transcripciones Summit 2020/2022/2023 y webinar Casos BANCA · PDFs de producto (EA 17.0, Novedades IA, Referencia AE) · Imagen MAE.

## Pendientes de la migración

- Correr `agents/setup` (tokens `{{...}}` sin reemplazar; falta `work/.setup-done`).
- Volcar los 4 roles del asesor (Evangelizador, Facilitador de Recursos, Consultor Estratégico, Coach Comercial-Técnico) en `AGENTS.md` y `agents/generador/CONTEXT.md` — previsto junto con el setup.
- Decidir si la metodología de PoC se convierte en skill local (`skills/generar-propuesta-poc/`).
- Poblar la carpeta de Drive enlazada como `input/` con el material de referencia listado arriba.
- Contrastar `modelo-madurez.md` contra la planilla de Criterios de Aceptación.
