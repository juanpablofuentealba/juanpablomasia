# Dominio `juanpabloia.cl` — todo listo, falta tu mano

> **Estado al 10-nov-2026: DOMINIO COMPRADO.** `juanpabloia.cl` fue adquirido en
> NIC Chile. **El código del sitio ya quedó apuntando a `juanpabloia.cl`**
> (las 89 URLs del repo se cambiaron y la redirección 301 quedó activa en
> `netlify.toml`). **Falta conectar el dominio en Netlify (paso 3, requiere tu
> login) y que propague el DNS.** Hasta que eso pase, la URL viva sigue siendo
> `https://juanpablomasia.netlify.app/`.
>
> Antes: verificado **LIBRE** en el whois de NIC Chile (`no existe`, 10-nov-2026).
>
> **Por qué `juanpabloia` y no `juanpablomasia` (decisión del operador,
> 10-nov-2026):** `juanpablomasia` (= *Juan Pablo + IA*) **se lee como apellido
> "Masía"** — y eso no se puede corregir a tiempo: **Google, Bing y las IA lo
> leen así** (no leen los repos privados donde se documente). `juanpabloia` es
> **más corto, se entiende solo** ("Juan Pablo IA") y comunica la marca sin
> ambigüedad. `juanpablomasia.cl` **también está libre**: si se quiere, se
> registra como **redirección** a la principal (~$9.990/año extra).
>
> **El trabajo técnico ya está hecho.** Lo único que no puede hacer un agente
> es **comprar** el dominio (requiere RUT + tarjeta + sesión autenticada;
> NIC Chile no tiene API de registro). Son ~5 minutos tuyos + los pasos de abajo.

---

## 1. Lo que ya está preparado (hecho por el agente)

| Pieza | Estado |
|---|---|
| `bin/cambiar-dominio.sh` | ✅ listo — cambia las **66** apariciones del host de una vez (canonical, `og:url`, `og:image`, Twitter, JSON-LD, sitemap, robots, `llms.txt`, plugin IndexNow, generador de sitemap) |
| Redirección 301 en `netlify.toml` | ✅ escrita y **comentada** — se activa con el dominio |
| `bin/generar-sitemap.sh` | ✅ regenera el sitemap con el host nuevo |
| Plugin IndexNow | ✅ dejará de dar **403** en cuanto el host sea `.cl` (acepta dominios propios, no `.netlify.app`) |
| `http→https` + HSTS | ✅ ya configurado en Netlify (SSL automático) |
| Prueba del script | ✅ `--check` cuenta las 66 coincidencias sin escribir nada |

---

## 2. TUS PASOS (en orden, ~15 minutos)

> 🗓️ **Fecha de compra definida por el operador (05-nov-2026):**
> **entre el 15 y el 20 de cada mes**, que es cuando entra dinero.
> **Próxima ventana: 15 al 20 de noviembre de 2026.** Sin urgencia: no se
> necesita el dominio para nada de lo que ya está funcionando.
>
> Hay un recordatorio automático (cron en a13, días 14, 15, 16, 19 y 20)
> que avisa por WhatsApp a a16. Script: `bin/recordar-dominio.sh`.
>
> 🛒 **Al comprar: buscar `juanpabloia.cl`** (el `juanpablomasia.cl` es
> opcional, solo como redirección).

### Paso 1 — Comprar el dominio (5 min)

1. Entrar a **https://www.nic.cl** → "Inscribe tu dominio".
2. Buscar **`juanpabloia.cl`** (libre) y agregarlo al carro.
3. Pagar **$9.990/año** (exento de IVA) con débito o crédito.
4. Inscribirlo **a tu nombre** (RUT). Es a 1 año, renovable.

> 💡 Puedes pagar más de un año de una vez (más barato a largo plazo).
> Al cliente le cobras $24.900/año, así que el margen cubre renovación + gestión.

### Paso 2 — Cambio de URLs en el código ✅ HECHO (10-nov-2026)

El agente corrió `./bin/cambiar-dominio.sh juanpabloia.cl`:

