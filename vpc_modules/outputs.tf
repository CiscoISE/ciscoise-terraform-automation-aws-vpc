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
output "internet_gateway_id" {
  description = "The ID of the created Internet Gateway"
  value       = aws_internet_gateway.cisco_ise_internet_gateway.id
}
output "dhcp_options_id" {
  description = "The ID of the created DHCP options"
  value       = aws_ec2_dhcp_options.cisco_ise_dhcp_options.id
}
