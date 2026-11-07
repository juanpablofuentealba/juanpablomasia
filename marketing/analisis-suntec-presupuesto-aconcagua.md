# Análisis: sitio de referencia Suntec Chile (suntecchile.cl)

> Solicitado por el cliente **Matías (Aconcagua Soluciones Constructivas SpA)**:
> *"¿podemos hacer una página similar a este link?"*
> Analizado 2026-11-06. **Solo análisis** — nada ejecutado.

---

## Qué es el sitio de referencia

| Dato | Valor |
|---|---|
| Nombre | **Suntec Chile** — Energía Solar Fotovoltaica |
| Rubro | Instalación de sistemas solares (On-Grid, Off-Grid, Híbrido) + trámites SEC |
| Tecnología | **React + Vite** (SPA), React Router |
| Peso del JS | **450 KB** (una sola aplicación) |
| Peso del CSS | 41 KB |
| Imágenes | 15 (diagramas, fotos de obra, logos) + **1 video de portada** |
| Rutas | 15 (con subpáginas por tipo de sistema) |

---

## Estructura del sitio (lo que tiene)

### Páginas principales (6)

| Ruta | Contenido |
|---|---|
| `/` | Portada: hero con video, servicios, tipos de sistema, proceso, testimonios, FAQ, contacto |
| `/sistemas-fotovoltaicos` | Índice de los 3 tipos de sistema |
| `/sistemas-fotovoltaicos/on-grid` | Página propia con diagrama y beneficios |
| `/sistemas-fotovoltaicos/hibrido` | Página propia con diagrama |
| `/sistemas-fotovoltaicos/off-grid` | Página propia con diagrama |
| `/nosotros` | Empresa, misión, equipo |
| `/preguntas-frecuentes` | FAQ extenso (10+ preguntas técnicas) |
| `/contacto` | Formulario, horario, ubicación, regiones |
| `/cotizar` | **Simulador de cotización en 5 pasos** |

### Lo más valioso: el **simulador de cotización**

Es un formulario por pasos que arroja un **estimado automático**:

1. Tipo de cliente
2. Consumo eléctrico
3. Tipo de techo (con imagen: cemento, etc.)
4. Ubicación (región)
5. Datos de contacto

**Resultado que muestra:**
- Ahorro total a 25 años
- Cantidad de paneles necesarios
- Años para recuperar la inversión (payback/ROI)
- Consumo mensual y anual estimado

> **Esto es lo que hace especial al sitio.** No es "una página bonita": es una
> **herramienta que calcula**. Y envía el estimado por correo.

### Otras secciones

- **Proceso de trabajo en 5 pasos** (con foto por paso)
- **Tipos de techo** (con fotos: cemento, teja, etc.)
- **Testimonios de clientes** (con nombre de proyecto y región)
- **Cobertura: las 16 regiones** (con lista de regiones)
- **FAQ técnico** (TE1, TE4, SEC, RGR N°02/2024, degradación de paneles)
- **Galería de proyectos** ("instalaciones que ya están generando ahorro")
- Contacto: teléfono, correo, formulario, horario

---

## Nivel de complejidad (honesto)

| Aspecto | Suntec | Tu sitio actual |
|---|---|---|
| Tecnología | React + Vite (aplicación) | HTML+CSS estático |
| Peso | 450 KB de JS | 15 KB |
| Páginas | 9 + simulador | 1 |
| Formularios | Cotizador + contacto | Ninguno (solo WhatsApp) |
| Video | Sí (portada) | No |
| Mantenimiento | Requiere desarrollo | Se edita el HTML |

**Traducción:** el sitio de Suntec es **una aplicación web con cotizador**, no una landing. Es un salto de categoría.

---

## Presupuesto para Aconcagua

### Opción A — "Similar en aspecto" (sin cotizador)

Una web de varias páginas con el mismo *look* y estructura, sin el simulador.

| Ítem | Precio |
|---|---|
| Sitio de hasta 5 páginas (Inicio, Servicios, Proyectos, Nosotros, Contacto) | $249.900 |
| Galería de proyectos (las 23 fotos ya están listas) | incluido |
| Formulario de contacto a correo | incluido |
| Subpáginas por servicio (obra nueva, remodelación, eléctricas…) | incluido |
| Dominio propio + configuración | $24.900/año (opcional) |
| **TOTAL** | **$249.900** + dominio opcional |

**Plazo:** 1 semana.

### Opción B — "Similar completo" (con cotizador)

Todo lo de la Opción A + **simulador de cotización**.

