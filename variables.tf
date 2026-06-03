variable "vpc_cidr" {
  description = "CIDR block de la VPC"
  type        = string
}

variable "vpc_name" {
  description = "Nombre de la VPC"
  type        = string
}

variable "public_subnets" {
  description = "Lista de subnets públicas"
  type        = list(string)
}

variable "azs" {
  description = "Availability Zones"
  type        = list(string)
}

variable "sg_name" {
  description = "Nombre del Security Group"
  type        = string
}

variable "allowed_ips" {
  description = "Lista de IPs permitidas para acceso"
  type        = list(string)
}
