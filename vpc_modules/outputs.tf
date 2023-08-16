output "vpc_id" {
  description = "The ID of the created VPC"
  value       = aws_vpc.my_vpc.id
}

output "public_subnet_ids" {
  description = "The IDs of the created public subnets"
  value       = aws_subnet.public_subnets[*].id
}

output "private_subnet_ids" {
  description = "The IDs of the created private subnets"
  value       = aws_subnet.private_subnets[*].id
}

