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