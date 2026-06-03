variable "vpc_cidr" {
  description = "CIDR block para la VPC"
  type        = string
}

variable "vpc_name" {
  description = "Nombre de la VPC"
  type        = string
}

variable "public_subnets" {
  description = "Lista de CIDR blocks para subnets públicas"
  type        = list(string)
}

variable "azs" {
  description = "Lista de zonas de disponibilidad"
  type        = list(string)
}

variable "sg_name" {
  description = "Nombre del security group"
  type        = string
}

variable "allowed_ips" {
  description = "Lista de IPs permitidas para acceso SSH"
  type        = list(string)
}
