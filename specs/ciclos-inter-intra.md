# Ciclos INTER y microevoluciones INTRA — Referencia Proagile

> **Spec del proyecto** · Migrado el 10/09/2026 desde el doc "Proagile_Ciclos_INTER_e_INTRA_Referencia.md" del Proyecto Claude "Asesor Arquitectura Empresarial" (versión del 25/08/2026). Contenido íntegro, sin modificaciones.
> **Uso interno — No circula al cliente**
> Línea de servicio A · Ciclos de Implementación · Modelo de Madurez SparxEA (ML0–ML5)

---

## 1. Definición

La línea A (**Ciclos de Implementación**) se compone de dos tipos de ciclo con propósitos distintos y no intercambiables.

| | **Ciclo INTER** | **Microevolución INTRA** |
|---|---|---|
| Duración | 12 semanas | 3 semanas |
| Función | Saltar **de un nivel de madurez al siguiente** | Evolucionar **dentro** de un mismo nivel |
| Resultado | Nuevo nivel en versión **vX.0** | Misma ML, versión **+0.1** |
| Ejemplo | ML2 v1.2 → ML3 v1.0 | ML2 v1.0 → ML2 v1.1 |
| Esfuerzo estándar | — | 120 horas / 3 semanas (existen variantes comprimidas caso a caso) |

## 2. Regla de versionado

> **Un ciclo INTER siempre desemboca en vX.0. Las décimas las suman exclusivamente las microevoluciones.**

Secuencia típica de un año completo:

```
INTER #1 (12 sem)  →  ML2 v1.0
  Micro #1 (3 sem) →  ML2 v1.1
  Micro #2 (3 sem) →  ML2 v1.2
INTER #2 (12 sem)  →  ML3 v1.0
  Micro #3 (3 sem) →  ML3 v1.1
  Micro #4 (3 sem) →  ML3 v1.2
```

Error frecuente a evitar al redactar propuestas: escribir "1 INTER para llegar a ML2 v1.1". Un INTER no llega a v1.1. Corresponde escribir "1 INTER → ML2 v1.0 + 1 micro → ML2 v1.1".

## 3. Ciclo INTER

- El **primer INTER** de una cuenta lleva al cliente a un **Marco Base ML2 v1.0**, dimensionado para **hasta 3 stakeholders**. A partir de ahí puede alcanzarse el nivel full mediante microevoluciones.
- Internamente este primer ciclo se denomina **"ciclo de activación"**. **Este término no se usa nunca de cara al cliente**: "activación" sugiere un evento único de arranque y debilita la justificación de ciclos sucesivos y de la renovación. De cara al cliente siempre: *"Ciclo de Implementación INTER #1 — Marco Base ML2 v1.0"*.
- Los INTER posteriores llevan de ML2 vX.Y a ML3 v1.0, de ML3 vX.Y a ML4 v1.0, y así sucesivamente hasta ML5.

## 4. Microevolución INTRA

Se aplica dentro de un nivel de madurez, para aumentar su capacidad sin saltar de nivel. Cuatro usos canónicos:

1. **Incorporar un nuevo stakeholder** al Marco Base (nueva área, nuevo rol consumidor del repositorio).
2. **Mejorar algo puntual** requerido en el nivel actual, sin que esa mejora implique el salto al siguiente nivel.
3. **Nivelar o estabilizar** el nivel actual antes de dar el salto.
4. **Fortalecer o refinar** la madurez inmediatamente después de haber dado el salto a un nivel nuevo.

Otros usos habituales en la práctica: despliegue y personalización de Prolaborate, incorporación de primeros usos de IA en el repositorio de AE, ajustes del MDG personalizado.

## 5. Uso comercial

| Situación | Ciclo que corresponde |
|---|---|
| Cliente nuevo sin Marco Base | INTER #1 |
| Cliente que pide sumar un área al modelo | Micro |
| Cliente que quiere trazabilidad negocio → tecnología (salto de nivel) | INTER |
| Cliente que acaba de saltar y necesita consolidar | Micro |
| Cliente que necesita estabilizar antes del próximo salto | Micro |
| Renovación anual | Combinación INTER + micros, distribuida por semestre |

**Por qué importa la distinción:** es el mecanismo que sostiene la recurrencia. Un cliente no compra "un proyecto de AE", compra una secuencia gobernada de ciclos. La microevolución es la unidad de venta pequeña que mantiene la cuenta activa entre saltos de nivel, y el INTER es la unidad que justifica presupuesto anual.

## 6. Presentación al cliente

- El modelo se expresa en **versiones** (Marco Base v1.0 → v1.1), no en puntajes. ML0–ML5 se menciona como metodología acotada, nunca como andamiaje de la propuesta.
- En cronogramas: INTER como barra de 12 semanas, micro como barra de 3 semanas, hito de nivel al cierre de cada tramo.
- En escenarios plurianuales o semestrales, distribuir INTER y micros por semestre y asociar a cada semestre su bolsa de soporte (línea D) y de modelado de contenidos (línea E).
