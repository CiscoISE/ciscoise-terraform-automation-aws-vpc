resource "aws_vpc" "cisco_ise" {
  cidr_block = var.vpc_cidr

  tags = {
    Name = var.vpc_name
  }
}

resource "aws_subnet" "public_subnets" {
  count = length(var.public_subnet_cidrs)

  cidr_block        = var.public_subnet_cidrs[count.index]
  vpc_id            = aws_vpc.cisco_ise.id
  availability_zone = element(var.availability_zones, count.index)

  tags = {
    Name = "PublicSubnet-${count.index}"
  }
}

resource "aws_subnet" "private_subnets" {
  count = length(var.private_subnet_cidrs)

  cidr_block        = var.private_subnet_cidrs[count.index]
  vpc_id            = aws_vpc.cisco_ise.id
  availability_zone = element(var.availability_zones, count.index)

  tags = {
    Name = "PrivateSubnet-${count.index}"
  }
}
