# Marketing y posicionamiento orgánico — resumen consolidado

> **Qué es esto.** Todo lo que la malla sabe sobre **publicidad y marketing
> orgánico del negocio**, reunido y verificado el **05-nov-2026** desde el nodo
> `a13`. Fuentes revisadas: el repo `juanpablomasia` (README, HALLAZGOS, PENDIENTES-SEO,
> `index.html`, `sitemap.xml`, `robots.txt`, `netlify.toml`, `avisar-buscadores.sh`,
> plugin IndexNow), `malla-memoria-comun.md` (bitácora del sitio + tabla de
> servicios), `~/contenido/` y `~/dev/pi-dropshipping-pack/` (marketing de
> dropshipping, **otra línea de negocio**), y verificación en vivo por HTTP.
>
> **Regla del repo:** acá va *qué se vende* (precios, textos, SEO, marketing).
> El método y los scripts van a `rustdesk-wlan-ssh-pi`.

---

## 0. ⚠️ Nombre: la web y el repo NO se llaman igual

> **Dato anotado por el operador el 05-nov-2026 — importante, no confundir.**

| Qué | Nombre |
|---|---|
| **La persona (operador)** | **Juan Pablo Fuentealba Bizama** (Macul, Chile) |
| **La web (marca)** | **Juan Pablo + IA** → https://juanpablomasia.netlify.app/ |
| **El repo de GitHub** | `juanpablofuentealba/juanpablomasia` (repo **público**) |

> **`juanpablomasia` = "Juan Pablo + IA".** *mas-ia* se lee *"más IA"* — es el
> **+ IA** de la marca, **no** un apellido. No escribir "Juan Pablo Masía".

- **Ya no existe una página "cachyos-chile"**. `cachyos-chile.netlify.app`
  responde **404** (verificado en vivo el 05-nov-2026).
- **El repo se llamaba `cachyos-chile` y se renombró a `juanpablomasia`**
  (05-nov-2026), por coherencia con la marca y el dominio. GitHub mantiene
  el redirect del nombre viejo.
- En textos de venta, anuncios y cualquier comunicación al cliente
  **se usa "Juan Pablo + IA"**, nunca el nombre del repo.

---

## 1. Lo esencial en 10 líneas

- Marca del sitio: **"Juan Pablo + IA"**. URL viva:
  **https://juanpabloia.cl/** (dominio propio desde el 11-nov-2026; el
  `.netlify.app` quedó como 301).
- El sitio **está publicado y sano** (HTTPS con Let's Encrypt propio, Brotli,
  HSTS, ~0,4 s de carga, 5+ páginas estáticas).
- El **on-page está bien resuelto**: 1 H1, meta description de 161 caracteres,
  canonical, JSON-LD `LocalBusiness` (9 ofertas) + `FAQPage` (13 preguntas),
  `sitemap.xml` y `robots.txt` correctos.
- **El problema no es la web, es la distribución:** el negocio depende de
  **Google orgánico + WhatsApp**.
- **Dominio propio ✅ HECHO (11-nov-2026):** **`juanpabloia.cl`** vivo, con
  HTTPS, 301 desde el `.netlify.app` y badge de Netlify eliminado.
- **Lo que falta ahora es `Search Console`:** dar de alta la propiedad, enviar
  el sitemap y pedir indexación. Es la palanca nº 1 pendiente.
- **IndexNow** (Bing/Yandex) ya debería funcionar con el dominio propio (antes
  daba **403** por ser subdominio `.netlify.app`): verificar en el próximo deploy.
- **Producto nuevo (11-nov):** **Sistemas y apps a medida desde $499.000**
  (ver **§2.1**) — el producto de mayor ticket; aún no publicado en el sitio.
- **Todo el tráfico orgánico de las guías es invisible:** GA4 está **solo en la
  home**; las 4 subpáginas no tienen Analytics.
- **Falta `404.html`** propia y **`lastmod`** en el sitemap (dos arreglos de
  bajo riesgo y bajo costo que aún no se hicieron).
- **Nada comprobado en móvil real**: el menú hamburguesa (H-01) se arregló, pero
  la revisión en pantalla chica del rediseño de nov-2026 sigue pendiente.
- **No hay estrategia orgánica fuera de Google**: sin Google Business Profile,
  sin redes activas enlazando, sin backlinks planificados.

---

## 2. La oferta que se publicita (los servicios, en orden de valor)

| # | Servicio | Precio | Modalidad |
|---|---|---|---|
| 1 | **Páginas web** + mantención | desde **$149.900** (landing) · **$249.900** (hasta 5 pág.) | 100% remoto |
| 2 | **PC presencial en Macul** (formateo + CachyOS + optimización) | **$44.900** (visita incluida) · **+$19.900** fuera de Macul | Presencial |
| 3 | **Android** (optimización / formateo con respaldo) | **$24.900** · **$29.900** | En Macul, solo software |
| 4 | **Soporte remoto** (RustDesk + Tailscale, Windows/Linux) | **$18.000/hora** | Remoto, todo Chile |
| 5 | **Sistemas y apps a medida** (agenda, clientes, cotizador…) — **NUEVO** | desde **$499.000** + **$29.900–49.900/mes** | 100% remoto |
| 6 | **Auditoría de código + informe** — **NUEVO** | **$300.000 – $800.000** | Remoto |
| 7 | **Automatización de un proceso** — **NUEVO** | **$500.000 – $1.500.000** | Remoto |
| 8 | **Módulo nuevo en sistema existente** — **NUEVO** | **$800.000 – $2.000.000** | Remoto |
| 9 | **🌟 Paquete "Negocio digital completo"** — **NUEVO** | **$499.000 – $699.000** | 100% remoto |

