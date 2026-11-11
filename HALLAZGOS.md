# Hallazgos técnicos — sitio Juan Pablo + IA (Netlify)

> Registro de todo lo auditado y verificado el **01-nov-2026** sobre
> https://juanpablomasia.netlify.app/ mientras trabaja sin dominio propio.
> Cada hallazgo trae el dato real medido (no supuestos).
>
> Documento hermano: `PENDIENTES-SEO.md` (lo que falta hacer + dominio .cl).
>
> **Numeración:** esta serie (H-xx) es **propia de ESTE repo** (el sitio). No
> tiene relación con los `H-xx` de `rustdesk-wlan-ssh-pi/docs/hallazgos.md`
> (el kit), que numeran aparte. Aquí: H-01..H-15 (sitio) → H-16 en adelante.

---

## H-01 · Menú invisible en móvil (RESUELTO)

**Hallazgo.** En `<=820px` el CSS tenía:

```css
.nav-links a:not(.btn) { display: none; }
```

Ocultaba **todo** el menú (Modalidades, PC, Android, Remoto, Precios,
Páginas web, Guías, Preguntas) y **no había menú hamburguesa**. Desde el
celular solo quedaba el botón de WhatsApp → las secciones nuevas (`#web`)
eran inalcanzables. El grueso del tráfico web es móvil.

**Solución.** Menú hamburguesa **CSS-only** (checkbox + label, sin JS),
aplicado a las 5 páginas (index, /guias/ y las 3 guías de Linux).
`aria-label` + `.sr-only` para accesibilidad.

**Verificado.** `menu-toggle` presente en HTML y regla `:checked` en el CSS,
en producción.

---

## H-02 · Deploy roto por plugin local sin manifest (RESUELTO)

**Hallazgo.** Al agregar el plugin de IndexNow, el deploy falló dos veces:

```
Failed during stage 'building site': Build script returned non-zero exit code: 2
The plugin "./netlify/plugins/indexnow" is missing a "manifest.yml".
```

**Causa.** Un plugin local de Netlify necesita **3 cosas**: `index.js`,
`manifest.yml` y un `package.json` en la **raíz del repo**.
Faltaban el `manifest.yml` y el `package.json` raíz.

**Solución.** Se agregaron ambos. El deploy volvió a `ready`.

**Cómo se diagnostica.** `netlify build` en local replica el error exacto de
Netlify sin gastar un deploy. **Siempre correr `netlify build` antes de push.**

**Nota.** `constants.CONTEXT` viene `undefined` en build local; el plugin se
hizo tolerante (avisa igual en local, se salta previews en Netlify).

---

## H-03 · IndexNow rechaza subdominios `.netlify.app`

**Hallazgo.** El aviso a IndexNow (Bing/Yandex) responde siempre:

```json
{"errorCode":"UserForbiddedToAccessSite",
 "message":"User is unauthorized to access the site. Please verify the site using the key and try again"}
HTTP 403
```

**Descartado (todo estaba bien):** la key responde `200`, `text/plain`,
32 bytes sin salto de línea, HTTPS, sin redirects, `keyLocation` correcto.
Se probó GET y POST, con y sin `keyLocation`: **siempre 403**.

**Causa real.** IndexNow no acepta subdominios gratuitos compartidos
(`*.netlify.app`). Es la misma barrera que enfrenta Google.

**Estado.** Todo dejado armado (script + plugin en cada deploy + key
publicada). **Funcionará solo cuando haya dominio propio.**

**Dato curioso.** Con la key aún sin publicar devolvió `202` (aceptado);
con la key real publicada devuelve `403`. El `202` inicial era falso positivo.

---

## H-04 · Google/Bing eliminaron el ping de sitemap

**Hallazgo.**

| Endpoint | Respuesta |
|---|---|
| `google.com/ping?sitemap=…` | **404** (eliminado) |
| `bing.com/ping?sitemap=…` | **410** (eliminado) |

