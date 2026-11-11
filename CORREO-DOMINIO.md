# Correo con dominio propio (Netlify + Zoho) — guía práctica

> **Estado: PENDIENTE.** Se aplica **después** de comprar el dominio
> (`juanpabloia.cl`, ver `DOMINIO-PENDIENTE.md`). Hoy la web usa el subdominio
> `juanpablomasia.netlify.app`, que **no sirve** para correo corporativo.

Esta guía es para **ti** (correo `contacto@juanpabloia.cl`) y luego se replica
igual para clientes. Escrita el 10-nov-2026.

---

## 0. Lo que hay que entender antes (evita el 90% de los errores)

1. **Netlify NO da buzones de correo.** Solo hospeda la web. El correo lo da un
   proveedor externo (Zoho, Google, etc.) y se conecta por **DNS**.
2. **Netlify quitó su integración de correo nativa** (sept-2026). Ya no se usa.
3. **El correo necesita dominio propio.** Un `.netlify.app` es de Netlify: no
   puedes tener `algo@tuproyecto.netlify.app` como correo corporativo.
4. ⚠️ **NUNCA copies los valores de MX/SPF/DKIM de un tutorial** (ni de esta
   guía) **letra por letra**. Los valores reales los entrega **tu proveedor**
   (Zoho) en su pantalla de configuración, porque dependen de tu región y tu
   cuenta. Esta guía te enseña **dónde mirarlos**, no te los inventa.
5. **Los cambios de DNS tardan 1 a 4 horas** (a veces más) en propagarse. No es
   que esté roto: es normal.

---

## 1. Prerrequisito: dominio conectado en Netlify

Antes de tocar correo, el dominio tiene que estar **funcionando en Netlify**:

1. Comprar `juanpabloia.cl` en **NIC Chile** (~$9.990/año) — pasos en
   `DOMINIO-PENDIENTE.md`.
2. En Netlify: **Domains → Add a domain** → escribir el dominio.
3. Netlify muestra **4 nameservers** (algo como `dns1.p0X.nsone.net`).
   → **Cópialos de la pantalla, no de aquí.**
4. En **NIC Chile → tu dominio → Servidores de nombre**: reemplazar por esos 4.
5. Esperar 1–4 h. Cuando `https://juanpabloia.cl` cargue la web, está listo.
6. Correr `./bin/cambiar-dominio.sh juanpabloia.cl` para dejar todas las URLs
   (canonical, sitemap, etc.) apuntando al dominio nuevo.

> **Nota:** Netlify gestiona el DNS del dominio (Netlify DNS). Ahí se agregan
> los registros de correo del punto 3.

---

## 2. Crear la cuenta de correo en Zoho (plan gratis)

1. Entrar a **https://www.zoho.com/mail/** → buscar el **plan gratuito**
   ("Forever Free Plan": 1 dominio, hasta 5 usuarios, 5 GB).
2. Registrarse con **el dominio** `juanpabloia.cl` y un correo personal
   (tu Gmail sirve como correo de recuperación).
3. Zoho pedirá **verificar la propiedad del dominio** con un registro **TXT**:
   - Te muestra un valor `zoho-verification=...`
   - **Cópialo tal cual** de la pantalla.

---

## 3. Agregar los registros DNS en Netlify

En **Netlify → Domains → tu dominio → DNS records → Add new record**.

> **Regla de oro:** cada valor se **copia de la pantalla de Zoho**, no de esta
> guía. Abajo van los *tipos* de registro y para qué sirve cada uno.

| # | Tipo | Nombre (Name) | Valor (Value) | Prioridad | Para qué |
|---|---|---|---|---|---|
| 1 | **TXT** | `@` (o vacío) | `zoho-verification=...` (lo da Zoho) | — | Verificar que el dominio es tuyo |
| 2 | **MX** | `@` | `mx.zoho.com` (o el que dé Zoho) | 10 | Recibir correo |
| 3 | **MX** | `@` | `mx2.zoho.com` (o el que dé Zoho) | 20 | Recibir correo (respaldo) |
| 4 | **MX** | `@` | `mx3.zoho.com` (o el que dé Zoho) | 50 | Recibir correo (respaldo) |
| 5 | **TXT** | `@` | `v=spf1 include:zoho.com ~all` | — | Que los correos NO caigan en spam (SPF) |
| 6 | **TXT** | `zoho._domainkey` | Código largo que da Zoho | — | Firma de autenticidad (DKIM) |

