# VPC principal
resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr
  tags = {
    Name = var.vpc_name
  }
}

# Subnets públicas
resource "aws_subnet" "public" {
  count             = length(var.public_subnets)
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.public_subnets[count.index]
  availability_zone = var.azs[count.index]
  tags = {
    Name = "public-${count.index}"
  }
}

# Security Group
resource "aws_security_group" "default" {
  name        = var.sg_name
  description = "Default security group para acceso controlado"
  vpc_id      = aws_vpc.main.id

  # Ingress restringido a IPs seguras (no 0.0.0.0/0)
  ingress {
    description = "SSH acceso limitado"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = var.allowed_ips
  }

  # Egress restringido (ejemplo: solo HTTP/HTTPS)
  egress {
    description = "Permitir solo tráfico web saliente"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description = "Permitir solo tráfico HTTPS saliente"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