> El **#5** es el producto más caro de la línea pyme (evolución del #1), detalle
> en **§2.1**. Los **#6, #7 y #8** son la línea **empresa** (§2.2). El **#9** es
> el **paquete estrella** (web+dominio+correo+Google+kit), detalle en **§2.3**.
> Aún **no publicados** en el sitio (el #5, #6, #7 sí están vía sección web).

- Mantención mensual: **Plan Cuidado $9.900/mes** · **Plan Activo $19.900/mes**.
- Dominio propio: **$24.900/año** (+ configuración); `.cl` en NIC = **$9.990/año**.
- Marca de posicionamiento declarada: **100% software** (no abre equipos, no
  cambia piezas) · **Presencial en Macul, remoto en todo Chile**.
- CTA único del sitio: **WhatsApp** (`wa.me/56931232000`, mensajes precargados
  distintos por servicio) + botón **Mercado Pago** (`link.mercadopago.cl/tuemprendimiento`).
- **Hueco de catálogo detectado:** falta como 5º servicio *"el PC se cae / se
  apaga → diagnóstico + informe"*, que es justamente el producto **más probado**
  en la práctica (caso `rai`) y 100% remoto.
  > ✅ **Encaminado (05-nov-2026):** ya hay **guía publicada** (`/pc-se-apaga-solo/`)
  > que atrae ese tráfico. Falta venderlo como **servicio con precio**.

> El detalle de la oferta y su relación con la malla vive en
> `rustdesk-clientes/malla-memoria-comun.md` → *"🌐 El negocio en línea"*.

---

## 2.1 🆕 Producto NUEVO — **Sistemas y aplicaciones a medida** (el más caro del menú)

> **Decidido 11-nov-2026.** Es la **evolución natural** del servicio de páginas
> web y el producto de **mayor ticket** que la malla puede entregar con calidad
> real. **Todavía NO está en el sitio** (primero se valida con un cliente).

### Qué es (en una línea para el cliente)

> **"Si tu página web ya no te basta, te armo el sistema que ordena tu
> negocio: agenda, clientes, cotizador o control de stock, en tu navegador y
> con tu propia marca."**

No es una landing ni una tienda: es **software web que el cliente usa todos
los días** para operar. Aplicaciones típicas:

- **Agenda / reservas** (talleres, profesionales, consultas, clases).
- **Ficha de clientes** (quién es, qué se le hizo, cuándo vuelve).
- **Cotizador / presupuestos** que arma el PDF solo.
- **Control de stock / inventario** con alertas de reposición.
- **Panel de pedidos** o de trabajos en curso.
- **Facturación simple** o registro de pagos (sin integrar SII, solo control).

### Precio (el más alto del catálogo)

| Pieza | Precio | Notas |
|---|---|---|
| **App a medida (simple)** | **desde $499.000** | 1 módulo operativo, login, base de datos, panel administrable |
| **App a medida (con 2–3 módulos)** | **$790.000 – $1.190.000** | ej. clientes + agenda + cotizador |
| **Mantención mensual** | **$29.900 – $49.900/mes** | hosting, respaldos, cambios, soporte |
| **Capacitación** | **incluida** (1 sesión + video corto) | baja la reincidencia de dudas |

> **Por qué este precio:** en Chile el software a medida parte en
> **$500.000–$1.500.000** (ver §6). Con IA el costo de **producción** cae mucho
> para nosotros, pero **el valor para el cliente no baja**: paga por "me
> resuelve el proceso", no por las líneas de código.

### Qué incluye la entrega

- Aplicación web publicada en **tu dominio** (`.cl`, con HTTPS).
- **Base de datos** y respaldo automático.
- **Manual de uso** corto + **sesión de capacitación** (con video).
- **30 días de garantía** por bugs de lo entregado (no por features nuevas).
- **Revisión con egm/Goldfish** antes de entregar (H-91): el documento y el
  diseño se revisan adversarialmente. Es un filtro de calidad que casi nadie da.

### Cómo lo entrega la malla (por qué podemos)

- **Pi (en el MSI)** desarrolla el código y el diseño; el MSI tiene RAM/disco de
  sobra y el flujo `ssh msi-operador 'pi -p ...'` ya está montado.
- **egm/Goldfish** (H-91) revisa la especificación y detecta contradicciones.
- **Netlify** ya es nuestro hosting (dominio + HTTPS + deploy automático).
- **Restic** ya está configurado para respaldos (regla de respaldo de clientes).
- **Informes en PDF** (Chromium en el MSI), tamaño carta.

### Cómo se vende (texto y estrategia)

- **Puerta de entrada:** el cliente que **ya** tiene página web y pide "algo
  más". Se le ofrece como **evolución**: *"tu web capta, el sistema administra".*
- **CTA:** WhatsApp, mensaje precargado: *"Hola, quiero un sistema para ordenar
  mi negocio (agenda, clientes o cotizador)"* → **cotización** (no precio fijo
  al vuelo: cada app se cotiza).
- **Gancho comercial:** *"te lo dejo funcionando y te enseño a usarlo; tu
  información queda respaldada en tu propio sistema, no en un cuaderno."*
- **Recurrente:** la **mantención $29.900–$49.900/mes** es el premio a largo
  plazo (ingreso predecible).

### Límites honestos (lo que NO prometemos)

- **No vendemos más de lo que podemos mantener.** Prioridad: **1–2 clientes**
  bien atendidos antes que muchos con soporte flojo (un bug mal resuelto se
  come el día de un solo operador).
- **No es un ERP integral** (no contabilidad completa, no SII) en la versión
  inicial.
- **No es soporte 24/7.** Horario definido y canal único (WhatsApp).
- **No admite, en la primera versión, apps móviles nativas** (iOS/Android): es
  web responsive (se usa en el navegador del teléfono).

### Estrategia de validación — el "regalo" de Hormozi

> **Regla del operador:** el primer caso del producto #5 se **regala**, igual
> que se regaló la web de `matías`. La lógica (Hormozi, *$100M Offers*) es
> **dar valor primero**: el caso gratis produce **testimonio + referidos +
> caso de estudio**, que valen más que el primer cobro.

- **`matías` / Aconcagua NO es cliente de pago** — es el **cliente gratuito**
  de la web. Por eso **no** es "el candidato a quien cobrarle #5".
- **Cómo se usa a `matías`:** como **prueba social y referente** (ya figura en
  la web como "ejemplo real"). Si algún día se le ofrece el sistema, sería
  **otro regalo acotado** (un módulo simple, ej. cotizador), a cambio de
  **testimonio escrito + video corto + 2 referidos**.
- **Candidato para el #5 de pago:** un cliente **nuevo** que ya tenga web con
  nosotros (o que la compre junto con el sistema).

### Pendiente para publicarlo

- [ ] **Validar** el producto #5 con **un caso** (puede ser regalado): se
      construye un módulo simple, se entrega y se mide si el cliente lo usa.
      El "caso de validación" ideal es **una pyme real con operación diaria**
      (taller, consulta, constructora), **no** el `matías` gratuito como cobro.
- [ ] Si valida: **agregar sección al sitio** (`index.html` + JSON-LD `Offer`)
      y una guía que atraiga el tema ("software a medida para pymes").
- [ ] Actualizar `malla-memoria-comun.md` con el producto (una vez validado).

---

## 2.2 💼 Software para empresas — versión **aterrizada** (12-nov-2026)

> **Origen:** una propuesta generada con IA (Gemini) planteaba vender
> **"modernización de sistemas legacy con agentes"** a **$65.000 USD llave en
> mano** (ISO 27001/SOC2, equipos, 12–16 semanas). **No es vendible con lo que
> tenemos hoy** y varias afirmaciones serían **incumplibles o falsas**.
> Esta sección es la **versión real**: mismo norte (software es el mayor
> ticket), pero aterrizada a un solo operador + Pi.

### Por qué la propuesta original NO se puede vender tal cual

