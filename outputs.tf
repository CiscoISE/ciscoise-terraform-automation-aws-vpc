output "random_string_value" {
  description = "Randomly generated string"
  value       = random_string.rand4.result
}

output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.cisco_ise.vpc_id
}

output "internet_gateway_id" {
  description = "The ID of the Internet Gateway"
  value       = module.cisco_ise.internet_gateway_id
}

output "public_subnet_ids" {
  description = "The IDs of the public subnets"
  value       = module.cisco_ise.public_subnet_ids
}

output "private_subnet_ids" {
  description = "The IDs of the private subnets"
  value       = module.cisco_ise.private_subnet_ids
}

output "nat_gateway_ids" {
  description = "The IDs of the NAT Gateways"
  value       = module.cisco_ise.nat_gateway_ids
}

output "nat_eip_ids" {
  description = "The IDs of the NAT Elastic IPs"
  value       = module.cisco_ise.nat_eip_ids
}

output "dhcp_options_id" {
  description = "The ID of the DHCP Options"
  value       = module.cisco_ise.dhcp_options_id
}


output "public_route_table_id" {
  description = "The ID of the public subnet route table"
  value       = module.cisco_ise.public_route_table_id
}

output "private_route_table_ids" {
  description = "The IDs of the private subnet route tables"
  value       = module.cisco_ise.private_route_table_ids
}

#output "s3_vpc_endpoint_id" {
#  description = "The ID of the S3 VPC Endpoint"
#  value       = module.cisco_ise.s3_vpc_endpoint_id
#} 

# output "s3_endpoint_route_ids" {
#   description = "The IDs of the S3 endpoint routes"
#   value       = module.cisco_ise.s3_endpoint_route_ids
# }
