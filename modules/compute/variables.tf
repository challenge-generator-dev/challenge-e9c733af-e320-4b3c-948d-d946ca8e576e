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