| Afirmación de la propuesta | Por qué no |
|---|---|
| "Paridad funcional al **100%**", cobertura "**>90%**", "**–60%** de tiempo" | Son **promesas medibles** que un cliente grande exige en contrato → penalidad/demanda si no se cumplen. Un legacy real **no** se migra en 12–16 semanas. |
| "**ISO 27001 / SOC2**" | Eso **se certifica**, no se declara. Es auditoría de meses y miles de USD. Ponerlo en una propuesta es humo y **expone legalmente**. |
| "Ejecución **local/VPC privada**, cero retención de código" | Falso con Pi/OpenRouter por defecto: el código **sale del perímetro** al llamar a la API. Para prometerlo haría falta un **modelo local** (no lo tenemos: el MSI no corre un LLM serio). |
| "**$65.000 USD ≈ $60M CLP** llave en mano" | Un cliente que paga eso exige **empresa, referencias, seguro, equipo**. No encaja con un operador solo. |
| "Pipeline de **4 agentes**" sobre el código del cliente | 12–16 semanas de dedicación casi full-time + soporte post-launch. **Sin el equipo, no se puede.** |

> **Trampa central:** un LLM escribe esa propuesta en 30 segundos, pero **no
> crea la empresa que la respalde.** Escribir es fácil; **entregar no existe.**

### Los 3 productos SÍ vendibles (alcance fijo, riesgo controlado)

| # | Producto | Qué es | Precio (CLP) | Plazo |
|---|---|---|---|---|
| **6** | **Auditoría de código + informe** | Documentar lo indocumentado, mapa de dependencias, deuda técnica y **riesgos**. Solo lectura, sin tocar producción | **$300.000 – $800.000** | 1–2 sem |
| **7** | **Automatización de un proceso** | "Tu equipo hace esto a mano N horas/semana → lo automatizo" (reportes, avisos, carga de datos, respaldos) | **$500.000 – $1.500.000** | 2–4 sem |
| **8** | **Módulo nuevo dentro de un sistema existente** | Reportes, integración, panel, sin tocar el *core* | **$800.000 – $2.000.000** | 3–6 sem |

- Todos con **alcance cerrado por escrito** (qué sí, qué no) y **entrega verificada**.
- Mantención/acompañamiento opcional: **$49.900 – $99.900/mes**.
- **Garantía:** 30 días por bugs de lo entregado (no por features nuevas).

> 📄 **Entregable listo del #6 (auditoría):** `marketing/entregable-auditoria-codigo.md`
> — índice del informe, cómo se cotiza por tamaño, reglas de oro y checklist de
> entrega. Es el **primer paso recomendado** de la línea empresa: bajo riesgo
> (solo lectura) y abre la puerta al #7 y #8.

### Reglas de oro para vender software grande

1. **Nunca llave en mano de un sistema completo.** Vender **Fase 1 sola**
   (auditoría + informe). Con los datos reales, **reevaluar** si el resto es viable.
2. **No prometer "100%" ni porcentajes** que no se puedan medir y garantizar.
3. **No declarar certificaciones** (ISO/SOC2). Máximo: *"buenas prácticas de
   confidencialidad"* + **NDA simple**.
4. **Privacidad de código:** trabajarlo **en el equipo del cliente** o en el
   nuestro con autorización escrita; **no** prometer "cero retención" si se usa
   API externa. Si el cliente lo exige, ahí **se evalúa un modelo local**.
5. **Un proyecto por vez** hasta tener más capacidad (un operador solo).

### Cómo se ve el techo aspiracional (a 6–12 meses)

La propuesta grande (migración legacy completa) queda como **meta**, no como
catálogo: se puede vender **el día que exista** (a) un **equipo** de 2–3
personas, (b) **certificaciones reales**, y (c) **experiencia demostrable** en
2–3 proyectos acotados. Antes de eso, se vende **Fase 1** y se aprende.

---

## 2.3 🌟 Producto listo — **"Negocio digital completo"** (paquete)

> **Creado 11-nov-2026.** Es la **idea A** del banco de ideas (§10.3): empaquetar
> todo lo que **ya sabemos hacer** en un solo servicio de ticket alto. **No
> cuesta más entregarlo** — son las mismas piezas que ya usamos para nosotros.
> **Aún NO publicado en el sitio.**

### En una línea (para el cliente)

> **"Te dejo tu negocio listo para vender por internet: página web, dominio
> propio, correo profesional y apareciendo en Google. Tú atiendes; yo dejo el
> resto funcionando."**

### Qué incluye (las 6 piezas)

| # | Pieza | Qué significa |
|---|---|---|
| 1 | **Página web** | Landing o sitio hasta 5 páginas, con WhatsApp, rápida y para celular |
| 2 | **Dominio propio** (`.cl`) | Su dirección real (ej. `sunegocio.cl`), registrada en NIC |
| 3 | **Correo profesional** | `contacto@sunegocio.cl` (Zoho gratis), configurado |
| 4 | **Google Business Profile** | Aparecer en Google Maps/búsqueda local |
| 5 | **Search Console + sitemap** | Que Google indexe y lo encuentre |
| 6 | **Kit de arranque** | 3 textos de venta (WhatsApp, bio, ficha) + guía de "qué hacer cuando llegue un cliente" |

**Extras opcionales (se suman):**
- Mantención mensual (**$29.900–$59.900/mes**, idea B).
- Publicación de contenido (guías/blog) para SEO.
- Correo con más casillas.

### Precio

| Opción | Precio | Incluye |
|---|---|---|
| **Negocio digital (landing)** | **$499.000** | Landing + dominio 1er año + correo + Google Business + Search Console + kit |
| **Negocio digital (sitio 5 pág.)** | **$699.000** | Todo lo anterior + sitio de hasta 5 páginas |
| **Renovación** (año 2+) | **$24.900/año** | Dominio + gestión (el resto sigue funcionando) |

> **Por qué este precio y no $249.900:** el cliente no compra "una web"; compra
> **"estoy en internet y me pueden encontrar"**. Un negocio local que aparece en
> Google y tiene correo propio **vale más** que una página suelta. Y **casi no
> cuesta más entregarlo** (ya dominamos las 6 piezas).

### Cómo se vende (texto y estrategia)

- **Ideal para:** negocio local que **no tiene nada** todavía (ni web, ni
  dominio, ni aparece en Google) o que tiene una web vieja abandonada.
- **CTA WhatsApp:** *"Hola, quiero dejar mi negocio listo para vender por
  internet (web + dominio + correo + Google)."*
- **Gancho:** *"en 1–2 semanas tu negocio aparece en Google, con página propia y
  correo profesional. Tú no llenas ningún formulario: yo hago el trabajo
  técnico."*
- **Escalera de valor:** este paquete es la **puerta** para vender luego
  mantención (B), sistemas (D) o auditorías (F).

### Qué NO incluye (para no prometer de más)

- **No** es tienda online con pagos (eso es la idea H, aparte).
- **No** es posicionamiento garantizado en Google (el sitemap **ayuda**; el
  SEO sostenido es contenido + tiempo).
- **No** incluye fotos ni identidad visual (el cliente las aporta).
- **No** incluye WhatsApp Business API ni bots (§10.1).

### Pendiente para publicarlo

- [ ] **Publicar en el sitio** como servicio de mayor ticket (`index.html` +
      JSON-LD). Hoy el sitio llega hasta $499.000 (apps); este llega a $699.000.