| Ítem | Precio |
|---|---|
| Opción A completa | $249.900 |
| **Cotizador interactivo** (formulario por pasos + cálculo automático + envío a correo) | **+$180.000** |
| **TOTAL** | **$429.900** |

**Plazo:** 2–3 semanas.

> ⚠️ **El cotizador no es "más páginas", es desarrollo.** Suntec lo tiene porque
> su negocio lo permite (paneles + consumo = fórmula de ahorro). En construcción
> el cálculo es distinto y menos estandarizable.

### Opción C — Por etapas (la que recomiendo)

Empezar con lo esencial y crecer.

| Etapa | Qué incluye | Precio |
|---|---|---|
| **1** (ahora) | Sitio de 5 páginas + galería + formulario | $249.900 |
| **2** (si funciona) | Blog/guías para SEO (como las tuyas) | $89.900 |
| **3** (si lo piden) | Cotizador propio | $180.000 |

**Ventaja:** no pagan el cotizador hasta saber si el sitio les trae clientes.

---

## Mi recomendación

**Opción A.** Razones:

1. **El cotizador de Suntec tiene sentido para su negocio, no para Aconcagua.**
   Energía solar se calcula con una fórmula (consumo → paneles → ahorro).
   Una remodelación **no se puede cotizar sin ver la obra**. Un cotizador
   automático en construcción daría números falsos y generaría problemas.

2. **Lo que hace valiosa la web de Suntec es el contenido técnico** (FAQ sobre
   TE1, TE4, SEC, normativa), no el diseño. Eso se replica con **contenido**,
   no con desarrollo.

3. **El salto de HTML a React no les sirve.** Un sitio estático carga más rápido,
   es más barato de mantener y no requiere un desarrollador cada vez que quieren
   cambiar un texto. Suntec paga ese costo; Aconcagua no lo necesita.

4. **$429.900 es mucho para una empresa que recién formaliza.** Mejor entrar con
   $249.900 y que el sitio se pague solo.

### Lo que sí conviene copiarles

| Idea de Suntec | Cómo se replica para Aconcagua | Costo |
|---|---|---|
| Subpáginas por servicio | Una página por servicio (obra nueva, remodelación, baños…) | incluido |
| Proceso de trabajo en pasos | Sección "Cómo trabajamos" en 5 pasos | incluido |
| Galería de proyectos | Ya tienen **23 fotos listas** | incluido |
| Testimonios | Pedir 2-3 a clientes reales | incluido |
| FAQ técnico | Guías sobre permisos de edificación, ampliaciones | etapa 2 |
| Cobertura explícita | "Santiago y regiones" (ya está en su web) | incluido |

---

## Cómo explicárselo al cliente

```
Matías, revisé el sitio de Suntec. Te cuento con franqueza:

Lo que se ve (el diseño, las secciones, la galería) se puede hacer igual, y
lo tengo presupuestado en $249.900.

Lo que NO te recomiendo copiar es su cotizador automático. Suntec puede
calcular un precio solo porque la energía solar sigue una fórmula (consumo
de luz → cantidad de paneles → ahorro). En construcción eso no existe: nadie
puede cotizar una remodelación sin ver la obra. Un cotizador te daría
números falsos y después tendrías que explicar por qué el precio real es otro.

Lo que sí vale la pena copiarles es el contenido: las subpáginas por servicio,
la sección de cómo trabajan, la galería de proyectos y las preguntas
frecuentes. Eso hace que te encuentren en Google y que confíen en ustedes.

Mi propuesta: sitio de 5 páginas con tus servicios, la galería de las 23 fotos
que ya tenemos, formulario de contacto y subpáginas por servicio. $249.900,
listo en una semana.

Si más adelante el sitio les trae clientes y quieren el cotizador, se hace
aparte.
```

---

## Anexo técnico (para el operador)

- El sitio de Suntec es **React + Vite** servido como SPA.
- Su "cotizador" es un formulario por pasos que **envía a un backend** (`Error ${n.status} al enviar la cotización` → hay API).
- Para replicar algo similar se necesitaría **backend** (Netlify Functions lo permite, pero es desarrollo real).
- **No conviene migrar la web de Aconcagua a React:** el sitio actual (HTML estático, 15 KB) carga más rápido que los 450 KB de Suntec, y es editable sin desarrollador.
- Las 23 fotos de Aconcagua ya están optimizadas en `~/matias-fotos/web-optimizado/` (HP) y en `assets/galeria/` del repo.