- ✅ Cambió **89 apariciones** del host (antes se decía 66: el script tenía una
  lista fija de archivos y se le escapaban páginas nuevas — **bug corregido**,
  ahora descubre los archivos solo).
- ✅ Activó la redirección 301 en `netlify.toml`.
- ✅ Regeneró `sitemap.xml` y `llms.txt`.
- ✅ Verificado: **0** apariciones del host viejo en el código.

> ⚠️ El cambio de URLs **no hace daño aunque el dominio aún no esté conectado**:
> `juanpabloia.cl` da error de DNS hasta que se conecte en Netlify. Por eso el
> **paso 3 (Netlify) es el que falta y requiere tu login**. Una vez que el
> dominio responda, el sitio ya está listo y no hay que tocar nada más.

### Paso 3 — Conectar el dominio en Netlify (5 min, requiere tu login)

1. Entrar a **https://app.netlify.com** → proyecto **`juanpablomasia`**.
2. **Domain settings** → **Add a domain** → escribir `juanpabloia.cl`.
3. Netlify te muestra **2 caminos**:
   - **Opción A (recomendada, más simple):** cambiar los **nameservers** en NIC
     Chile por los de Netlify (`dns1.pXX.nsone.net` y compañía). Netlify
     configura todo solo (SSL incluido).
   - **Opción B:** dejar los nameservers de NIC y agregar los registros que
     Netlify indique (A / CNAME). Más manual, más fácil equivocarse.
4. Marcar `juanpabloia.cl` como **Primary domain** (el `.netlify.app` queda
   redirigiendo solo).
5. Esperar propagación DNS (de minutos a un par de horas).

> El SSL (HTTPS) lo emite Netlify solo, gratis, cuando el DNS ya apunta bien.

### Paso 4 — Volver a Search Console (5 min)

Cuando `https://juanpabloia.cl` ya responda:

1. En **Search Console**: agregar propiedad **`https://juanpabloia.cl/`**
   (verificación por GA4, que ya está en las 5 páginas).
2. Enviar el sitemap: `https://juanpabloia.cl/sitemap.xml`.
3. "Inspección de URL" → "Solicitar indexación" en las 5 páginas.
4. Si ya tenías la propiedad del `.netlify.app`: en **Configuración → Cambio de
   dirección** puedes declarar el cambio de dominio (señal fuerte para Google).

---

## 3. Qué gana el negocio con esto (por qué vale los $9.990)

| Antes (`.netlify.app`) | Después (`.cl`) |
|---|---|
| Google **desconfía** de subdominios gratuitos | Dominio país = señal de legitimidad |
| **IndexNow 403** (Bing/Yandex nunca se enteran) | IndexNow **funciona** en cada deploy |
| Compite contra negocios con `.cl` | Compite en igualdad |
| Cliente dice "¿es tuyo esto?" | Marca propia: `juanpabloia.cl` |
| URL larga para dictar por teléfono | Dirección que se dicta de una |

---

## 4. Cuando intentes comprarlo, ojo con esto

- **NIC Chile no tiene API** ni registro automático: es formulario web con
  sesión. No hay forma de que un agente lo compre.
- **Titularidad:** inscribirlo a **tu nombre** (persona). Si algún día quieres
  facturar como empresa, se puede transferir el dominio después.
- **Renovación:** NIC avisa por correo. Si se vence, el dominio entra en
  "período de gracia" y luego se **libera al público**. Mantener el correo al día.
- **Alternativa si se te ocurre otro nombre:** `serviciotecnicomacul.cl` y
  `macultech.cl` también estaban libres al 01-nov-2026. Pero `juanpabloia.cl`
  es **mejor a largo plazo**: la marca personal sirve para todos los servicios
  (web, PC, Android, remoto), no solo para Macul.

---

## Después de conectar el dominio: correo propio

Con el dominio ya en Netlify se puede tener **`contacto@juanpabloia.cl`** gratis
(plan gratuito de Zoho). No es obligatorio para la web, pero da imagen
profesional y se puede ofrecer como extra a clientes.

👉 Guía completa y errores a evitar: **`CORREO-DOMINIO.md`**.