**Implicancia.** Ya no sirve "avisar" a Google por ping. El único camino es
**Search Console** (requiere clic del operador) y, para Bing/Yandex, IndexNow.

---

## H-05 · Las subpáginas no tienen Analytics (RESUELTO 05-nov-2026)

**Hallazgo.** GA4 (`G-CNV88M2Q9N`) está **solo en la home**. Medido:

| Página | Scripts GTM |
|---|---|
| `/` | 3 ✅ |
| `/guias/` | 0 ❌ |
| `/como-instalar-cachyos/` | 0 ❌ |
| `/linux-vs-windows/` | 0 ❌ |
| `/revivir-pc-viejo-con-linux/` | 0 ❌ |

**Implicancia.** No se ven en GA4 las visitas a las guías (que son las que
más tráfico orgánico pueden generar).

**Resuelto (05-nov-2026, PR #28).** El bloque GA4 (mismo tag `G-CNV88M2Q9N` +
evento `click_whatsapp`) está ahora en las 5 páginas. Verificado en producción:
`curl /guias/ | grep -c G-CNV88M2Q9N` → 1.

---

## H-06 · La página 404 es la genérica de Netlify (RESUELTO 05-nov-2026)

**Hallazgo.** Cualquier URL inexistente muestra la 404 por defecto de Netlify
(con branding de Netlify), no una del negocio.

**Implicancia.** Feo y poco profesional si alguien llega por un enlace viejo.
Además pierde la oportunidad de ofrecer el servicio / WhatsApp.

