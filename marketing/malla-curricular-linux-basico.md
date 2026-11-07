# Malla curricular — Linux básico en 4 clases

> Para el servicio **Clases de computación y Linux** (ver `oferta.md`, servicio #5).
> Diseñada para el caso real: `cliente/andrea` (madre + hijo, CachyOS KDE, Yoga 330).
> **Documento del operador** — la duración y el detalle se ajustan a cada alumno.
>
> Principio de diseño: **cada clase termina con algo que el alumno ya sabe hacer
> solo**. No se enseña nada que no se use ese mismo día.

---

## Enfoque general

| Decisión | Por qué |
|---|---|
| **Todo con el mouse primero, terminal después** | Así se pierde el miedo; la terminal deja de ser "cosa de genios" |
| **Se practica en el equipo propio del alumno** | Lo que aprende sirve en su máquina, no en una de ejemplo |
| **Cada clase tiene una "misión"** | El alumno sale sabiendo hacer algo concreto, no "habiendo visto" |
| **Se repite sin vergüenza** | Si algo no quedó, se refuerza. No hay apuro |
| **Nada de teoría sin uso** | "Qué es el kernel" no va: no cambia nada en su vida |

**Ritmo:** 1 hora por semana. 4 semanas.

---

## Clase 1 — Conocer el equipo y no perderse

> **Misión:** que el alumno pueda abrir un programa, guardar un archivo y encontrarlo después, sin ayuda.

| Bloque | Min | Qué se hace |
|---|---|---|
| **1. La primera pregunta** | 10 | ¿Qué quiere hacer con el computador? Se anota. La clase se orienta a eso |
| **2. El escritorio** | 15 | Botón de aplicaciones · buscar un programa · abrir, cerrar, mover ventanas |
| **3. Archivos y carpetas** | 20 | Dolphin: crear carpeta, guardar un archivo, buscarlo, moverlo, y **entender dónde quedó** |
| **4. Misión práctica** | 15 | Cada uno hace algo suyo: un dibujo en Pinta, una carpeta con fotos, un documento en Kate |

**Al terminar, el alumno sabe:**
- Encender, abrir un programa y cerrarlo
- Guardar un archivo y volver a encontrarlo
- Que quedó guardado *donde él eligió*, no "por ahí"

**Tarea (opcional):** guardar una foto o un archivo suyo en una carpeta nueva.

> **Nota para el hijo:** en esta clase el niño puede ir más rápido. Se le da
> la misión del dibujo en Pinta (que corre en Linux) y se le permite explorar.
> **No se le deja solo en la terminal todavía.**

---

## Clase 2 — La terminal (sin miedo)

> **Misión:** abrir la terminal, entender qué es y usar 6 comandos con confianza.

| Bloque | Min | Qué se hace |
|---|---|---|
| **1. Qué es una terminal** | 10 | No es magia ni cosa de hackers: es **otra forma de pedir lo mismo**. Se compara: `archivos` con Dolphin = `ls` en terminal |
| **2. Los 5 comandos base** | 25 | `pwd` · `ls` · `cd` · `mkdir` · `clear` (ver tabla abajo) |
| **3. Trucos que salvan** | 10 | **Tab** completa solo · **↑** repite el último comando · mirar no rompe nada |
| **4. Misión práctica** | 15 | Navegar hasta una carpeta propia y crear una carpeta nueva **desde la terminal** |

**Tabla de comandos (la que se entrega al alumno):**

| Comando | Qué hace | Se parece a |
|---|---|---|
| `pwd` | Muestra dónde estás | La barra de ruta en Dolphin |
| `ls` | Lista lo que hay | Ver el contenido de una carpeta |
| `cd carpeta` | Entra a una carpeta | Doble clic |
| `cd ..` | Vuelve atrás | La flecha "atrás" |
| `mkdir nombre` | Crea una carpeta | Clic derecho → Nueva carpeta |
| `clear` | Limpia la pantalla | — |
| `exit` | Cierra la terminal | La X de la ventana |

> **Insistir en esto:** cada comando de la terminal **tiene su equivalente con
> el mouse**. La terminal no es obligatoria: es más rápida cuando se aprende.

**Al terminar, el alumno sabe:**
- Abrir la terminal sin que le dé miedo
- Saber **dónde está** (`pwd`) y qué hay ahí (`ls`)
- Moverse (`cd`) y crear (`mkdir`)
- Usar Tab y las flechas

**Tarea:** abrir la terminal y llegar hasta la carpeta de fotos usando solo comandos.

---

## Clase 3 — Internet, correo y respaldos

> **Misión:** que sus archivos importantes **no se pierdan nunca**. Es la clase más valiosa.

| Bloque | Min | Qué se hace |
|---|---|---|
| **1. Navegar con orden** | 10 | Firefox vs Chrome · pestañas · marcadores · no caer en publicidad engañosa |
| **2. Correo y contraseñas** | 15 | Entrar al correo · **cómo se crea una contraseña fuerte** · dónde se anotan (no en un papel pegado al monitor) |
| **3. ⭐ Respaldos** | 25 | El bloque estrella. Ver abajo |
| **4. Misión práctica** | 10 | Hacer **un** respaldo real de sus fotos, ahí mismo |

**El bloque de respaldos (lo más importante de todo el curso):**

1. **Qué se pierde y qué no.** Fotos y documentos: si se pierden, no vuelven.
2. **La regla 3-2-1 simple:** el archivo tiene que estar en **dos lugares**.
3. **Copiar a un pendrive:** conectar, copiar, expulsar bien.
4. **Guardar en la nube:** correo o Drive. Se explica que es "un disco de otro".
5. **Probarlo.** Un respaldo que nunca se probó no es un respaldo.

> **Por qué esta clase vale más que las otras tres:** un computador lento se
> arregla. **Fotos perdidas no.** El alumno va a recordar esta clase cuando
> (ojalá nunca) tenga el problema.

**Al terminar, el alumno sabe:**
- Navegar sin meterse en problemas
- Crear una contraseña fuerte y guardarla bien
- **Hacer un respaldo y saber que quedó bien hecho**

**Tarea:** respaldar las fotos del celular o del computador.

---

## Clase 4 — Mantenimiento y autonomía

> **Misión:** que pueda resolver solo lo simple, y que sepa **cuándo pedir ayuda**.

| Bloque | Min | Qué se hace |
|---|---|---|
| **1. Actualizar** | 15 | Ajustes → Actualizaciones · por qué hay que hacerlo · **nunca cortar a la mitad** |
| **2. Instalar programas** | 15 | Discover (la tienda) · Shelly · qué es un "repositorio" explicado simple |
| **3. Cuando algo falla** | 20 | El método: cerrar y abrir → reiniciar → preguntar. **Qué NO hacer** (no apretar cosas al azar) |
| **4. Cierre del curso** | 10 | Repaso de las 4 clases · **qué aprendió cada uno** · qué quiere seguir aprendiendo |

**El bloque "cuando algo falla" (el más práctico):**

| Síntoma | Qué probar |
|---|---|
| Un programa no responde | Cerrarlo y abrirlo de nuevo |
| Todo va lento | Cerrar pestañas y programas que no se usan |
| No hay internet | Revisar el WiFi · reiniciar el router (desenchufar 10 s) |
| Algo raro pasó | Reiniciar el equipo |
| Sigue igual | **Escribir al operador** (soporte remoto disponible) |

> **Decir esto en voz alta:** *"No todo se arregla sola, y está bien. Lo
> importante es no empeorarlo apretando cosas al azar."*

**Al terminar, el alumno sabe:**
- Actualizar su sistema cuando le avise
- Instalar un programa solo
- Aplicar el "cerrar, reiniciar, preguntar"
- Saber cuándo llamar al operador (no antes, no después)

---

## Qué se le entrega al alumno

| Material | Para qué |
|---|---|
| **Guía de primeros pasos** (`primeros-pasos-linux.md`) | Todo lo de la clase 1, por escrito |
| **Tabla de comandos** (clase 2) | Para tener al lado de la terminal |
| **La regla de los respaldos** (clase 3) | Un papel con los 3 pasos |
| **Los 5 problemas comunes** (clase 4) | También pegado cerca del equipo |

> **Pendiente del operador:** convertir estas cuatro hojas en un **PDF de una
> página cada una** para entregar impreso. Hoy existe solo la guía de primeros
> pasos.

---

## Adaptación según el alumno

| Alumno | Ajuste |
|---|---|
| **Niño (8–14)** | La clase 1 y 2 completas, con juegos y dibujo. Las 3 y 4 adaptadas a "aprender a cuidar sus cosas" |
| **Adulto desde cero** | El ritmo es el de arriba; reforzar clases 1 y 3 (es donde más duele) |
| **Adulto con base (ej: estudió informática)** | Saltar el bloque básico de la 1; profundizar la **terminal** (clase 2) y el **mantenimiento** (clase 4) con más comandos |
| **Dúo madre + hijo** | La clase 2 y 3 se hacen juntos; la 4 se separa (al niño no le interesa "actualizar el sistema") |

---

## Errores que hay que evitar al enseñar

| ❌ No hacer | Por qué |
|---|---|
| Decir "esto es fácil" | Si a él le cuesta, se siente tonto. Decir "esto toma su tiempo" |
| Usar palabras técnicas sin traducir | "Repositorio" → "una tienda oficial de programas" |
| Hacer tú el clic mientras explica | El alumno aprende **haciendo**, no mirando. Se le pasa el teclado |
| Meter 20 comandos de una vez | Con 5 bien aprendidos ya tiene autonomía real |
| Prometer que "nunca va a fallar" | Va a fallar. Lo que se enseña es **qué hacer cuando falla** |

---

## Cómo se mide si sirvió

Al final de cada clase, una sola pregunta:

> **"¿Puedes hacerlo solo, aunque sea despacio?"**

- **Sí** → se avanza.
- **No** → se refuerza antes de seguir. Sin apuro.

Y al final del curso (clase 4):

> **"¿Qué harías si mañana el computador no prende?"**

Si responde con **"reviso si está enchufado, lo reinicio y si no te escribo"**,
el curso cumplió.

---

## Notas de implementación

- **Duración real:** 60 min por clase. La 3 (respaldos) puede pasarse a 75.
- **Nunca dejar al niño solo en la terminal** sin un adulto presente.
- Si el equipo no tiene Linux instalado, la clase 2 cambia de "terminal" a
  "el equivalente en Windows" (PowerShell), o se cotiza la instalación aparte.
- **Clases y soporte no se mezclan:** si en clase aparece un problema técnico
  que hay que arreglar, se cotiza como soporte remoto ($18.000/h) aparte.
- Este documento es del operador. **No se publica en el sitio** (el sitio
  muestra el resumen de 4 bloques, no la malla completa).
