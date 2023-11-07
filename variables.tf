######################################################################################
#######################     Block to add AWS VPC variables   #########################
######################################################################################
variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string

}

variable "aws_region" {
  description = "AWS region"
  type        = string

}

variable "vpc_name" {
  description = "Name tag for the VPC"
  type        = string

}

variable "enable_dns_support" {
  description = "Whether to enable DNS support for the VPC"
  type        = bool

}

variable "enable_dns_hostnames" {
  description = "Whether to enable DNS hostnames for the VPC"
  type        = bool

}


variable "availability_zones" {
  description = "List of availability zones"
  type        = list(string)

}

variable "public_subnet_cidrs" {
  description = "List of CIDR blocks for public subnets"
  type        = list(string)

}

variable "private_subnet_cidrs" {
  description = "List of CIDR blocks for private subnets"
  type        = list(string)

}

variable "internet_gateway_name" {
  description = "Name tag for the Internet Gateway"
  type        = string
  default     = "Cisco_ISE_IGW"
}
variable "dhcp_domain_name" {
  description = "Domain name for DHCP options"
  type        = string

}

variable "create_nat_gateways" {
  description = "Create NAT Gateways for public subnets"
  type        = bool

}

variable "create_eips" {
  description = "Create Elastic IPs for NAT Gateways"
  type        = bool

}

variable "domain_name_servers" {
  description = "List of DNS servers to use"
  type        = list(string)

}

variable "ntp_servers" {
  description = "List of NTP servers to use"
  type        = list(string)

}

variable "dhcp_options_domain_name" {
  description = "Domain name for DHCP options"
  type        = string
}