**Avisos importantes:**

- **Los MX varían por región:** `.com` (global), `.eu` (Europa), `.in` (India).
  Usa los que **Zoho te muestre**, no los de esta tabla.
- **El SPF (`v=spf1 ...`) es ÚNICO por dominio.** Si algún día usas otro
  proveedor para enviar (Resend, SendGrid para formularios), hay que **sumarlo
  en el mismo registro**, no crear un segundo SPF:
  `v=spf1 include:zoho.com include:resend.com ~all`
  Dos registros SPF distintos = falla la autenticación.
- **El DKIM** puede llamarse `zoho._domainkey` o llevar un selector distinto.
  Copia el nombre exacto que diga Zoho.

---

## 4. Verificar en Zoho

1. Volver a Zoho → **Verify** cada punto (propiedad, MX, SPF, DKIM).
2. Cuando estén en verde (puede tardar por la propagación), crear la casilla:
   - `contacto@juanpabloia.cl` (o `juan@`, `hola@`…).
3. Probar de punta a punta:
   - Enviar desde tu Gmail → a `contacto@juanpabloia.cl` (debe entrar).
   - Responder desde Zoho → al Gmail (debe llegar, no a spam).

---

## 5. Formularios (NO hace falta para la web propia)

- La web vende por **WhatsApp**; **no usamos formulario** (y es un argumento
  de venta: "formularios que nadie llena").
- **Solo si un cliente pide formulario** (el Sitio Pyme lo ofrece): usar
  **Netlify Forms** (gratis, sin backend):
  ```html
  <form name="contacto" method="POST" data-netlify="true">
    <input type="email" name="email" placeholder="Tu correo">
    <button type="submit">Enviar</button>
  </form>
  ```
  Luego en Netlify: **Site configuration → Forms → Form notifications → Add
  notification → Email**, y poner el correo que recibirá los avisos.
- Netlify Forms del plan gratis: **100 envíos/mes** (suficiente para pymes).

---

## 6. Para clientes (cuando toque)

**Recomendado: el cliente es dueño de su cuenta (Opción A).**
1. Pedirle acceso temporal a su **NIC Chile** y un correo personal.
2. Crear la organización de Zoho **con los datos del cliente**.
3. Apuntar los DNS del `.cl` del cliente a Netlify.
4. Agregar los registros de Zoho en el proyecto de Netlify del cliente.
5. Probar y **entregar las llaves** (contraseña definitiva + mini manual).

**Cobro sugerido:** extra de **configuración** (una vez), ~$15.000–25.000 por
"web + correo listos". **No** como mensualidad obligatoria todavía: el Zoho
gratis se administra por cuenta separada (no centraliza). Si llegan 5+ clientes,
ahí sí migrar a **Zoho Mail Lite** (~$1 USD/usuario/mes) y ofrecerlo como
mantención.

---

## 7. Errores que hay que evitar (de tutoriales malos)

| Error común | Correcto |
|---|---|
| MX `://zoho.com` | `mx.zoho.com`, `mx2.zoho.com`, `mx3.zoho.com` (según Zoho) |
| Crear 2 registros SPF | Un **solo** SPF, con todos los `include:` juntos |
| Copiar valores de un blog | Copiarlos de **la pantalla de Zoho** |
| Poner API Key en el frontend | Nunca; va en Netlify Functions (solo si hay envío dinámico) |
| Esperar correo al instante | El DNS tarda 1–4 h |

---

## 8. Pendientes

- [ ] Comprar `juanpabloia.cl` (ventana 15–20 nov).
- [ ] Conectar en Netlify + `cambiar-dominio.sh`.
- [ ] Crear Zoho gratis y configurar los 6 registros (valores desde Zoho).
- [ ] Probar ida y vuelta (Gmail ↔ Zoho).
- [ ] Documentar el resultado real aquí (quitar el "PENDIENTE" del encabezado).
