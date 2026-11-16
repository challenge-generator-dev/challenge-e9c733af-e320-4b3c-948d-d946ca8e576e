# Prompt para Mejorar el Codigo Base

Copia y pega el contenido del bloque de abajo en un asistente de IA (Claude, ChatGPT)
para obtener el proyecto completo y arrancable. Guarda los archivos que te devuelva en la
carpeta del repo, respetando exactamente las rutas.

Si preferis trabajar en tu editor con un agente local (Claude Code, Cursor, Copilot), usa `AGENTS.md` en vez de este archivo: dice lo mismo pero para que escriba los archivos en disco.

## Las dos reglas que no se negocian

1. **Completa el boilerplate.** Todo lo que el proyecto necesita para compilar y arrancar: manifiesto de dependencias, punto de entrada, configuracion, capa de interfaz, y las capas del patron arquitectonico declarado. Eso es andamiaje y es tu trabajo.
2. **NO resuelvas el reto.** Los entregables de las fases son el trabajo de la persona. El hueco pedagogico se deja como esta: el proyecto arranca, pero lo que el reto pide implementar NO esta implementado.

Dicho de otra forma: si algo impide compilar, arreglalo. Si algo es logica de negocio incompleta, validaciones ausentes, un secreto hardcodeado o un patron mejorable, dejalo exactamente como esta — es lo que la persona tiene que encontrar.

## Superficie de practica — NO resuelvas

Estos archivos SON el ejercicio de la persona. No los implementes; deja stubs.

- `main.tf` — El topic pide escribir Terraform: este .tf es el ejercicio, no scaffolding.
- `modules/network/main.tf` — El topic pide escribir Terraform: este .tf es el ejercicio, no scaffolding.
- `modules/network/variables.tf` — El topic pide escribir Terraform: este .tf es el ejercicio, no scaffolding.
- `modules/network/outputs.tf` — El topic pide escribir Terraform: este .tf es el ejercicio, no scaffolding.
- `modules/compute/main.tf` — El topic pide escribir Terraform: este .tf es el ejercicio, no scaffolding.
- `modules/compute/variables.tf` — El topic pide escribir Terraform: este .tf es el ejercicio, no scaffolding.
- `modules/compute/outputs.tf` — El topic pide escribir Terraform: este .tf es el ejercicio, no scaffolding.

## Como saber que terminaste

```bash
terraform init -backend=false && terraform -chdir=modules/compute init -backend=false && terraform -chdir=modules/network init -backend=false && terraform validate && terraform -chdir=modules/compute validate && terraform -chdir=modules/network validate
```

Ese comando corriendo sin errores es la definicion de "listo".

---