- [ ] **Cobrar** con parte adelantada (50% inicio, 50% entrega).
- [ ] Validar con el primer cliente (pedir testimonio al terminar).

---

## 3. Estado del sitio y del SEO (medido, no supuesto)

### 3.1 Lo que ya está bien

| Aspecto | Estado |
|---|---|
| Publicación | ✅ `https://juanpablomasia.netlify.app/` **200 OK** |
| On-page | ✅ 1 H1 (`Web y soporte técnico sin vueltas`), H2 por servicio, alt en imágenes |
| Meta description | ✅ 161 caracteres (antes 340 = muro) |
| Datos estructurados | ✅ `LocalBusiness` + 9 `Offer` + `FAQPage` (13 Q&A) |
| Canonical / `og:url` | ✅ apuntan a la URL nueva |
| `robots.txt` + `sitemap.xml` | ✅ 5 URLs correctas, dominio actualizado |
| Seguridad | ✅ HTTPS forzado, HSTS preload, `nosniff`, `SAMEORIGIN`, `referrer-policy` |
| Rendimiento | ✅ HTML 42 KB · sitio 1,6 MB · Brotli · TTFB ~0,31 s · carga ~0,44 s |
| Cache | ✅ HTML `max-age=0` · `assets/*` y `og-image` 1 año `immutable` |
| Rutas limpias | ✅ pretty URLs + 301 automáticos, sin redirects manuales |
| Móvil | ✅ menú hamburguesa CSS-only (H-01, antes el menú era **invisible** en ≤820px) |
| Analytics | ✅ GA4 `G-CNV88M2Q9N` en la **home** |

### 3.2 Lo que falta o está roto (por orden de impacto)

| # | Problema | Impacto | Riesgo de arreglarlo |
|---|---|---|---|
| **B1** | **Sin Google Search Console** → el sitio probablemente **no está indexado** | 🔴 Máximo: sin indexar, el orgánico es 0 | — (requiere clic del operador) |
| **B2** | **Sin dominio propio** (`.netlify.app` = poca autoridad y 403 en IndexNow) | 🔴 Alto | — (compra + ~30 min de config) |
| **H-05** | **GA4 solo en la home**; las 4 guías no miden nada | 🟠 Alto: ciegos justo en el contenido que más atrae orgánico | 🟢 Bajo (copiar el bloque) |
| **B6** | Hero sigue mezclando dos públicos (**negocio/web** vs **mi PC personal**) | 🟠 Medio: diluye el mensaje y el CTA | 🟢 Bajo (decisión A+B ya tomada, falta ejecutar) |
| — | **Sin revisión en móvil real** del rediseño de nov-2026 | 🟠 Medio: el grueso del tráfico web es móvil | 🟢 Nulo |
| **H-06** | **404 genérica de Netlify** (con marca Netlify) | 🟡 Bajo-medio: imagen poco profesional, se pierde el CTA | 🟢 Bajo (`404.html`) |
| **H-07** | **`sitemap.xml` sin `lastmod`** | 🟡 Bajo-medio: se pierde una señal de re-rastreo | 🟢 Bajo (ideal automatizar con fecha del commit) |
| **B4** | **Sin Google Business Profile** (búsqueda local "servicio técnico Macul") | 🟠 Medio: es gratis y refuerza lo local | 🟢 Bajo |
| **B4** | Sin backlinks ni redes enlazando | 🟡 Bajo-medio | 🟢 Bajo |
| **H-04** | El *ping* de sitemap a Google/Bing **ya no existe** (404/410) | — (informativo: no perder tiempo en eso) | — |

### 3.3 Riesgos de operación del hosting (afectan la publicidad)

- **Plan Free = 300 créditos/mes compartidos por TODA la cuenta.** Con ~42 KB
  por página, 1.000 visitas ≈ 1,7 créditos → aguanta decenas de miles de visitas.
  Pero **si un sitio de cliente se dispara, se pausan TODOS** (los visitantes ven
  "Site not available"). **Mitigación: una cuenta Netlify por cliente.**
- Un proyecto de cliente con **>~11.000 visitas/mes** conviene pasarlo a
  **Personal ($9/mes ≈ $9.000 CLP)**.
- **Cache del `og-image` a 1 año**: si algún día se cambia la imagen hay que
  **renombrarla o subir el `?v=`**, o WhatsApp/Facebook seguirán mostrando la vieja.

---

## 4. Las 4 cosas que realmente mueven la aguja

Ordenadas por relación **impacto / esfuerzo**:

1. **Dominio `.cl` propio** — **`juanpabloia.cl`** (elegido por el operador el
   10-nov-2026, **verificado LIBRE** en el whois de NIC Chile).
   **Por qué no `juanpablomasia.cl`:** ese nombre (= "Juan Pablo + IA") **se lee
   como apellido "Masía"**, y **Google/ Bing / las IA lo leen así** (no leen
   repos privados). `juanpabloia` es más corto y se entiende solo. El
   `juanpablomasia.cl` también está libre: opcional, como redirección.
   ~~`serviciotecnicomacul.cl`~~ también estaba libre, pero se prefiere la marca
   personal: sirve para todos los servicios, no solo para Macul. $9.990/año, se inscribe a nombre del
   operador con RUT (el agente **no puede** comprarlo: pago con tarjeta +
   identidad + NIC no tiene API).
   *Al tenerlo se desbloquea:* autoridad ante Google, **IndexNow deja de dar
   403**, redirect 301 desde el `.netlify.app`, `canonical`/`og:url`/`sitemap`/
   JSON-LD al dominio nuevo → todo eso **sí lo puede hacer el agente**.
2. **Google Search Console** — 5 minutos con la cuenta Google del operador.
   Verificación fácil por **GA4** (ya está instalado) o etiqueta HTML. Después:
   enviar el sitemap + "Solicitar indexación" en las 5 páginas.
3. **Instrumentar las 4 guías con GA4** — hoy el contenido que más puede atraer
   búsquedas orgánicas (*cómo instalar CachyOS*, *Linux vs Windows*, *revivir un
   PC viejo*) es **invisible** en Analytics.
4. **Contenido local + prueba social** — Google Business Profile (Macul) con
   fotos y horario; enlazar el sitio desde redes; mostrar el **ejemplo real**
   (`matias-electricista.netlify.app`) que ya está publicado y funcionando como
   credencial.

---

## 5. Activos de marketing que ya existen (y cómo se conectan)

