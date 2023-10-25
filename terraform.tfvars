# AWS Setup related variables:
availability_zones = [
  "us-east-2a",
  "us-east-2b",
  "us-east-2c"
]
aws_region               = "us-east-2"    
create_eips              = true
create_nat_gateways      = true
dhcp_domain_name         = "ec2.internal"
dhcp_options_domain_name = "drilldevops.in"
domain_name_servers = [
  "169.254.169.253"
]
enable_dns_hostnames  = true
enable_dns_support    = true
internet_gateway_name = "Cisco_ISE_IGW"
ntp_servers = [
  "169.254.169.123"
]

# Enter the Subnet CIDR for Private Subnets 
private_subnet_cidrs = [
  "10.0.11.0/24",
  "10.0.12.0/24",
  "10.0.13.0/24"
]

# Enter the Subnet CIDR for Public Subnets 
public_subnet_cidrs = [
  "10.0.1.0/24",
  "10.0.2.0/24",
  "10.0.3.0/24"
]

# Enter Network related variables
vpc_cidr = "10.0.0.0/16"
vpc_name = "cisco_ise"
