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