| Activo | Dónde | Uso |
|---|---|---|
| **Sitio comercial** "Juan Pablo + IA" | repo `juanpablomasia` → Netlify (`juanpabloia.cl`) | Escaparate principal, precios a la vista |
| **4 guías orgánicas** (CachyOS, Linux vs Windows, revivir PC viejo, índice) | `/guias/`, `/como-instalar-cachyos/`, `/linux-vs-windows/`, `/revivir-pc-viejo-con-linux/` | Imán de tráfico: responden búsquedas reales de gente que **ya** busca soluciones Linux |
| **📣 3 clientes gratuitos** (estrategia Hormozi: **dar valor primero**) | ver **§5.1** abajo | Testimonios, casos de estudio y **referidos**. Son la prueba social del negocio |
| **Ejemplo real publicado** | `matias-electricista.netlify.app` (cliente `matías`, construcción) | Prueba social en la sección "¿Quién está detrás?" (`#quien-soy`) |
| **Kit público (vitrina)** | `rustdesk-wlan-ssh-pi-vitrina` | Marketing del *método*, sin datos de clientes |
| **Repos públicos técnicos** | `zte-blade-a54-debloat`, `android-debloat-log`, `pi-android-pack`, `antiacaros-uv`, `commitpilot` | Backlinks naturales y autoridad técnica del autor |
| **Pack de contenido dropshipping** | `~/dev/pi-dropshipping-pack/`, `~/contenido/` | **Otra línea de negocio** (TikTok/UGC, ads, WhatsApp). Plantillas de ganchos, ángulos y cumplimiento Ley 19.496 **reutilizables** para promocionar los servicios técnicos. |
| **WhatsApp** (`wa.me/56931232000`) | Todos los CTA | Canal de conversión real: el sitio no vende, **agenda** |

---

## 5.1 Los 3 clientes gratuitos (regalo / "dar valor primero")

> **Estrategia del operador:** los primeros clientes se atienden **gratis**
> (Hormozi, *$100M Offers*: dar valor antes de cobrar). A cambio se busca
> **testimonio + caso de estudio + referidos**, no dinero. Son **3**, en rubros
> distintos, y cada uno aporta algo distinto.

| # | Cliente | Rubro / servicio | Estado | Qué falta (compromiso) | Valor que aporta |
|---|---|---|---|---|---|
| 1 | **Claudia** (madre de `rai`) | **Soporte remoto** — Windows (notebook HP Omen) | ✅ **Terminado** | — (ya entregó) | **Testimonio real publicado** (`#testimonios`) |
| 2 | **Andrea** (vecina, Macul) | **Instalación CachyOS** — Lenovo Yoga 330 de regalo a su hijo | ✅ **Equipo entregado** (07-nov) | Seguimiento (¿lo usa? ¿problemas?) + **testimonio** | Caso de **migración a Linux** real y cercano |
| 3 | **Matías** / Aconcagua | **Página web** (constructora) | ✅ Web publicada | ⚠️ **Matías NO se compromete al 100%**: no tiene tiempo. El sitio está listo pero le falta que lo use/difunda | **Ejemplo real** ya en la web + guía para otros rubros |

### Qué hacer con cada uno (acciones)

- **Claudia:** ✔ nada pendiente. Su testimonio ya está en la web. Si algún día
  necesita algo, atenderla bien (es la referencia nº 1).
- **Andrea:** hacer un **seguimiento liviano** (¿el hijo usa el Yoga? ¿algo no
  funciona?) y **pedirle un testimonio corto**. Un caso "PC viejo que revive con
  Linux" vende el servicio #2.
- **Matías:** ⚠️ el cuello de botella es **su falta de tiempo**, no la web. Opciones:
  - **No insistir con el sistema #5** hasta que se comprometa (regalar software
    a alguien sin tiempo = soporte sin retorno).
  - **Ayuda concreta y corta** que le quite trabajo a él: cargarle el dominio,
    conectar su **Google Business** o dejarle el sitio "listo para difundir".
  - **Pedirle 1 referido** de su red (constructoras, maestros, clientes suyos)
    → ese sí es un cliente potencial de pago.

> **Regla de la estrategia:** el regalo **solo** rinde si termina en
> **testimonio, caso o referido**. Sin el compromiso del cliente, el regalo se
> vuelve **costo** (soporte gratis indefinido). Por eso: **acotar el regalo** y
> **pedir explícitamente** la contraparte.

---

## 6. Contexto competitivo y de precios (01-nov-2026)

| Servicio | Mercado Chile | Nuestro precio |
|---|---|---|
| Landing page | $250.000 – $350.000 | **$149.900** |
| Sitio de servicios | $350.000 – $550.000 | **$249.900** |
| Sitio corporativo pyme | $400.000 – $900.000 | — |
| Tienda online | $500.000 – $800.000+ | — |
| **Software / app a medida** | **$500.000 – $1.500.000+** | **desde $499.000** (+ $29.900–49.900/mes) |
| **Auditoría de código legacy** | **$500.000 – $2.000.000+** | **$300.000 – $800.000** |
| **Migración legacy completa (llave en mano)** | **$30M – $60M CLP+** (equipos, meses) | ❌ **no vendible hoy** (ver §2.2) |
| Mantención web mensual | $30.000 – $150.000 | **$9.900 / $19.900** |
| Dominio `.cl` | $9.990/año (NIC) | $24.900/año al cliente |

**Lectura:** estamos **muy por debajo** del mercado en web y mantención
(estamos al 40–60% del piso). Eso sirve para entrar, pero **deja margen para
subir** cuando haya 2–3 casos publicados y el dominio propio. El dominio a
$24.900 es sano (2,5× el costo).

**Nicho local (salud, Macul):** CESFAM Dr. Félix de Amesti + COSAM Macul
(Corporación Municipal de Desarrollo Social de Macul, `corpomunimacul.cl`),
puerta técnica probable **DITEC**. Windows 10/11 en dominio (SIGGES lo exige).
**Oferta honesta: diagnóstico + arreglo con informe**, no "mantener arriba".
Contactos en `rustdesk-clientes/investigacion/macul-contactos-salud.md`.

---

## 7. Pendientes de marketing (checklist accionable)

**Operador (no delegable):**
- [x] Comprar **`juanpabloia.cl`** en NIC Chile — **hecho 10-nov-2026**.
      ✅ Dominio vivo (11-nov): HTTPS, 301 y badge fuera. Ver `DOMINIO-PENDIENTE.md`.
- [ ] Alta en **Google Search Console** (verificación por GA4) + enviar sitemap
      + solicitar indexación de las 5 URLs. ← **palanca nº 1 pendiente**.
- [ ] **Correo propio `contacto@juanpabloia.cl`** (Zoho gratis): los 6 registros
      DNS en Netlify DNS. Guía: `CORREO-DOMINIO.md`.
- [ ] **Google Business Profile** (Macul): categoría, horario, fotos, WhatsApp.
- [ ] Revisar el sitio en **su celular** y decir qué se ve mal.
- [ ] **Validar el producto nuevo (apps a medida, §2.1)**. El **primer caso se
      regala** (Hormozi: dar primero) a cambio de **testimonio + referidos**;
      `matías` ya es el cliente gratuito de la web (no se le cobra). Si valida →
      publicar sección en el sitio.
- [ ] Aprobar el **ciclo de automatización** (sección 8.6) y qué puede publicar
      el agente solo y qué pasa siempre por su revisión.

