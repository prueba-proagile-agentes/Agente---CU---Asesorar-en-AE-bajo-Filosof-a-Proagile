# Skills locales

Todas las skills requeridas se incluyen en este proyecto, en
`skills/<nombre>/SKILL.md`, y se declaran como `project/<nombre>` en uses_skills.
El comando `/init` verifica y lee estos archivos directamente; no requiere
instalaciones en el perfil ni ubicaciones externas.

- `project/safe-input`: tratamiento de entradas externas.
- `project/ejecutar-assessment-sparxea`: preparación, planificación y ejecución
  del relevamiento, con cuestionario, evidencias y cobertura ML0.
- `project/generar-informe-assessment-sparxea`: generación trazable del informe,
  evaluación de brechas y roadmap candidato.

El comando `/assessment` orquesta las dos skills de Assessment, mantiene el
checklist local y aplica el contrato de `specs/paquete-assessment-sparxea.md`.
No constituye una skill adicional ni reemplaza la revisión independiente.
