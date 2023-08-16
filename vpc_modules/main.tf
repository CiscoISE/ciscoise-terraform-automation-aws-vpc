resource "aws_vpc" "cisco_ise" {
  cidr_block = var.vpc_cidr

  tags = {
    Name = var.vpc_name
  }
}

resource "aws_internet_gateway" "cisco_ise_internet_gateway" {
  vpc_id = aws_vpc.cisco_ise.id

  tags = {
    Name = "Cisco_ISE_IGW"
  }
}


resource "aws_subnet" "public_subnets" {
  count = length(var.public_subnet_cidrs)

  cidr_block        = var.public_subnet_cidrs[count.index]
  vpc_id            = aws_vpc.cisco_ise.id
  #availability_zone = element(var.availability_zones, count.index)
  availability_zone = var.availability_zones[count.index]

  tags = {
    Name = "PublicSubnet-${count.index}"
  }
}

resource "aws_subnet" "private_subnets" {
  count = length(var.private_subnet_cidrs)

  cidr_block        = var.private_subnet_cidrs[count.index]
  vpc_id            = aws_vpc.cisco_ise.id
  #availability_zone = element(var.availability_zones, count.index)
  availability_zone = var.availability_zones[count.index]

  tags = {
    Name = "PrivateSubnet-${count.index}"
  }
}

resource "aws_nat_gateway" "cisco_ise_nat_gateways" {
  count = length(var.public_subnet_cidrs)
  allocation_id = element(aws_eip.nat_ips.*.id, count.index)
  subnet_id     = element(aws_subnet.public_subnets.*.id, count.index)

  tags = {
    Name = "NATGateway-${count.index}"
  }
  depends_on = [aws_internet_gateway.cisco_ise_internet_gateway]
}

resource "aws_eip" "cisco_ise_nat_ips" {
  count = length(var.public_subnet_cidrs)

  vpc = true

  tags = {
    Name = "NATIP-${count.index}"
  }
}

resource "aws_ec2_dhcp_options" "cisco_ise_dhcp_options" {
  domain_name_servers = ["AmazonProvidedDNS"]
  domain_name        = "ec2.internal"
  tags = {
    Name = "cisco_ise_DHCPOptions"
  }
}

resource "aws_vpc_dhcp_options_association" "cisco_ise_dhcp_association" {
  vpc_id             = aws_vpc.cisco_ise.id
  dhcp_options_id    = aws_ec2_dhcp_options.cisco_ise_dhcp_options.id
}