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