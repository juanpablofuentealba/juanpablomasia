# Lead magnet — "Auditoría web gratis" (revisión de tu sitio en 15 min)

> **Qué es.** Revisión remota de la web del cliente (15 min) con un **informe de
> 1 página en PDF** que dice: si aparece en Google, si carga rápido, si se ve
> bien en celular, si tiene HTTPS, si sus datos de contacto se encuentran — y
> cuánto cuesta dejarla funcionando.
>
> **Por qué existe (Hormozi).** El regalo resuelve un dolor real (*"tengo web y
> nadie me visita / no me encuentran"*), se consume en minutos y desemboca
> directo en el servicio pagado (**web $149.900 / $249.900 · mantención
> $9.900/mes**). Se regala el **diagnóstico**, no la web.
>
> ⚠️ **No confundir** con la **auditoría de código** (servicio #6, línea
> empresa, $300.000–$800.000 → `entregable-auditoria-codigo.md`). Ese es para
> sistemas internos; **este** es para la web pública de una pyme o un
> emprendedor. Distinto público, distinto precio.

---

## 1. La oferta (lo que se publica)

**Título:** Auditoría web gratis — te digo en 15 minutos por qué tu sitio no te trae clientes

**Texto corto (para la web / WhatsApp):**

> ¿Tienes una página web y sientes que no te sirve de nada? Te la reviso
> **gratis** y te mando un informe simple: si apareces en Google, si carga
> rápido, si se ve bien en el celular y qué arreglaría primero. Sin compromiso:
> el informe es tuyo, quieras o no que te la arregle.
>
> Escríbeme por WhatsApp y agendamos. **+56 9 3123 2000**

**Qué reviso (y qué NO):**

| ✅ Sí (sin tocar nada) | ❌ No |
|---|---|
| Si aparece en Google y con qué búsquedas | No accedo a su panel ni a sus cuentas |
| Velocidad de carga (móvil y PC) | No modifico su web |
| Cómo se ve en celular (390px) | No cambio textos ni diseño |
| HTTPS / certificado y errores obvios | No toco su hosting ni su dominio |
| Botón de WhatsApp / contacto y formularios | No prometo posiciones en Google |
| SEO básico: título, descripción, sitemap | — |
| Redes y Google Business (si aparecen) | — |

**Límite de la oferta (regla Hormozi):** el gratis es **el diagnóstico + informe**.
Cualquier arreglo se cotiza con el precio ya publicado (ver `references/oferta.md`).

---

## 2. Flujo de atención (paso a paso)

```
1. Cliente escribe por WhatsApp           → se pide la URL de su web
2. Revisión remota con la lista de arriba (15 min, sin tocar su web)
3. Se completa la plantilla y se genera el PDF en carta (en el MSI)
4. Se envía el PDF por WhatsApp + se ofrecen los pasos siguientes
5. Seguimiento a los 3 días (una sola vez, sin insistir)
```

**Control anti-abuso:** máximo **5 auditorías gratis por semana**. Si no alcanza,
priorizar webs de **negocios activos** (que ya venden) sobre curiosos.

---

## 3. Informe (plantilla)

Usar **`marketing/plantilla-informe-web.html`** (misma familia visual, tamaño
**carta**). Rellenar los marcadores `{{...}}` y generar el PDF en el MSI.

**Medición base (sin IA, determinista):** el repo ya trae
`bin/auditar-sitio.sh` (HTTP, enlaces rotos, JSON-LD, GA4, sitemap, peso del
HTML). Correrlo contra el sitio del cliente da los datos duros del informe:
`SITIO_URL=https://web-del-cliente.cl ./bin/auditar-sitio.sh`.

```bash
chromium --headless --print-to-pdf=informe.pdf \
  --no-pdf-header-footer marketing/plantilla-informe-web.html
magick identify 'informe.pdf[0]'   # debe dar 612x792 (carta)
```

**Regla de precios:** los precios del informe salen **solo** de `references/oferta.md`. Si un arreglo puntual no tiene precio publicado (ej. "limpieza de imágenes"), se marca **"a cotizar"** — nunca se inventa una cifra.

**Marcadores por completar:**

| Marcador | Qué va |
|---|---|
| `{{CLIENTE}}` `{{WEB}}` `{{FECHA}}` | Nombre, URL revisada, fecha |
| `{{ESTADO_GENERAL}}` | Etiqueta: Bien / Mejorable / Crítico |
| `{{RESUMEN}}` | Una línea: lo principal |
| `{{SEM_GOOGLE}}` `{{SEM_VELOCIDAD}}` `{{SEM_MOVIL}}` | Semáforo por área |
| `{{HALLAZGO_1..3}}` / `{{SIGNIFICA_1..3}}` | Los 3 hallazgos: *qué es* + *qué significa* |
| `{{R_GOOGLE}}` `{{R_VELOCIDAD}}` `{{R_MOVIL}}` `{{R_HTTPS}}` `{{R_CONTACTO}}` `{{R_SEO}}` | Resultado por punto |
| `{{RECOM_1..3}}` | Qué hacer, en orden, con precio |
| `{{PRESU_1_DESC}}` `{{PRESU_1_PRECIO}}` … | Presupuesto con precios de la oferta |

**Regla de redacción:** cada hallazgo va en **dos partes** — *qué es* y *qué
significa para el negocio*. Ejemplo:

> **Tu página pesa 8 MB (lo normal es menos de 2).** Significa que en el celular
> con datos móviles tarda ~9 segundos en abrir: la mitad de la gente se va antes
> de verla. Compresión de imágenes: incluido en la mantención.

---

## 4. Mensaje de WhatsApp (para guardar en `~/mensajes/`)

**Primer contacto (cuando el cliente escribe):**

> Hola, soy Juan Pablo (Juan Pablo + IA).
> Te hago la auditoría gratis de tu web: la reviso por mi lado en 15 minutos (no
> toco nada tuyo) y te mando un informe con qué está frenando que te lleguen
> clientes. ¿Me pasas la dirección de tu página?

**Entrega del informe:**

> Listo, te mando el informe (adjunto). Lo importante, en una línea: {{RESUMEN}}.
> Si quieres, te dejo todo funcionando; el presupuesto está en la última página.
> Si prefieres pensarlo, sin problema — el informe queda tuyo.

**Seguimiento (a los 3 días, una vez):**

> Hola, Juan Pablo otra vez. ¿Pudiste ver el informe de tu web? Si me dices
> "dale", te paso el detalle de cómo lo dejamos andando. Cualquier duda, aquí
> estoy.

---

## 5. Publicación en el sitio (pendiente de aprobación del operador)

Sugerencia, sin tocar precios ni reordenar servicios:

- **CTA secundario** en la sección `#web` o cerca de `#precios`:
  *"¿Ya tienes web y no te trae clientes? Pide una auditoría gratis"* →
  WhatsApp con texto precargado.
- **Texto del botón WhatsApp precargado:**
  `Hola%2C%20quiero%20la%20auditor%C3%ADa%20web%20gratis`

> ⚠️ El agente **prepara**; el operador **aprueba**. No publicar por cuenta propia.

---

## 6. Qué medir

| Métrica | Cómo | Meta inicial |
|---|---|---|
| Webs revisadas | agenda | 5/semana |
| Informes entregados | PDF enviados | 100% de las revisiones |
| Conversión informe → web/mantención | seguimiento | 1 de 4 |
| Ingreso atribuible | nuevos servicios | 2 clientes el 1° mes |

---

*Creado por Pi. Alineado con `references/oferta.md` y la voz de marca de la
skill `marketing-juanpablo`. No inventar precios: los del informe salen de la
oferta vigente.*
