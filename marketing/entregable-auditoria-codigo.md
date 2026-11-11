# Entregable: Auditoría de código + informe (servicio #6)

> **Creado 12-nov-2026.** Es el **primer producto de la línea empresa** (ver
> `MARKETING.md` §2.2). Es de **solo lectura**: no se toca producción, no se
> rompe nada. Bajo riesgo, alto valor percibido, y **abre la puerta** a los
> servicios #7 (automatización) y #8 (módulo).
>
> ⚠️ **Precio de referencia: $300.000 – $800.000.** La cifra exacta se cotiza
> según tamaño del sistema. **No es un servicio publicado en el sitio todavía.**

---

## 1. En una línea (para el cliente)

> *"Reviso tu sistema sin tocarlo y te entrego un informe claro de cómo está
> por dentro: qué hace, qué depende de qué, qué es riesgo y qué conviene
> arreglar primero. Tú decides después qué hacer con eso."*

**No** es "te arreglo el sistema". Es **diagnóstico documentado**. El cliente
paga por **entender**, no por cambiar.

---

## 2. Qué recibe el cliente (entregables)

| # | Entregable | Formato | Para qué sirve |
|---|---|---|---|
| 1 | **Informe de auditoría** | **PDF tamaño carta** (Chile) | Documento que se lee y se guarda |
| 2 | **Mapa de dependencias** | diagrama (Mermaid/PNG) | Ver cómo se conectan los módulos |
| 3 | **Registro de riesgos** | tabla priorizada | Saber **qué arreglar primero** |
| 4 | **Inventario de deuda técnica** | lista con impacto | Justificar inversión futura |
| 5 | **Sesión de entrega** (1 h) | videollamada/WhatsApp | Explicar el informe y responder dudas |

> **Nota honesta:** el informe **no hace** cambios en el sistema. Si el cliente
> quiere que se arregle algo, ahí entra el **#7 (automatización)** o **#8
> (módulo)** — presupuesto aparte.

---

## 3. Índice del informe (estructura estándar)

> Este es el **esqueleto fijo**. Se adapta al sistema, pero el orden no cambia.

### Portada y resumen ejecutivo (1 página)
- Qué se auditó, cuándo y quién.
- **3 conclusiones principales** en lenguaje de negocio (no técnico).
- Semáforo general: 🟢 sano / 🟡 a mejorar / 🔴 riesgo.

### 1. Alcance y método
- Qué se revisó (repos, módulos, base de datos) y **qué NO**.
- Cómo se hizo (lectura de código, mapa de dependencias, ejecución de pruebas
  existentes si las hay).
- **Límite explícito:** trabajo de solo lectura, sin modificar producción.

### 2. Arquitectura actual (cómo está armado hoy)
- Mapa de módulos y su dependencia (diagrama).
- Tecnologías usadas y versiones (con antigüedad).
- Puntos de entrada y salidas (APIs, archivos, correos).

### 3. Lógica de negocio extraída
- Las **reglas clave** que hoy viven solo en el código, escritas en español
  claro. *(Este punto es el más valioso: convierte código indocumentado en
  conocimiento que el dueño puede leer.)*

### 4. Registro de riesgos (tabla priorizada)
| Riesgo | Dónde | Impacto | Probabilidad | Prioridad |
|---|---|---|---|---|
| (ej.) sin respaldo de la base | `/data` | 🔴 alto | media | 1 |
| (ej.) contraseña en el código | `config.js` | 🔴 alto | alta | 1 |
| (ej.) librería sin soporte desde 2022 | `vendor/x` | 🟡 medio | media | 3 |

### 5. Deuda técnica (qué cuesta mantenerlo así)
- Duplicación, complejidad, falta de pruebas, dependencias abandonadas.
- Estimación **cualitativa** de cuánto tiempo cuesta mantener (no prometer %).

### 6. Recomendaciones priorizadas (el camino)
- **Corto plazo** (0–1 mes): lo urgente y barato.
- **Mediano** (1–3 meses): mejoras que rinden.
- **Largo**: lo estructural (aquí suele vivir el #8).

### 7. Anexos
- Listado de archivos revisados.
- Glosario para no técnicos.
- Fuentes de las vulnerabilidades citadas (si aplica).

---

## 4. Cómo se cotiza

| Tamaño del sistema | Líneas de código aprox. | Precio sugerido | Plazo |
|---|---|---|---|
| **Pequeño** | hasta ~10.000 | **$300.000** | 1 semana |
| **Mediano** | ~10.000–50.000 | **$500.000** | 2 semanas |
| **Grande** | +50.000 / varios repos | **$800.000+** | 2–3 semanas |

**Forma de pago:** 50% al inicio, 50% a la entrega del informe.
**Ajuste:** si el cliente da acceso solo a una parte, baja el precio (y baja el
alcance — se dice por escrito).

> **Por qué se cobra así:** el precio va por el **valor de entender y decidir**,
> no por horas de teclado. Un dueño que evita un proyecto de $10M mal encargado
> por $400.000 de auditoría ganó mucho.

---

## 5. Reglas de oro (no romper)

1. **Solo lectura.** Nunca ejecutar cambios sobre el sistema del cliente durante
   la auditoría. Si algo hay que probar, se hace en **copia**.
2. **Alcance por escrito** antes de empezar: qué repos, qué módulos, qué NO.
3. **No prometer porcentajes** ("−60%", "100% de paridad"). Se describe lo que
   se ve, con evidencia.
4. **Privacidad del código:** trabajarlo con **autorización escrita**; no subir
   código del cliente a repos públicos; no copiar datos personales.
5. **No declarar certificaciones** (ISO/SOC2). Máximo: *"buenas prácticas de
   confidencialidad"* + **NDA simple** si el cliente lo pide.
6. **Cierre = Fase 1.** Al terminar, se ofrece el siguiente paso (#7/#8) con
   presupuesto aparte. **No** comprometer la migración completa de una vez.

---

## 6. Cómo se vende (texto)

- **Puerta de entrada:** cualquier cliente que diga *"mi sistema es un caos",
  "nadie sabe cómo funciona", "el que lo hizo se fue", "tenemos miedo de
  tocarlo"*.
- **CTA WhatsApp:** *"Hola, quiero una auditoría de mi sistema: saber cómo está
  por dentro y qué riesgos tiene."*
- **Gancho:** *"en 1–2 semanas tienes un documento que tu equipo entiende, sin
  tocar nada en producción."*
- **Siguiente paso natural:** automatización (#7) o módulo (#8).

---

## 7. Checklist de entrega (uso interno)

- [ ] Alcance y NDA firmados.
- [ ] Acceso de **lectura** al repositorio confirmado.
- [ ] Mapa de dependencias generado.
- [ ] Reglas de negocio extraídas y redactadas (revisar con el cliente).
- [ ] Tabla de riesgos priorizada.
- [ ] Informe en **PDF tamaño carta** (verificar `612x792` con Chromium en el MSI).
- [ ] Sesión de entrega agendada y realizada.
- [ ] Propuesta del siguiente paso (#7/#8) enviada.
