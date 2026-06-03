**# Módulo de Redes - Terraform**



**Este módulo crea una \*\*VPC\*\*, subnets públicas y un security group básico en AWS.**



**## Variables**

**- `vpc\_cidr` → CIDR block de la VPC.**

**- `vpc\_name` → Nombre de la VPC.**

**- `public\_subnets` → Lista de CIDR blocks para subnets públicas.**

**- `azs` → Lista de zonas de disponibilidad.**

**- `sg\_name` → Nombre del security group.**

**- `allowed\_ips` → Lista de IPs permitidas para acceso SSH.**



**## Outputs**

**- `vpc\_id` → ID de la VPC creada.**

**- `subnet\_ids` → IDs de las subnets públicas.**

**- `sg\_id` → ID del security group.**



**## Ejemplo de uso**

**```hcl**

**module "redes" {**

&#x20; **source         = "git::https://github.com/sebastian1219/M-dulo-Redes.git"**

&#x20; **vpc\_cidr       = "10.0.0.0/16"**

&#x20; **vpc\_name       = "vpc-principal"**

&#x20; **public\_subnets = \["10.0.1.0/24", "10.0.2.0/24"]**

&#x20; **azs            = \["us-east-1a", "us-east-1b"]**

&#x20; **sg\_name        = "default-sg"**

&#x20; **allowed\_ips    = \["0.0.0.0/0"]**

**}**