**Agente (autónomo, bajo riesgo):**
- [x] **GA4 en las 4 subpáginas** (H-05) — hecho 05-nov-2026.
- [x] **`404.html`** propia con CTA a WhatsApp (H-06) — hecho 05-nov-2026.
- [x] **`lastmod`** en el sitemap (H-07) — hecho 05-nov-2026.
- [x] **`llms.txt`** y `author` real en el JSON-LD — hecho 05-nov-2026.
- [ ] Ejecutar la **decisión A+B del hero** (B6-bis) y validar `#modalidades`.
- [x] **Dominio propio (11-nov-2026):** `juanpabloia.cl` conectado, 301 desde el
      `.netlify.app`, 89 URLs actualizadas, HTTPS y badge fuera (PRs #52–#57).
      → **Pendiente menor:** verificar **IndexNow** en el próximo deploy con el
      dominio propio (antes daba 403).
- [ ] **Publicar el producto nuevo (apps a medida, §2.1)** en el sitio *si el
      operador valida con un cliente* (`index.html` + JSON-LD `Offer` + guía).
- [ ] Quitar `NETLIFY_BADGE=false` de `netlify.toml` (opcional; el panel ya
      resolvió el badge).
- [ ] Actualizar las **URLs viejas del host** en los `.md` de docs a
      `juanpabloia.cl` (README, HALLAZGOS).
- [x] **Guía nº 5 publicada 05-nov-2026:** *"Mi PC se apaga solo: 7 causas y cómo
      saber cuál es"* → `/pc-se-apaga-solo/`. Es el tema que **más gente busca**
      y el que corresponde al servicio que aún no se vende.

> 🔎 Detalle de automatización con agentes y plan por etapas: **sección 8**.

---

## 8. Marketing orgánico automatizado asistido por agentes

> Investigado el **05-nov-2026**. Aquí va **cómo la malla puede producir y
> mantener su marketing orgánico con agentes** (Pi), sin depender de que el
> operador se siente a escribir. Es un mapa de diseño, no una receta mágica:
> lo que ya tenemos, lo que se puede automatizar y dónde están los límites.

### 8.1 Qué significa "orgánico automatizado" (y qué no)

| ✅ Sí se puede automatizar con agentes | ❌ No se debe (o no resulta) |
|---|---|
| Escribir y refrescar **contenido** (guías, FAQ, textos) | "Hackear" posiciones o comprar backlinks |
| **Medir** (GSC, GA4, rankings) y **reportar** lo que se movió | Publicar en masa sin revisión humana |
| **Detectar** oportunidades (búsquedas sin responder) | Spamear en Meta/TikTok (viola términos) |
| **Ejecutar** la parte técnica (metadata, JSON-LD, sitemap, `llms.txt`, 301) | Inventar reseñas, testimonios ni stock |
| **Redactar borradores** de anuncios/guiones y entregarlos listos | Decir "elimina el 100%" / prometer resultados |
| **Vigilar** que el sitio no se rompa (deploy, 404, enlaces) | Responder reseñas/comentarios con bots |

**Regla de oro del operador:** el agente **investiga y prepara**, el operador
**decide y publica**. Base legal: **Ley 19.496** (publicidad engañosa) y términos
de Meta/TikTok (ya está escrita en
`pi-dropshipping-pack/skills/dropshipping-chile/SKILL.md`).

### 8.2 Las 5 capas del sistema (de abajo hacia arriba)

**Capa 1 — Fundamentos técnicos (agente, sin riesgo).** Es lo que los buscadores
necesitan para *poder* indexar y rankear. Hoy está casi todo:

| Pieza | Estado (05-nov-2026) |
|---|---|
| `robots.txt` + `sitemap.xml` | ✅ 200 OK, 5 URLs |
| JSON-LD por tipo de página | ✅ `LocalBusiness`+`Offer`+`FAQPage` (home), `HowTo` (cachyos), `Article` (linux-vs-windows, revivir-pc), `CollectionPage` (guias) |
| Meta description / canonical / OG | ✅ en las 5 páginas |
| **`llms.txt`** (mapa del sitio para LLMs) | ✅ **creado 05-nov-2026** (200, `text/plain`) |
| **`lastmod`** en sitemap | ✅ hecho 05-nov-2026 (`bin/generar-sitemap.sh`) |
| **`404.html`** propia | ✅ hecho 05-nov-2026 |
| **GA4 en subpáginas** | ✅ hecho 05-nov-2026 (5 de 5) |
| **Search Console** | ❌ sin alta (paso del operador) |
| **Dominio propio** | ⏳ `juanpabloia.cl` **LIBRE**, todo preparado — ver `DOMINIO-PENDIENTE.md` |
| **Skill de marketing** | ✅ `marketing-juanpablo` instalada (Etapa 2) |

> **Aporte nuevo de esta investigación:** el JSON-LD por tipo de página **ya está
> hecho** (algo que `HALLAZGOS.md` no registraba) — falta *alimentarlo* con
> datos reales: `datePublished`/`dateModified` verdaderos y `author`.

**Capa 2 — Captura de señales (medición).** Sin esto no hay automatización:
el agente no puede "ver" qué funciona. **GSC + GA4** son la fuente. La
automatización real es *leer* esas exportaciones y sacar conclusiones
(palabras que traen gente, páginas con impresiones altas y CTR bajo = título
malo, consultas sin página que las responda = contenido que falta).

**Capa 3 — Producción de contenido (agente, con revisión).** Es donde el
agente rinde más. El patrón ya existe en `pi-dropshipping-pack`:
*encuadre → AIDA → ángulos → guion → checklist de cumplimiento*. Reutilizable
para el negocio técnico con otra voz.

**Capa 4 — Distribución y ejecución (agente).** Web es solo una parte:
Google Business Profile, WhatsApp como canal de conversión, y la vitrina pública
como backlink natural.

**Capa 5 — Ciclo de mejora (agente + cron).** Medir → escribir → publicar →
volver a medir. En **a13 ya hay `crond` (runit) corriendo** con jobs cada 15
min, así que la infraestructura para tareas programadas **ya existe**.

### 8.3 El patrón concreto: cómo se automatiza con Pi hoy

Piezas de Pi que ya están instaladas y sirven para esto:

| Pieza | Cómo se usa para marketing |
|---|---|
| **`pi --print "..."`** (modo no interactivo) | Un job de cron que produce un informe de una sola pasada, sin abrir TUI |
| **`pi --mode json`** | Registro estructurado (JSONL) de lo que hizo el agente → auditable |
| **Skills** (`skills.md`) | Encapsular el *workflow* de marketing: se cargan solo cuando la tarea lo pide |
| **Prompt templates** | `/producto`, `/anuncios`, `/tiktok`, `/banner`, `/whatsapp` ya escritos en el pack |
| **Extensiones** | Ejecutar la parte repetitiva (validar JSON-LD, actualizar sitemap) |
| **MCP** (`mcp.md`) | Conectar GA4/GSC/Dropi como herramientas del agente |
| **`codemode`** | Correr en un solo script varias comprobaciones (¿sitemap 200? ¿`llms.txt`? ¿enlaces rotos?) y devolver solo el resumen |
| **Cron de runit (a13)** | Disparar el ciclo semanal/mensual sin operador presente |

**Ciclo propuesto (semanal, en a13):**

```
1. codemode  → salud técnica: sitemap/robots/llms.txt/404/enlaces/JSON-LD válido
2. GSC+GA4   → top consultas, CTR bajo, páginas sin tráfico, consultas huérfanas
3. agente    → propone 1-3 acciones (título nuevo / sección FAQ / guía nueva)
4. agente    → redacta el borrador + el cambio técnico exacto (diff)
5. operador  → aprueba por WhatsApp/sesión (1 min)
6. agente    → rama + PR + verificación + deploy
7. registrar → qué se hizo y qué se espera medir la próxima semana
```

### 8.4 Qué NO se automatiza con agentes (límites duros)

1. **Autoridad real.** Google no premia "volumen producido por IA": premia
   contenido **útil, verificable y de una fuente real**. El sitio tiene ventaja
   única acá: **casos reales** (`rai`, `matías`) — eso no lo puede generar un
   agente, solo el operador.
2. **Cuentas.** Search Console, Business Profile, NIC Chile y Meta requieren
   **identidad del operador**. El agente guía, no suplanta.
3. **Publicar sin revisar.** Un agente que publica solo **destruye la marca** en
   un error. Siempre PR + revisión.
4. **Promesas.** Nada de "garantizado", "100%", "cura": Ley 19.496.
5. **Reseñas.** Se piden y se muestran reales; no se escriben.

### 8.5 Gaps concretos que esta investigación reveló

| Gap | Por qué importa | Quién |
|---|---|---|
| **Sin `llms.txt`** (404) | Los asistentes IA (ChatGPT, Perplexity, Copilot) son hoy una **fuente real de tráfico orgánico**. Un `llms.txt` le dice a esos asistentes qué hay en el sitio y cómo citarlo. Es texto plano, riesgo cero. | Agente |
| **`dateModified` falso/genérico** | Los buscadores y los LLMs premian *frescura real*. Hay "2026" en todas las páginas: sin fecha exacta no se distingue lo actual. | Agente |
| **Sin `author`/`publisher` real** en el JSON-LD de las guías | Es la señal de **E-E-A-T** (experiencia real). El operador *sí* tiene experiencia: hay que declararla. | Agente |
| **Sin medición de subpáginas** | Sin GA4 en las guías, el ciclo completo no tiene entrada. | Agente |
| **Sin `Marketing` en el flujo de Pi** | El pack de dropshipping tiene skill; el negocio técnico **no tiene su propia skill de marketing**. Hoy el conocimiento vive en `MARKETING.md`, que es pasivo. | Agente |
| **Cron sin job de marketing** | Hay 3 jobs (watchdog, relé WoL, sync HP) pero **ninguno** mide ni reporta la web. | Agente |

### 8.6 Plan por etapas (lo que se puede empezar ya)

**Etapa 0 — Cimientos (agente, 1 sesión, reversible):** ✅ **HECHA 05-nov-2026 (PR #28)**
- [x] `llms.txt` en la raíz (mapa del sitio en texto plano para asistentes IA).
- [x] `lastmod` real en `sitemap.xml`, generado desde la fecha del commit.
- [x] `404.html` propia con CTA a WhatsApp.
- [x] GA4 en las 4 subpáginas (cierra H-05).
- [x] `author`/`publisher` + `dateModified` reales en el JSON-LD.
- [x] Fecha visible exacta en las guías (antes decía "Actualizado 2026").
- [x] Plugin IndexNow apuntando al host correcto (estaba en el dominio muerto).

> Verificado en producción: `llms.txt` 200 · 404 propia · 5 `lastmod` ·
> GA4 en las 5 páginas · `author: Person` en las 3 guías.

**Etapa 1 — Ojos (operador + agente):**
- [ ] Search Console (verificación por GA4) + enviar sitemap.
- [ ] Exportar/consultar GSC y GA4; primer informe de "qué trae gente".

**Etapa 2 — Skill de marketing del negocio:** ✅ **HECHA 05-nov-2026**
- [x] Skill **`marketing-juanpablo`** en `skills/marketing-juanpablo/`:
      voz de la marca (tuteo chileno), precios vigentes en `references/oferta.md`,
      checklist de cumplimiento Ley 19.496 en `references/checklist.md`.
- [x] Instalador multi-nodo: `./bin/instalar-skill.sh [--malla|--check]`.
- [x] Instalada en a13 (a16/msi/hp se sincronizan con `--malla` al estar arriba).

**Etapa 3 — Ciclo automático (cron de a13):** ✅ **HECHA 05-nov-2026**
- [x] **`bin/auditar-sitio.sh`** — auditoría técnica determinista (HTTP de 10
      rutas + 404 real, enlaces internos rotos, JSON-LD válido, GA4, canonical/
      og:image/description, sitemap, robots, Googlebot, token de Search Console,
      peso del HTML). Modos `--json` y `--quiet`. **No usa IA**: es barata,
      rápida y no miente.
- [x] **`bin/marketing-semanal.sh`** — orquesta: corre el auditor, junta el
      informe previo y las guías, y llama a `pi --print` para PROPONER acciones.
      **Escribe solo en `~/informes/marketing/AAAA-MM-DD.md` y `ULTIMO.md`** y
      avisa a a16. **No publica, no hace push, no abre PR.**
- [x] **Cron en a13: lunes 10:00** (`cron-run.sh "marketing-semanal"`).
      Opciones: `--sin-ia` (solo auditoría) y `--dry-run`.
- [ ] El operador revisa `~/informes/marketing/ULTIMO.md`; lo aprobado se
      convierte en PR. (Ciclo humano, por diseño.)

**Etapa 4 — Dominio propio `juanpabloia.cl`** (verificado LIBRE en NIC, 05-nov-2026):
- [x] `bin/cambiar-dominio.sh` listo: cambia las **66** apariciones del host
      (canonical, OG, Twitter, JSON-LD, sitemap, robots, llms.txt, IndexNow).
- [x] Redirección 301 escrita en `netlify.toml` (comentada, se activa al conectar).
- [ ] **Operador:** comprar en NIC Chile ($9.990/año) y conectar en Netlify.
      Pasos exactos en **`DOMINIO-PENDIENTE.md`**.
- [ ] Al conectar: correr `./bin/cambiar-dominio.sh juanpabloia.cl`,
      descomentar el 301 y **reintentar IndexNow** (deja de dar 403).

### 8.7 La advertencia importante

El marketing orgánico automatizado **multiplica lo que ya hay**, no crea
resultados de la nada. Si el sitio no está indexado (hoy **probablemente no lo
está**: sin Search Console), automatizar contenido es **llenar un balde sin
fondo**. **Orden correcto: primero cimientos y medición (Etapas 0 y 1), después
producción.**

Además: el contenido generado por IA **sin experiencia real encima** se detecta
y no posiciona. El activo que ningún competidor puede copiar es el archivo de
**casos reales resueltos** (rai, matías, los hallazgos H-01..H-86 del kit). La
tarea del agente es **empaquetar** ese conocimiento, no inventarlo.

---

## 9. Datos duros para citar (verificados el 05-nov-2026)

```
https://juanpablomasia.netlify.app/          -> 200  (URL viva)
https://cachyos-chile.netlify.app/           -> 404  (vieja, muerta — NO usar)
marca del sitio      -> "Juan Pablo + IA" (el repo se llama juanpablomasia)
https://matias-electricista.netlify.app/     -> 200  (ejemplo real)
sitemap.xml  -> 5 URLs, dominio actualizado, 0 lastmod
robots.txt   -> Allow: / + sitemap
llms.txt     -> 200  (creado 05-nov-2026)
subpáginas con GA4 -> 4 de 4 (05-nov-2026)
404.html     -> propia, con CTA a WhatsApp (05-nov-2026)
sitemap      -> 5 lastmod reales (05-nov-2026)
JSON-LD por página  -> LocalBusiness/Offer/FAQPage · HowTo · Article · CollectionPage
IndexNow     -> 403 UserForbiddedToAccessSite (subdominio .netlify.app)
dominio .cl  -> juanpabloia.cl LIBRE (whois.nic.cl, 05-nov-2026)
a13          -> crond (runit) activo; pi --print / --mode json disponibles
```

---

*Consolidado por Pi (nodo `a13`) el 05-nov-2026. Etapa 0 ejecutada el mismo día (PR #28). Si cambia un precio, un texto
de venta o el estado SEO, **actualizar este archivo** — es la referencia que
debe leer cualquier nodo antes de proponer ideas de marketing.*

---

## 10. Ideas a futuro (backlog — NO implementar sin decisión)

> Cosas evaluadas y **postergadas**. Se guardan para cuando haya capacidad,
> cliente o presupuesto. **No son oferta actual.**

### 10.1 Chatbot / asistente de WhatsApp (idea de Meta, 11-nov-2026)

**Qué es.** Un bot que atiende consultas y agenda por WhatsApp, 24/7.
Meta propuso un kit ("chatbot_whatsapp_kit") con precios alineados
($249.900 implementación + $29.900/mes).

**Por qué NO ahora (riesgos reales):**

1. **Requiere número DEDICADO nuevo.** Usar el `+56 9 3123 2000` personal en un
   bot **arriesga ban del número** (Meta detecta automatización). La malla ya
   evitó esto antes (H-87 del kit).
2. **No es "pegar un token".** La **WhatsApp Cloud API** exige: cuenta **Meta
   Business verificada**, número dedicado y aprobación. Además, solo se puede
   responder dentro de **24 h** de un mensaje del cliente (o con plantillas
   aprobadas en frío).
3. **"Guardar en Google Sheets vía webhook" no existe así.** Sheets no recibe
   webhooks: hay que usar **Google Apps Script Web App** o la **Sheets API**.
4. **El "kit" que da Meta es un HTML de DEMO**, no un bot funcional. La demo se
   ve linda; el producto real es otro.
5. **Hosting 24/7:** el webhook debe estar en una URL pública (Render, Railway,
   Fly.io o VPS). No basta local.

**Versión aterrizada (si algún día se hace):**

- **Asistente en la WEB** (widget de chat en el sitio) que responde FAQ y agenda
  → **sin riesgo de ban**, entregable como parte del #5/#7.
- El **bot de WhatsApp real** solo con **número dedicado** + Cloud API +
  hosting, como proyecto aparte y más caro.

**Si se decide hacerlo:** proyecto Node.js con Express (GET verificación / POST
webhook), flujo con botones interactivos (Cotizar / Agendar / Trabajos /
Humano), guardado de leads en `leads.json` (+ Sheets opcional vía Apps Script),
derivación a humano, español chileno. **Construir cuando haya cliente y número
dedicado.**

### 10.2 Otras ideas postergadas

- **Migrar clientes a Linux** ("andaría como seda"). ⚠️ En salud NO se puede lo
  que corra SIGGES/Rayen (Windows-only). Ver `~/research/migracion-linux-clientes.md`.
- **Bot de avisos propio** — descartado por riesgo de ban (H-87).

### 10.3 Banco de ideas de ticket alto (brainstorming 11-nov-2026)

> Ordenadas por **ticket × facilidad de vender**. Se marcan las **entregables
> hoy** con lo que ya tenemos (Pi + MSI + web + soporte). **No son oferta
> publicada** salvo que se diga.

#### 🟢 Nivel 1 — Entregables YA, sin infraestructura nueva

| # | Idea | Ticket | Estado |
|---|---|---|---|
| A | **Paquete "negocio digital completo"** (web+dominio+correo+Google Business+Search Console+textos) | **$499.000 – $699.000** | ✅ **producto listo** (§2.3) |
| B | **Mantención con monitoreo** (vigilancia + respaldos + informe mensual) | **$29.900 – $59.900/mes** | 🔧 casi listo (scripts ya existen) |
| C | **"PC que no se cae" para empresas** (diagnóstico+arreglo+informe+30 días garantía) | **$199.000 – $350.000** | ✅ caso `rai` probado |

#### 🟡 Nivel 2 — Requieren algo más de trabajo

| # | Idea | Ticket | Nota |
|---|---|---|---|
| D | **Panel/portal para colegios y pymes** (lista de curso, comunicaciones, inventario…) | **$800.000 – $2.000.000** | encaja en #5/#8 |
| E | **Migración a Linux para empresas** (Windows 10 sin soporte) | **$500.000 – $1.500.000** | ⚠️ no donde corra SIGGES/Rayen |
| F | **Auditoría de seguridad / respaldos** (¿sobrevive si muere un disco?) | **$400.000 – $900.000** | restic ya probado |

#### 🔴 Nivel 3 — Cliente grande o tiempo

| # | Idea | Ticket | Nota |
|---|---|---|---|
| G | **Consultoría técnica fraccional** (ser su "departamento de TI") | **$150.000 – $400.000/mes** | recurrente alto, exige disponibilidad |
| H | **Integración de pagos en su web** (Mercado Pago/Webpay) | **$600.000 – $1.200.000** | aprender la integración una vez |
| I | **Dominio + correo profesional para pymes** (como el nuestro) | **$99.000 – $149.000** | puerta de entrada a #1 y #4 |

#### ❌ Descartadas (no vender)

- **Migración de sistemas legacy llave en mano** — no hay equipo (ver §2.2).
- **Bot de WhatsApp** — riesgo de ban, sin número dedicado (§10.1).
- **Hosting/hardware/redes** — fuera del modelo 100% software.
- **Soporte 24/7 / SLA** — un operador solo no aguanta.

> **Apuesta recomendada (retorno/esfuerzo):** **A + B + C** se pueden vender
> **esta semana** con lo que ya tenemos. D–I son para el próximo trimestre.
