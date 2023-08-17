variable "aws_region" {
  description = "AWS region for the resources"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "vpc_name" {
  description = "Name tag for the VPC"
  type        = string
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
}

variable "dhcp_domain_name" {
  description = "Domain name for DHCP options"
  type        = string
}