**Resuelto (05-nov-2026, PR #28).** `404.html` propia en la raíz con CTA a
WhatsApp, evento GA4 `page_404`, `noindex` y lista de rutas válidas. Verificado
en producción: cualquier URL inexistente devuelve la 404 del negocio.

---

## H-07 · El sitemap no tiene `lastmod` (RESUELTO 05-nov-2026)

**Hallazgo.** `sitemap.xml` tiene `changefreq` y `priority`, pero **cero**
`lastmod` (fechas de modificación).

**Implicancia.** Los buscadores usan `lastmod` para saber si vale la pena
re-rasterizar. Sin fechas, pierden una señal útil.

**Resuelto (05-nov-2026, PR #28).** `bin/generar-sitemap.sh` regenera
`sitemap.xml` con `<lastmod>` = fecha del último commit que tocó cada página.
`--check` compara sin escribir (sirve para CI). Verificado: 5 `lastmod` en
producción.

---

## H-08 · Rendimiento medido (sano)

**Datos reales** (01-nov-2026, desde a16):

| Métrica | Valor |
|---|---|
| HTML home | 42 KB (sin comprimir) |
| Assets totales | **1,6 MB** el sitio completo |
| CSS | 11 KB |
| Compresión | **Brotli** activa (`content-encoding: br`) ✅ |
| TTFB | ~0,31 s |
| Carga total home | ~0,44 s |

**Consumo de créditos (plan Free).** Con ~42 KB por página:
1.000 visitas ≈ **1,7 créditos** de bandwidth. Con 300 créditos/mes aguanta
**decenas de miles de visitas**. Sobrado para un negocio local.

---

## H-09 · Cache de assets

**Estado tras la optimización (PR #13):**

| Ruta | Cache-Control |
|---|---|
| `/` (HTML) | `max-age=0, must-revalidate` ✅ correcto (siempre fresco) |
| `/assets/*.css` | `max-age=31536000, immutable` ✅ |
| `/assets/*.jpg` | `max-age=31536000, immutable` ✅ |
| `/og-web.jpg` | `max-age=31536000, immutable` ✅ (antes 1 h) |

**Ojo.** Al cachear el og-image 1 año, si algún día se cambia esa imagen hay
que **renombrarla o subir el `?v=`** del meta, si no seguirá la vieja en
WhatsApp/Facebook.

---

## H-10 · Rutas limpias y redirects (correcto)

**Verificado.** Netlify resuelve las pretty URLs solo:

```
/guias                    -> 301 -> /guias/    -> 200
/como-instalar-cachyos    -> 301 -> /…/        -> 200
```

No hacen falta redirects manuales en `netlify.toml` (y de hecho antes hubo
redirects redundantes que se quitaron).

---

## H-11 · HTTPS y seguridad (impecable)

| Header | Valor |
|---|---|
| HTTPS | ✅ forzado (http → 301) |
| HSTS | `max-age=31536000; includeSubDomains; preload` |
| `x-content-type-options` | `nosniff` |
| `x-frame-options` | `SAMEORIGIN` |
| `referrer-policy` | `strict-origin-when-cross-origin` |
| SSL | automático (Let's Encrypt, gestionado por Netlify) |

Nada que hacer aquí.

---

## H-12 · Preconnect a Analytics

**Cambio aplicado (PR #13).** Se agregó al `<head>` de la home:

```html
<link rel="preconnect" href="https://www.googletagmanager.com" crossorigin>
<link rel="dns-prefetch" href="https://www.googletagmanager.com">
<link rel="preconnect" href="https://www.google-analytics.com" crossorigin>
```

**Efecto.** El navegador abre la conexión a Google antes de pedir el script
de GA4 → carga menos bloqueante.

**Nota.** No se puso en las subpáginas porque no tienen Analytics (ver H-05).

---

## H-13 · Límites reales del plan Free de Netlify

**Plan Free = 300 créditos/mes**, compartidos por **todos** los proyectos de
la cuenta. Tarifas (oficiales de Netlify):

| Recurso | Créditos |
|---|---|
| Deploy de producción | 15 c/u |
| Bandwidth | 20 por GB |
| Web requests | 2 por 10.000 |
| Compute | 10 por GB-hora |

**Equivalencias de los 300 créditos (usando todo en una cosa):**
- ~15 GB de tráfico, o
- ~1,5 millones de requests, o
- ~20 deploys de producción, o
- ~11.000-12.000 visitas reales de 1 MB (mezcla típica).

**Límites de cuenta:** hasta **500 proyectos** por cuenta (Free, Personal, Pro).

**⚠️ Riesgo clave.** Los créditos son **compartidos**. Si un sitio de un
cliente se dispara, **se pausan TODOS** los sitios de la cuenta y los
visitantes ven "Site not available".

**Mitigación.** Al vender sitios a clientes, crear **una cuenta Netlify por
cliente** (gratis). Si un cliente crece mucho (>~11.000 visitas/mes), pasar
ese proyecto a **Personal ($9/mes ≈ $9.000 CLP)**.

---

## H-14 · La cuenta sigue en Free

**Verificado vía API de Netlify:** `type_name: Free`, sin método de pago,
`custom_domain: None`, `domain_aliases: []`.

Suficiente para el sitio actual. Revisar si se venden sitios (ver H-13).

---

## H-15 · Precios de mercado (para vender páginas web)

Investigado el 01-nov-2026 en fuentes chilenas:

| Servicio | Rango mercado |
|---|---|
| Landing page | $250.000 – $350.000 |
| Sitio servicios | $350.000 – $550.000 |
| Sitio corporativo pyme | $400.000 – $900.000 |
| Freelancer, sitio corporativo | $400.000 – $1.200.000 |
| Tienda online | $500.000 – $800.000+ |
| Catálogo/reservas/login | $1.200.000 – $3.000.000 |
| Mantención web mensual | $30.000 – $150.000 |
| Dominio `.cl` (NIC) | $9.990/año |
| Dominio `.com` (registrador) | ~$11.000/año |

**Nuestros precios (lanzamiento a la baja):**
Landing **$149.900** · Pyme **$249.900** · Dominio **$24.900/año** ·
Mantención **$9.900 / $19.900/mes**.

---

## Resumen de acciones sugeridas (no urgentes)

| # | Acción | Riesgo | Impacto |
|---|---|---|---|
| ~~H-05~~ | ~~GA4 en las 4 subpáginas~~ ✅ hecho | — | medir guías |
| ~~H-06~~ | ~~`404.html` propia~~ ✅ hecho | — | imagen profesional |
| ~~H-07~~ | ~~`lastmod` en el sitemap~~ ✅ hecho | — | SEO |
| B1 | Search Console (clic operador) | — | indexación |
| B2 | Dominio `.cl` (ver `PENDIENTES-SEO.md`) | — | **el grande** |

---

## H-89 · Renombrar un repo en GitHub borra el webhook de Netlify (auto-deploy muerto)

**Síntoma (07-nov-2026):** en el repo `juanpablomasia` (ex `cachyos-chile`),
los `git push` a `main` **no disparaban deploys automáticos** en Netlify.
Los deploys manuales (`netlify deploy --prod` o `createSiteBuild`) sí funcionaban,
así que el sitio nunca se cayó — pero cada cambio quedaba sin publicar hasta
que alguien lo forzaba a mano.

**Causa raíz:** al **renombrar el repositorio** (`cachyos-chile` → `juanpablomasia`),
GitHub **eliminó el webhook** de Netlify, porque apuntaba al nombre viejo.
Netlify seguía con el repo nuevo configurado y la deploy key autorizada
(por eso el deploy manual andaba), pero **nadie le avisaba de los push**:

```
$ gh api repos/<owner>/<repo>/hooks
[]
```

**Diagnóstico falso por el que se perdió tiempo:** mirar el historial de deploys
y concluir "el auto-deploy falla a veces". En realidad **nunca funcionó** desde
el renombrado; las veces que "funcionó" fue porque se forzó a mano o el build
tardó ~1-3 min y parecía caído.

**Solución:** recrear el webhook en GitHub apuntando a Netlify:

```bash
gh api repos/<owner>/<repo>/hooks --method POST --input - <<'JSON'
{
  "name": "web",
  "active": true,
  "events": ["push", "pull_request", "release"],
  "config": {
    "url": "https://api.netlify.com/hooks/github",
    "content_type": "json",
    "insecure_ssl": "0"
  }
}
JSON
```

**Verificación:** hacer un push y **esperar sin forzar** (2-3 min). El deploy debe
aparecer con el `commit_ref` del push. También se puede mirar:

```bash
gh api repos/<owner>/<repo>/hooks/<id> --jq '.last_response'   # esperado: 204
```

**Resultado (a16, 07-nov-2026):** push → deploy en **4 s** y en **35 s** en dos
pruebas seguidas. Cero intervención manual.

**Regla:** **si alguna vez se renombra un repo con integración de Netlify (o
similar), hay que recrear el webhook.** Un deploy manual que funciona NO prueba
que el automático esté vivo.

---

## H-16 · `cambiar-dominio.sh` fallaba EN SILENCIO: flag `sed -F` inexistente + lista fija de archivos

**Fecha:** 10-nov-2026 (a16, al conectar el dominio `juanpabloia.cl`).

**Síntoma.** Se corrió `./bin/cambiar-dominio.sh juanpabloia.cl` y el script
terminó diciendo *"Total: 70 coincidencia(s)"* y *"✔ Listo"*. Pero **no cambió
ninguna URL**: el sitio seguía con `juanpablomasia.netlify.app`.

**Causa 1 — flag inválido que falla callado.** El reemplazo usaba:

```bash
sed -i -F "s#$VIEJO_HOST#$NUEVO_HOST#g" "$f"
```

`sed` **no tiene** la opción `-F`. Al recibirla, GNU sed imprime su **ayuda**
(varias líneas de texto) y **sale sin procesar el archivo**. Como el script no
revisaba el código de salida de `sed`, siguió como si nada: el "✔ Listo" era
mentira. El delimitador `#` ya evita escapar las barras, así que `-F` sobraba
desde el principio.

**Causa 2 — lista fija de archivos.** El script tenía una lista `FILES=(...)`
con 13 entradas. Faltaban páginas que también usan el host:
**`soporte-remoto/`, `pc-macul/`, `android/` y `clases/`**. Aunque `sed` hubiera
funcionado, esas 4 páginas habrían quedado con el dominio viejo.

**Arreglo.**

1. `sed -i "s#$VIEJO_HOST#$NUEVO_HOST#g"` (sin `-F`).
2. La lista `FILES` se reemplazó por **descubrimiento automático**:

```bash
mapfile -t FILES < <(
  grep -rl -F "$VIEJO_HOST" . \
    --include='*.html' --include='*.xml' --include='*.txt' \
    --include='*.js' --include='*.sh' --include='*.json' \
    --exclude-dir=.git --exclude-dir=node_modules \
    | sed 's#^\./##' | sort
)
```

Así, cualquier página nueva se incluye sola. Total real: **89 reemplazos**
(no 66 como decía la doc).

**Verificación.** `grep -r 'juanpablomasia.netlify.app'` en el código → **0**
(salvo la constante `VIEJO_HOST` del propio script y el 301 del `netlify.toml`).

**Regla (lección general).** Cuando un script usa `sed` (u otra herramienta) para
reescribir archivos, **debe revisar el código de salida y contar de verdad los
cambios**. Un `sed` mal invocado imprime su ayuda, devuelve 0 o 1, y el script
sigue feliz. "Total: N coincidencia(s)" contaba coincidencias **encontradas**,
no **reemplazadas** — por eso mintió.

---

## H-17 · Activar el 301 al dominio ANTES de que el DNS resuelva deja el sitio INACCESIBLE

**Fecha:** 10-nov-2026, minutos después de H-16.

**Síntoma.** Tras el cambio de URLs se activó el 301 del `.netlify.app` al
dominio nuevo en `netlify.toml`. Al verificar:

```
curl -I https://juanpablomasia.netlify.app/  →  301 https://juanpabloia.cl/
curl -I https://juanpabloia.cl/             →  000 (no resuelve)
```

El sitio **dejó de responder** para cualquiera: el subdominio redirigía a un
dominio que **todavía no existe en el DNS** (el operador aún no lo había
conectado en Netlify).

**Causa.** El orden quedó invertido. Netlify sí redirige el `.netlify.app` al
dominio primario **automáticamente cuando el dominio está conectado**; el 301
manual solo es un refuerzo. Activarlo antes de tiempo no aporta y **rompe**.

**Arreglo.** Se **comentó** el bloque `[[redirects]]` (PR #53). El sitio volvió a
**200**. Se reactiva cuando `https://juanpabloia.cl/` responda. Además, el script
`cambiar-dominio.sh` ahora hace `curl` al dominio y **solo sugiere activar el 301
si resuelve** (PR #54).

**Orden correcto (documentado en `DOMINIO-PENDIENTE.md`, paso 3.5):**

1. Conectar el dominio en Netlify (Domain settings) → esperar el DNS.
2. **Cuando el dominio responda**, activar el 301.

**Regla.** **Nunca redirigir a un dominio que no resuelve.** Un 301 a un destino
muerto es peor que no tener redirección: convierte el sitio entero en un error
de conexión. Verificar con `curl` **antes** de activar.

---

## H-18 · Las URLs viejas de los `.md` se actualizan AL FINAL, no en el cambio

**Fecha:** 10-nov-2026.

**Observación.** El cambio de dominio dejó a propósito los `.md` de
documentación (`README.md`, `MARKETING.md`, `HALLAZGOS.md`) con la URL
`.netlify.app`, porque **esa sigue siendo la URL viva** hasta que el dominio
resuelva. Cambiarlas antes haría que la doc apunte a un dominio muerto.

**Criterio.** En el código (canonical, sitemap, etc.) el dominio nuevo es
correcto aunque aún no resuelva (los buscadores siguen viendo el `.netlify.app`,
que responde 200, y las URLs nuevas se sirven cuando el dominio esté vivo). En
la **documentación de estado** (URLs que alguien copia y pega), se actualizan
cuando el dominio esté **vivo**.
