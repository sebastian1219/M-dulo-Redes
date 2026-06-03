output "vpc_id" {
  description = "ID de la VPC creada"
  value       = aws_vpc.main.id
}

output "subnet_ids" {
  description = "IDs de las subnets públicas"
  value       = aws_subnet.public[*].id
}

output "sg_id" {
  description = "ID del security group"
  value       = aws_security_group.default.id
}
