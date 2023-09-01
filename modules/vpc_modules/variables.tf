variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "region" {
  description = "AWS region for the resources"
  type        = string
  default     =  "us-east-2"
}

variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-2"
}

variable "vpc_name" {
  description = "Name tag for the VPC"
  type        = string
  default     = "cisco_ise"
}

variable "enable_dns_support" {
  description = "Whether to enable DNS support for the VPC"
  type        = bool
  default     = true
}

variable "enable_dns_hostnames" {
  description = "Whether to enable DNS hostnames for the VPC"
  type        = bool
  default     = true
}

variable "availability_zones" {
  description = "List of availability zones"
  type        = list(string)
  default     = ["us-east-2a", "us-east-2b", "us-east-2c"]
}

variable "public_subnet_cidrs" {
  description = "List of CIDR blocks for public subnets"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}

variable "private_subnet_cidrs" {
  description = "List of CIDR blocks for private subnets"
  type        = list(string)
  default     = ["10.0.11.0/24", "10.0.12.0/24", "10.0.13.0/24"]
}

variable "internet_gateway_name" {
  description = "Name tag for the Internet Gateway"
  type        = string
  default     = "Cisco_ISE_IGW"
}
variable "dhcp_domain_name" {
  description = "Domain name for DHCP options"
  type        = string
  default     = "ec2.internal"
}

variable "create_nat_gateways" {
  description = "Create NAT Gateways for public subnets"
  type        = bool
  default     = true
}

variable "create_eips" {
  description = "Create Elastic IPs for NAT Gateways"
  type        = bool
  default     = true
}

variable "domain_name_servers" {
  description = "List of DNS servers to use"
  type        = list(string)
  default     = ["169.254.169.253"]  # Default DNS server(s)
}

variable "ntp_servers" {
  description = "List of NTP servers to use"
  type        = list(string)
  default     = ["169.254.169.123"]  # Default NTP server(s)
}

variable "dhcp_options_domain_name" {
  description = "Domain name for DHCP options"
  type        = string
  default     = "drilldevops.in"     # Default domain name
}