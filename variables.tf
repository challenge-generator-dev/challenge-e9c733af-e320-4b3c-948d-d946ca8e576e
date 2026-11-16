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