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