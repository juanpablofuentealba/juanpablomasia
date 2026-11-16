# Lead magnet — "Chequeo gratis de tu PC" (diagnóstico remoto)

> **Qué es.** Una revisión remota de 15 minutos del equipo del cliente, con un
> **informe de 1 página en PDF** que dice qué se encontró, qué significa y
> cuánto cuesta arreglarlo. **Gratis.**
>
> **Por qué existe (Hormozi).** El regalo resuelve un dolor real, se consume en
> minutos y termina en el servicio pagado. No se regala el arreglo: se regala el
> **diagnóstico**. Eso da acceso al cliente, demuestra experiencia y deja el
> paso siguiente obvio.
>
> **Producto más probado en la práctica:** caso `rai` (HP Omen Windows 11,
> "el PC se apaga solo"). Ver `rustdesk-clientes/clientes/rai/`.

---

## 1. La oferta (lo que se publica)

**Título:** Chequeo gratis de tu PC — 15 minutos por remoto

**Texto corto (para la web / WhatsApp):**

> ¿Tu PC está lento, se apaga solo o se calienta? Te lo reviso **gratis** por
> remoto, en 15 minutos, y te mando un informe simple con lo que encontré y
> cuánto costaría dejarlo bien. Sin compromiso: si no quieres arreglarlo, el
> informe queda igual.
>
> Escríbeme por WhatsApp y agendamos. **+56 9 3123 2000**

**Qué reviso (y qué NO):**

| ✅ Sí (solo software) | ❌ No |
|---|---|
| Temperatura y salud del disco (SMART) | No abro el equipo |
| Arranque, programas de inicio, uso de RAM/CPU | No cambio piezas |
| Actualizaciones pendientes | No formateo (eso se presupuesta aparte) |
| Errores en los registros (por qué se apaga / reinicia) | No accedo a tus fotos, chats ni archivos personales |
| Estado del respaldo | — |

**Límite de la oferta (regla Hormozi):** el gratis es **el diagnóstico + informe**.
Cualquier arreglo se cotiza con el precio ya publicado (ver `references/oferta.md`).

---

## 2. Flujo de atención (paso a paso)

```
1. Cliente escribe por WhatsApp           → se agenda hora (15 min)
2. Conexión remota (RustDesk + Tailscale) → solo lectura
3. Revisión rápida con la lista de arriba
4. Se completa la plantilla y se genera el PDF en carta
5. Se envía el PDF por WhatsApp + se ofrecen los pasos siguientes
6. Seguimiento a los 3 días (una sola vez, sin insistir)
```

**Control anti-abuso:** máximo **3 chequeos gratis por semana** (agenda del
operador). Si no alcanza, priorizar equipos con dolor urgente (se apaga, pierde
archivos) sobre "está lento pero anda".

---

## 3. Informe (plantilla)

Usar **`marketing/plantilla-informe-pc.html`** (misma familia visual que la
auditoría de código, tamaño **carta**). Rellenar los marcadores `{{...}}` y
generar el PDF en el MSI:

```bash
chromium --headless --print-to-pdf=informe.pdf \
  --no-pdf-header-footer marketing/plantilla-informe-pc.html
magick identify 'informe.pdf[0]'   # debe dar 612x792 (carta)
```

**Marcadores por completar:**

| Marcador | Qué va |
|---|---|
| `{{CLIENTE}}` | Nombre del cliente |
| `{{EQUIPO}}` | Marca/modelo y sistema (ej. HP Omen · Windows 11) |
| `{{FECHA}}` | Fecha del chequeo |
| `{{ESTADO_GENERAL}}` | Etiqueta: Bueno / Regular / Crítico |
| `{{HALLAZGO_1..3}}` | Los hallazgos en español claro, no en jerga |
| `{{SEM_DISCO}}` `{{SEM_ARRANQUE}}` `{{SEM_TEMP}}` | Semáforo por área |
| `{{RECOMENDACION}}` | Qué hacer, en orden, con precio |

**Regla de redacción:** cada hallazgo va en **dos partes** — *qué es* y *qué
significa para ti*. Ejemplo:

> **El disco está al 96% de salud.** Significa que todavía funciona, pero está
> cerca del final de su vida: es la causa más probable de que el PC se congele.
> Respalda tus archivos ahora. Reemplazo de disco: *(se cotiza aparte)*.

---

## 4. Mensaje de WhatsApp (para guardar en `~/mensajes/`)

**Primer contacto (cuando el cliente escribe):**

> Hola, soy Juan Pablo (Juan Pablo + IA).
> Te hago el chequeo gratis de tu PC: lo reviso por remoto en 15 minutos y te
> mando un informe con lo que encontré. ¿Te acomoda hoy o mañana?
> Solo necesito que la conexión a internet esté estable.

**Entrega del informe:**

> Listo, te mando el informe (adjunto). Lo importante, en una línea: {{RESUMEN}}.
> Si quieres, te lo dejo funcionando; el presupuesto está en la última página.
> Si prefieres pensarlo, sin problema — el informe queda tuyo.

**Seguimiento (a los 3 días, una vez):**

> Hola, Juan Pablo otra vez. ¿Pudiste ver el informe? Cualquier duda me dices.
> Si me confirmas en estos días, te reservo la hora.

---

## 5. Publicación en el sitio (pendiente de aprobación del operador)

Sugerencia de dónde va, sin tocar precios ni reordenar servicios:

- **CTA secundario** en la sección `#precios` o cerca de `#otros`:
  *"¿No sabes qué tiene tu PC? Pide un chequeo gratis (15 min)"* →
  WhatsApp con texto precargado.
- **Opción más liviana:** bloque corto en la sección `#software`/`#otros`.
- **Texto del botón WhatsApp precargado:**
  `Hola%2C%20quiero%20el%20chequeo%20gratis%20de%20mi%20PC`

> ⚠️ El agente **prepara**; el operador **aprueba**. No publicar por cuenta propia.

---

## 6. Qué medir

| Métrica | Cómo | Meta inicial |
|---|---|---|
| Conversaciones que piden el chequeo | WhatsApp | 5 en 2 semanas |
| Chequeos realizados | agenda | 3/semana |
| Informes entregados | PDF enviados | 100% de los chequeos |
| Conversión informe → servicio pagado | seguimiento | 1 de 3 |

---

*Creado por Pi. Alineado con `references/oferta.md` y la voz de marca de la
skill `marketing-juanpablo`. No inventar precios: los del informe salen de la
oferta vigente.*
