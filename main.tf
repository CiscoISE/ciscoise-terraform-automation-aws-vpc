module "cisco_ise" {
  source = "./vpc_modules"


  vpc_cidr              = var.vpc_cidr
  vpc_name              = var.vpc_name
  availability_zones    = var.availability_zones
  public_subnet_cidrs   = var.public_subnet_cidrs
  private_subnet_cidrs  = var.private_subnet_cidrs
  internet_gateway_name = var.internet_gateway_name
  dhcp_domain_name      = var.dhcp_domain_name
  aws_region            = var.aws_region

}

