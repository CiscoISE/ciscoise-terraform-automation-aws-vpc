# AWS Setup related variables:

# List of availability zones to use for creating resources
availability_zones = [
  "us-east-2a",
  "us-east-2b",
  "us-east-2c"
]
aws_region               = "us-east-2"        # AWS region in which resources will be provisioned.
create_eips              = true               # Whether to create Elastic IPs (EIPs) for resources like NAT gateways.
create_nat_gateways      = true               # Whether to create NAT gateways for private subnets to access the internet.
dhcp_domain_name         = "ec2.internal"     # The domain name to use for the DHCP option set (Amazon-provided DNS name).
dhcp_options_domain_name = "drilldevops.in"   # The domain name to use for the DHCP option set (custom DNS name).

# List of DNS servers for instances in the VPC.
domain_name_servers = [                       
  "169.254.169.253"
]  

enable_dns_hostnames  = true                  # Whether to enable DNS hostnames for instances in the VPC. 
enable_dns_support    = true                  # Whether to enable DNS resolution for instances in the VPC.
internet_gateway_name = "Cisco_ISE_IGW"       # The name of the internet gateway to be created.

# List of NTP (Network Time Protocol) servers for instances in the VPC.
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
vpc_cidr = "10.0.0.0/16"                       # The CIDR block for the VPC (Virtual Private Cloud).
vpc_name = "cisco_ise"                         # The name of the VPC.