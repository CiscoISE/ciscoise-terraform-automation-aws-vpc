provider "aws" {
  region = var.aws_region
}

module "cisco_ise" {
  source = "./vpc_modules"

  vpc_cidr            = "10.0.0.0/16"
  vpc_name            = "cisco_ise"
  public_subnet_cidrs = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  private_subnet_cidrs = ["10.0.11.0/24", "10.0.12.0/24", "10.0.13.0/24"]
  availability_zones  = ["us-east-1a", "us-east-1b", "us-east-1c"]
  aws_region          = "us-east-1"
}

