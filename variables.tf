variable "application_name" {
    description = "Nombre de la aplicación"
    type        = string
    default     = "integradora"
}

variable "environment" {
    description = "Entorno de despliegue (dev, staging, prod)"
    type        = string
    default     = "dev"
}

variable "length" {
    description = "Length of the random string"
    type        = number
    default     = 16
}

variable "enable_monitoring" {
    description = "habilita o deshabilita el monitoreo"
    type        = bool
    default     = true
}

variable "regions" {
    description = "Lista de regiones para desplegar la aplicación"
    type        = list(string)
    default     = ["us-east-1", "us-west-2"]
}

variable "enviroment_tags" {
    description = "Etiquetas específicas del entorno"
    type        = map(string)
    default     = {
        "dev"     = "development"
        "prod"    = "production"
    }
}

variable "aplication_config" {
    description = "Configuración específica de la aplicación"
    type        = object({
        version     = string
        maintainer  = string
        features    = list(string)
    })
    default = {
        version     = "1.0.0"
        maintainer  = "John Doe"
        features    = ["dependency1", "dependency2"]
    }
}

variable "allowed_networks" {
    description = "Lista de redes permitidas para acceder a la aplicación"
    type        = set(string)
    default     = ["10.0.0.0/16", "10.1.0.0/16"]
}