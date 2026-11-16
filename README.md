# Versionamiento de Infraestructura para Servicio de Notificaciones

El equipo de DevOps necesita versionar la infraestructura del servicio de notificaciones utilizando Terraform. El dominio es el de un servicio de notificaciones en una plataforma fintech. Los componentes clave incluyen la red y el cómputo. Las restricciones incluyen un volumen pico de 10,000 notificaciones por minuto y una disponibilidad del 99.9%. La deuda técnica incluye la falta de versionamiento de la infraestructura.

## Informacion General

| Campo | Valor |
|-------|-------|
| **Tema** | Infraestructura como codigo con Terraform |
| **Nivel** | advanced-l2 |
| **Tipo** | practical |
| **Tiempo estimado** | 8 horas |

## Fases del Reto

### Fase 0: Configuración del Proyecto

**Objetivo:** Obtener el proyecto base funcional enviando el Código Base a un asistente de IA, que lo analizará, corregirá errores y entregará cada archivo con su ruta.

**Tiempo estimado:** 15-30 minutos

**Instrucciones:**

- Asegúrate de tener instalado para ejecutar el proyecto: Un IDE o editor de código.
- Copia todo el contenido del campo **Código Base** de este reto — incluyendo el texto de instrucciones que aparece al inicio.
- Abre un asistente de IA (Claude en claude.ai, ChatGPT o Gemini — se recomienda Claude), pega el contenido copiado en el chat y envíalo.
- El asistente analizará los archivos, corregirá errores y entregará cada archivo con su ruta. Guárdalos en la carpeta donde quieras trabajar, respetando las rutas.
- Verifica que el proyecto arranca sin errores.

**Entregable:** El proyecto compila/arranca sin errores.

<details>
<summary>Pistas de conocimiento</summary>

- Copia el Código Base completo incluyendo el texto de instrucciones al inicio — esas instrucciones le indican al asistente exactamente qué hacer con los archivos.
- Si el asistente no entrega todos los archivos al terminar el análisis, escríbele: "entrégame todos los archivos con su ruta".
- Si el proyecto tiene errores al arrancar, comparte el mensaje de error con el mismo asistente para que lo corrija.

</details>

### Fase 1: Exploración y Configuración Inicial

**Objetivo:** Configurar el entorno de Terraform y explorar la infraestructura existente.

**Tiempo estimado:** 2 horas

**Instrucciones:**

- Identificar y documentar los componentes clave de la infraestructura (red y cómputo).
- Configurar el entorno de Terraform para trabajar con el servicio de notificaciones.

**Entregable:** Documentación de los componentes de la infraestructura y configuración inicial de Terraform.

<details>
<summary>Pistas de conocimiento</summary>

- Usar Terraform para definir la infraestructura como código.
- Identificar las dependencias y relaciones entre los componentes.

</details>

### Fase 2: Versionamiento de la Infraestructura

**Objetivo:** Versionar la infraestructura del servicio de notificaciones utilizando Terraform.

**Tiempo estimado:** 3 horas

**Instrucciones:**

- Crear un script de Terraform que defina la infraestructura del servicio de notificaciones.
- Versionar el script de Terraform en un repositorio de código.

**Entregable:** Script de Terraform versionado en un repositorio de código que define la infraestructura del servicio de notificaciones.

<details>
<summary>Pistas de conocimiento</summary>

- Usar Terraform para definir la infraestructura como código.
- Versionar el script en un repositorio de código utilizando Git.

</details>

### Fase 3: Validación y Despliegue

**Objetivo:** Validar y desplegar la infraestructura versionada.

**Tiempo estimado:** 3 horas

**Instrucciones:**

- Validar el script de Terraform para asegurar que no haya errores.
- Desplegar la infraestructura utilizando Terraform.

**Entregable:** Infraestructura del servicio de notificaciones desplegada y validada utilizando Terraform.

<details>
<summary>Pistas de conocimiento</summary>

- Usar comandos de Terraform para validar y desplegar la infraestructura.
- Verificar que la infraestructura cumpla con las restricciones y métricas del dominio.

</details>

## Dimensiones Evaluadas

- **queEs**: ¿Qué es Terraform y para qué se usa en el versionamiento de infraestructura?
- **paraQueSirve**: ¿Para qué sirve versionar la infraestructura utilizando Terraform?
- **comoSeUsa**: ¿Cómo se usa Terraform para definir y desplegar la infraestructura?
- **erroresComunes**: ¿Cuáles son los errores comunes al versionar y desplegar infraestructura con Terraform?
- **queDecisionesImplica**: ¿Qué decisiones implica el versionamiento de la infraestructura con Terraform?

## Criterios de Evaluacion

- Configuración inicial de Terraform y documentación de la infraestructura.
- Script de Terraform versionado en un repositorio de código.
- Infraestructura del servicio de notificaciones desplegada y validada utilizando Terraform.

## Como trabajar con un asistente de IA

Hay dos caminos, elegi uno:

- **AGENTS.md** (recomendado) — instrucciones nativas del repo. Abri esta carpeta con tu agente local (Claude Code, Cursor, Codex, Copilot, Gemini) y las carga solo. Sabe que archivos faltan y con que comando se verifica, y completa el scaffold escribiendo en disco.
- **PROMPT_MEJORA.md** — para copiar y pegar en un chat (claude.ai, ChatGPT) si no tenes un agente en el IDE. Declara lo mismo que AGENTS.md; los archivos que te devuelva el chat los guardas en esta carpeta respetando las rutas.

Ninguno de los dos resuelve las fases del reto: eso es tu trabajo.

## Verificacion

El proyecto esta listo para trabajar cuando este comando corre sin errores:

```bash
terraform init -backend=false && terraform -chdir=modules/compute init -backend=false && terraform -chdir=modules/network init -backend=false && terraform validate && terraform -chdir=modules/compute validate && terraform -chdir=modules/network validate
```

---

*Reto generado automaticamente por Challenge Generator - Pragma*