```
## Briefing del reto (autoridad)
Este bloque manda sobre los archivos adjuntos. El stack y el rol salen de AQUÍ, no de un topic genérico ni de markdown placeholder.

### Perfil
Chapter DevOps, Especialidad Ingenieria, Tecnología Terraform, Advanced L2

### Brecha de conocimiento
Aprovisionar infraestructura con Terraform, Aprovisiona con Terraform la red y el computo del servicio de notificaciones

### Misión / candidato
Versionar la infraestructura del servicio de notificaciones

### Reto
- Tema: Infraestructura como codigo con Terraform
- Seniority: advanced-l2
- Tipo: practical
- Título: Versionamiento de Infraestructura para Servicio de Notificaciones
- Tiempo estimado: 8 horas

### Fases (trabajo del HUMANO — PROHIBIDO completarlas)
No implementes estos entregables. Dejalos como hueco pedagógico. El asistente solo materializa el proyecto arrancable para que el participante pueda trabajar.
- Fase 1: Exploración y Configuración Inicial — objetivo: Configurar el entorno de Terraform y explorar la infraestructura existente. — entregable (NO resolver): Documentación de los componentes de la infraestructura y configuración inicial de Terraform.
- Fase 2: Versionamiento de la Infraestructura — objetivo: Versionar la infraestructura del servicio de notificaciones utilizando Terraform. — entregable (NO resolver): Script de Terraform versionado en un repositorio de código que define la infraestructura del servicio de notificaciones.
- Fase 3: Validación y Despliegue — objetivo: Validar y desplegar la infraestructura versionada. — entregable (NO resolver): Infraestructura del servicio de notificaciones desplegada y validada utilizando Terraform.

Eres un asistente experto en análisis, corrección y generación de archivos de cualquier tipo:
código fuente, documentación, hojas de cálculo, documentos Word, configuraciones, entre otros.
Voy a enviarte una cadena de texto que contiene uno o más archivos. Cada archivo está delimitado por un marcador con el siguiente formato:
// === ARCHIVO: ruta/del/archivo.extension ===
o también puede aparecer como:
## === ARCHIVO: ruta/del/archivo.extension ===
Lo que sigue al marcador puede ser:

El contenido real del archivo (código, texto, YAML, etc.)
Una descripción en lenguaje natural de lo que debe contener el archivo


TU TAREA
PASO 0 — ¿Esto es un proyecto o una carcasa?
Antes de extraer archivos, leé el Briefing (si está) y diagnosticá el adjunto.

Es CARCASA si ocurre CUALQUIERA de estas:
- No hay manifiesto de dependencias del stack del briefing (manifest.json de VTEX IO / package.json / pom.xml / build.gradle / requirements.txt / go.mod / *.tf / *.csproj, según corresponda)
- Hay un "binario" que en realidad es un comentario ("no puede ser mostrado como texto plano", placeholder .fig/.docx vacío)
- Los markdowns ya completan entregables de fases posteriores ("se implementó fade-in", lista de áreas ya resuelta)

Si es CARCASA:
- MATERIALIZÁ un proyecto que arranca en el stack del briefing (VTEX IO Store Framework, Angular, Terraform, pytest, Nest, etc.). Incluí manifiesto, punto de entrada y capa de interfaz reales.
- NO copies los markdowns de "solución" como si fueran el producto. Son ruido de generación.
- NO resuelvas las fases del briefing (están marcadas PROHIBIDO). Dejá el hueco pedagógico: el flujo existe, las microinteracciones/calidad/infra que el reto pide NO están hechas.
- Después seguí al PASO 5 (entrega de archivos).

Si es un proyecto REAL (manifiesto + código que compila o arranca):
- Seguí PASO 1 en adelante. 🔴 compilación sí. 🟡 pedagógico no.

PASO 1 — Detección y extracción
Identifica todos los archivos presentes en la cadena. Para cada archivo extrae:

Su ruta completa (ej: src/main/java/com/pragma/Service.java)
Su contenido o descripción

PASO 2 — Clasificación por tipo
Clasifica cada archivo en una de estas categorías:
A) Código fuente (Java, Python, TypeScript, JavaScript, Kotlin, etc.)
B) Configuración / documentación (YAML, properties, Markdown, JSON, txt, etc.)
C) Excel (.xlsx, .xls, .csv)
D) Word (.docx, .doc)
E) Otro tipo de archivo binario o especial
PASO 3 — Clasificación de errores en código fuente

Objetivo prioritario: que el proyecto compile. No corrijas flujo de negocio ni lógica funcional.

Antes de modificar cualquier archivo de código fuente, clasifica cada problema encontrado en una de estas dos categorías:
🔴 ERROR DE COMPILACIÓN — corregir siempre
Son errores que impiden que el proyecto arranque, sin valor pedagógico:

Import faltante o incorrecto
Clase, método o variable referenciada que no existe en ningún archivo del proyecto
Error de sintaxis
Anotación con atributos inválidos
Dependencia ausente en pom.xml, package.json, etc.
Archivo referenciado que no existe y debe ser creado con implementación mínima

→ CORREGIR estos errores.
🟡 PROBLEMA FUNCIONAL O DE CALIDAD — preservar siempre
Son problemas que no impiden compilar. Pueden ser intencionales para el aprendizaje:

Clave secreta hardcodeada ("secret", "password123")
API deprecada que funciona pero tiene reemplazo moderno
Lógica de negocio incorrecta o incompleta
Código redundante o de baja legibilidad
Falta de validaciones en flujo de negocio
Patrones de diseño incorrectos pero funcionales
Concurrencia no segura
Configuración funcional pero no óptima

→ PRESERVAR tal cual. No corregir, no mejorar, no comentar.
PASO 4 — Procesamiento según tipo de archivo
Tipo A — Código fuente
Aplica únicamente las correcciones clasificadas como 🔴 ERROR DE COMPILACIÓN.
No alteres ningún elemento clasificado como 🟡 PROBLEMA FUNCIONAL O DE CALIDAD.
Si falta un archivo referenciado, créalo con la implementación mínima necesaria para compilar.
Tipo B — Configuración / documentación
Extrae el contenido tal cual, sin modificaciones salvo errores evidentes de sintaxis
(ej: YAML mal indentado).
Tipo C — Excel (.xlsx)
Si viene con contenido real, genera el archivo respetando ese contenido.
Si viene con descripción en lenguaje natural, genera un archivo Excel funcional con:

Fila de encabezados en negrita con color de fondo distintivo
Columnas con ancho ajustado al contenido
Tipos de dato correctos por columna
Validaciones si la descripción lo indica
Hojas nombradas descriptivamente si hay más de una
Filas de ejemplo si no hay datos reales

Tipo D — Word (.docx)
Si viene con contenido real, genera el archivo respetando ese contenido.
Si viene con descripción en lenguaje natural, genera un documento Word funcional con:

Estilos de título (Título 1, Título 2) para jerarquía de secciones
Fuente legible (Calibri o equivalente), tamaño 11-12pt para cuerpo
Márgenes estándar
Tabla de contenido si tiene múltiples secciones
Tablas con encabezados en negrita si aplica

Tipo E — Otro
Genera el archivo con el contenido o estructura más apropiada según la descripción.
PASO 5 — Entrega de archivos
Entregá cada archivo con su ruta completa, respetando exactamente la estructura de rutas
indicada por los marcadores: un bloque por archivo, precedido por su ruta. No generes ZIPs
ni archivos adjuntos.
La entrega debe incluir:

Archivos de código con únicamente los errores de compilación corregidos
Archivos de configuración y documentación sin cambios
Archivos nuevos creados para resolver dependencias de compilación faltantes
Archivos Excel y Word generados desde descripción

IMPORTANTE: Entregá los archivos completos al finalizar. No preguntes si el usuario
quiere recibirlos. Simplemente entregalos; No debes desplegar en el chat el resumen de lo que arreglaste, solo entregá los archivos.

REGLAS IMPORTANTES

No omitas ningún archivo aunque no tenga errores ni modificaciones
Respeta los nombres y rutas exactas indicadas por los marcadores
Si un archivo no tiene marcador claro, infiere el nombre desde su contenido
Si la cadena contiene solo documentación, placeholders o binarios fake, NO la reproduzcas:
aplicá PASO 0 (materializar el proyecto del briefing). Reproducir la carcasa es un fallo.
No agregues texto después del último archivo entregado
No preguntes si el usuario quiere los archivos: simplemente entregalos siempre
Si detectas que falta un archivo de configuración necesario para compilar
(pom.xml, package.json, requirements.txt, build.gradle, etc.), créalo e inclúyelo
inferiendo su contenido desde los imports y frameworks detectados en el código
Nunca corrijas problemas 🟡 aunque parezcan obvios o fáciles de mejorar.
El participante que recibirá este proyecto los debe encontrar y resolver él mismo.


INPUT
Aquí está la cadena con los archivos:

// === ARCHIVO: versions.tf ===
terraform {
  required_version = ">= 1.9.0, < 2.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "= 5.100.0"
    }
  }
}

// === ARCHIVO: providers.tf ===
provider "aws" {
  region = "us-east-1"
}

// === ARCHIVO: modules/network/main.tf ===
# Módulo de red para el servicio de notificaciones
# TODO(reto): Define los recursos de red necesarios para el servicio de notificaciones.
# Debe incluir VPC, subnets públicas y privadas, security groups con reglas mínimas necesarias,
# y cualquier otro recurso de red requerido para soportar 10,000 notificaciones por minuto
# con alta disponibilidad (99.9%).

# Ejemplo de estructura esperada (completa según requerimientos):


#   # Reglas mínimas necesarias para el servicio

// === ARCHIVO: modules/network/variables.tf ===
# ==============================================================================
# Variables de entrada para el módulo de red
# ==============================================================================
# Este archivo define las variables necesarias para configurar la red
# del servicio de notificaciones en el entorno fintech.
#
# Las variables incluyen CIDR blocks para VPC y subnets, zonas de disponibilidad,
# y parámetros requeridos para soportar la escalabilidad y disponibilidad del servicio.

variable "environment" {
  description = "Entorno de despliegue (dev, staging, prod)"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR block para la VPC principal"
  type        = string
}

variable "subnet_cidr" {
  description = "CIDR block para las subnets"
  type        = string
}

variable "vpc_id" {}

variable "subnet_ids" {}

variable "security_group_id" {}


// === ARCHIVO: modules/compute/main.tf ===
# Módulo de cómputo para el servicio de notificaciones
# TODO(reto): Define los recursos de cómputo necesarios para el servicio de notificaciones.
# Debe incluir ECS/Fargate o Lambda según la arquitectura elegida, Auto Scaling,
# balanceadores de carga, y cualquier otro recurso de cómputo requerido para
# soportar 10,000 notificaciones por minuto con alta disponibilidad (99.9%).

# Ejemplo de estructura esperada (completa según requerimientos):

// === ARCHIVO: modules/compute/variables.tf ===
# Variables de entrada para el módulo de cómputo
# TODO(reto): Define las variables necesarias para configurar el cómputo del servicio de notificaciones.
# Debe incluir parámetros para ECS/Lambda, Auto Scaling, balanceadores de carga,
# y cualquier otro parámetro requerido para soportar la escalabilidad y disponibilidad del servicio.

# Ejemplo de estructura esperada (completa según requerimientos):

variable "environment" {}

variable "vpc_id" {}

variable "subnet_ids" {}

variable "security_group_id" {}

variable "ecs_cluster_id" {}

variable "ecs_cluster_arn" {}

variable "lambda_invoke_arn" {}


// === ARCHIVO: modules/network/outputs.tf ===
# Outputs del módulo de red
# Proporciona los valores de los recursos de red para consumo externo

output "vpc_id" {
  description = "ID de la VPC creada"
  value       = var.vpc_id
  # TODO(reto): Completar con el output real del recurso VPC
}

output "vpc_cidr" {
  description = "Bloque CIDR de la VPC"
  value       = var.vpc_cidr
  # TODO(reto): Consumir el atributo correcto del recurso VPC
}

output "subnet_ids" {
  description = "IDs de las subnets creadas"
  value       = var.subnet_ids
  # TODO(reto): Ajustar si hay múltiples subnets
}

output "subnet_cidr" {
  description = "Bloque CIDR de la subnet"
  value       = var.subnet_cidr
  # TODO(reto): Consumir el atributo correcto del recurso subnet
}

output "security_group_id" {
  description = "ID del security group"
  value       = var.security_group_id
  # TODO(reto): Completar con el output real del recurso SG
}

output "environment" {
  description = "Ambiente de despliegue"
  value       = var.environment
  # TODO(reto): Consumir la variable de ambiente
}

// === ARCHIVO: modules/compute/outputs.tf ===
# Outputs del módulo de cómputo
# Proporciona los valores de los recursos de cómputo para consumo externo

output "ecs_cluster_id" {
  description = "ID del cluster ECS"
  value       = var.ecs_cluster_id
  # TODO(reto): Completar con el output real del recurso ECS cluster
}

output "ecs_cluster_name" {
  description = "Nombre del cluster ECS"
  value       = var.ecs_cluster_name
  # TODO(reto): Consumir el nombre del cluster
}

output "ecs_cluster_arn" {
  description = "ARN del cluster ECS"
  value       = var.ecs_cluster_arn
  # TODO(reto): Consumir el ARN completo del cluster
}

output "lambda_function_name" {
  description = "Nombre de la función Lambda"
  value       = var.lambda_function_name
  # TODO(reto): Completar con el output real del recurso Lambda
}

output "lambda_function_arn" {
  description = "ARN de la función Lambda"
  value       = var.lambda_function_arn
  # TODO(reto): Consumir el ARN de la función Lambda
}

output "lambda_invoke_arn" {
  description = "ARN de invocación de la función Lambda"
  value       = var.lambda_invoke_arn
  # TODO(reto): Consumir el ARN de invocación para permisos
}

// === ARCHIVO: environments/dev/terraform.tfvars ===
# Valores específicos para el ambiente de desarrollo
# Servicio de Notificaciones - Configuración Dev

# Configuración de red para desarrollo
environment           = "dev"
vpc_cidr              = "10.0.0.0/16"
subnet_cidr           = "10.0.1.0/24"
availability_zone     = "us-east-1a"

# Configuración de ECS para desarrollo
ecs_cluster_name      = "notifications-dev-cluster"
ecs_cluster_instance_type = "t3.medium"
ecs_desired_capacity  = 1
ecs_min_size          = 1
ecs_max_size          = 2

# Configuración de Lambda para desarrollo
lambda_function_name  = "notifications-dev-handler"
lambda_runtime        = "nodejs20.x"
lambda_memory_size    = 256
lambda_timeout        = 30

# Configuración de base de datos
db_instance_class     = "db.t3.micro"
db_allocated_storage  = 20
db_name               = "notifications_dev_db"
db_username           = "devadmin"

# Configuración de seguridad
allowed_cidr_blocks   = ["10.0.0.0/8"]
allowed_ssh_cidr      = ["10.0.0.0/16"]

# Configuración de notificaciones
notification_topic_name = "dev-notifications-topic"
notification_priority   = "low"
notification_batch_size = 10

# Configuración de monitoreo
enable_monitoring     = true
log_retention_days    = 7
enable_alerts         = false

# Configuración de escalamiento
autoscale_enabled     = false
autoscale_min_capacity = 1
autoscale_max_capacity = 2
autoscale_target_cpu  = 70

# Configuración de backups
enable_backup         = false
backup_retention_days = 7
backup_schedule       = "cron(0 5 ? * *)"

# Tags específicos del ambiente
tags = {
  Environment = "development"
  ManagedBy   = "terraform"
  Project     = "notifications-service"
  CostCenter  = "devops"
  Compliance  = "low"
}

// === ARCHIVO: main.tf ===
# ==============================================================================
# Configuración principal de infraestructura para el servicio de notificaciones
# ==============================================================================
# Este archivo orquesta la creación de los recursos de infraestructura
# necesarios para el servicio de notificaciones en el entorno fintech.
#
# La infraestructura se organiza en módulos reutilizables:
# - network: VPC, subnets, security groups
# - compute: ECS cluster, Lambda functions
#
# Los valores de variables se cargan desde archivos tfvars por ambiente.

# ------------------------------------------------------------------------------
# Variables locales para el servicio
# ------------------------------------------------------------------------------
locals {
  service_name = "notifications"
  tags = {
    Service     = local.service_name
    Environment = var.environment
    ManagedBy   = "terraform"
  }
}

# ------------------------------------------------------------------------------
# Variable: CIDR de subred (requerida por el módulo de red)
# ------------------------------------------------------------------------------
variable "subnet_cidr" {
  type        = string
  description = "Rango CIDR para las subredes de la VPC"
}

# ------------------------------------------------------------------------------
# Módulo de red: configuración de VPC y subnets
# ------------------------------------------------------------------------------
module "network" {
  source = "./modules/network"

  environment  = var.environment
  vpc_cidr     = var.vpc_cidr
  subnet_cidr  = var.subnet_cidr
}

# ------------------------------------------------------------------------------
# Módulo de cómputo: ECS cluster y Lambda
# ------------------------------------------------------------------------------
module "compute" {
  source = "./modules/compute"

  environment           = var.environment
  vpc_id                = module.network.vpc_id
  subnet_ids            = module.network.subnet_ids
  security_group_id     = module.network.security_group_id
}

# ------------------------------------------------------------------------------
# Recursos adicionales del servicio de notificaciones
# ------------------------------------------------------------------------------

# SNS Topic para notificaciones
# TODO(reto): implementa este bloque
# resource "aws_sns_topic" "notifications" {
#   # TODO(reto): Configurar propiedades del topic SNS:
# }

# SQS Queue para procesamiento asíncrono
# TODO(reto): implementa este bloque
# resource "aws_sqs_queue" "notifications_queue" {
#   # TODO(reto): Configurar cola SQS:
# }

# CloudWatch Log Group para logs del servicio
# TODO(reto): implementa este bloque
# resource "aws_cloudwatch_log_group" "notifications" {
#   # TODO(reto): Configurar logging:
# }

# IAM Role para el servicio de notificaciones
# TODO(reto): implementa este bloque
# resource "aws_iam_role" "notifications_service" {
#   # TODO(reto): Definir políticas IAM:
# }

# Output: ARN del SNS topic para consumo por otros servicios
output "sns_topic_arn" {
  value       = null
  description = "ARN del topic SNS para notificaciones"
}

# Output: URL de la cola SQS
output "sqs_queue_url" {
  value       = null
  description = "URL de la cola SQS para procesamiento"
}

# Output: Nombre del cluster ECS
output "ecs_cluster_name" {
  value       = module.compute.ecs_cluster_name
  description = "Nombre del cluster ECS"
}

# Output: Nombre de la función Lambda
output "lambda_function_name" {
  value       = module.compute.lambda_function_name
  description = "Nombre de la función Lambda"
}

# Output: ID de la VPC creada
output "vpc_id" {
  value       = module.network.vpc_id
  description = "ID de la VPC del servicio"
}

# Output: IDs de las subredes
output "subnet_ids" {
  value       = module.network.subnet_ids
  description = "IDs de las subredes del servicio"
}

// === ARCHIVO: variables.tf ===
# ==============================================================================
# Variables globales de la infraestructura
# ==============================================================================
# Este archivo define las variables de nivel raíz utilizadas por los módulos
# de infraestructura del servicio de notificaciones.
#
# Los valores se cargan desde archivos tfvars por ambiente (environments/dev/terraform.tfvars)

variable "environment" {
  description = "Entorno de despliegue (dev, staging, prod)"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR block para la VPC principal del servicio de notificaciones"
  type        = string
}
```
