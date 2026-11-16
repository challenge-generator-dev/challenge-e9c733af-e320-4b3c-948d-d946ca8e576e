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