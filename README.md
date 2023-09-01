# ise_launch_template-terraform-aws-vpc
KCHITIKI-M-G2NE:ise_launch_template-terraform-aws-vpc kchitiki$ terraform plan

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # random_string.rand4 will be created
  + resource "random_string" "rand4" {
      + id          = (known after apply)
      + length      = 4
      + lower       = true
      + min_lower   = 0
      + min_numeric = 0
      + min_special = 0
      + min_upper   = 0
      + number      = true
      + numeric     = true
      + result      = (known after apply)
      + special     = false
      + upper       = false
    }

  # module.cisco_ise.aws_eip.cisco_ise_nat_ips[0] will be created
  + resource "aws_eip" "cisco_ise_nat_ips" {
      + allocation_id        = (known after apply)
      + association_id       = (known after apply)
      + carrier_ip           = (known after apply)
      + customer_owned_ip    = (known after apply)
      + domain               = (known after apply)
      + id                   = (known after apply)
      + instance             = (known after apply)
      + network_border_group = (known after apply)
      + network_interface    = (known after apply)
      + private_dns          = (known after apply)
      + private_ip           = (known after apply)
      + public_dns           = (known after apply)
      + public_ip            = (known after apply)
      + public_ipv4_pool     = (known after apply)
      + tags                 = {
          + "Name" = "NATEIP-0"
        }
      + tags_all             = {
          + "Name" = "NATEIP-0"
        }
      + vpc                  = (known after apply)
    }

  # module.cisco_ise.aws_eip.cisco_ise_nat_ips[1] will be created
  + resource "aws_eip" "cisco_ise_nat_ips" {
      + allocation_id        = (known after apply)
      + association_id       = (known after apply)
      + carrier_ip           = (known after apply)
      + customer_owned_ip    = (known after apply)
      + domain               = (known after apply)
      + id                   = (known after apply)
      + instance             = (known after apply)
      + network_border_group = (known after apply)
      + network_interface    = (known after apply)
      + private_dns          = (known after apply)
      + private_ip           = (known after apply)
      + public_dns           = (known after apply)
      + public_ip            = (known after apply)
      + public_ipv4_pool     = (known after apply)
      + tags                 = {
          + "Name" = "NATEIP-1"
        }
      + tags_all             = {
          + "Name" = "NATEIP-1"
        }
      + vpc                  = (known after apply)
    }

  # module.cisco_ise.aws_eip.cisco_ise_nat_ips[2] will be created
  + resource "aws_eip" "cisco_ise_nat_ips" {
      + allocation_id        = (known after apply)
      + association_id       = (known after apply)
      + carrier_ip           = (known after apply)
      + customer_owned_ip    = (known after apply)
      + domain               = (known after apply)
      + id                   = (known after apply)
      + instance             = (known after apply)
      + network_border_group = (known after apply)
      + network_interface    = (known after apply)
      + private_dns          = (known after apply)
      + private_ip           = (known after apply)
      + public_dns           = (known after apply)
      + public_ip            = (known after apply)
      + public_ipv4_pool     = (known after apply)
      + tags                 = {
          + "Name" = "NATEIP-2"
        }
      + tags_all             = {
          + "Name" = "NATEIP-2"
        }
      + vpc                  = (known after apply)
    }

  # module.cisco_ise.aws_internet_gateway.cisco_ise_internet_gateway will be created
  + resource "aws_internet_gateway" "cisco_ise_internet_gateway" {
      + arn      = (known after apply)
      + id       = (known after apply)
      + owner_id = (known after apply)
      + tags     = {
          + "Name" = "Cisco_ISE_IGW"
        }
      + tags_all = {
          + "Name" = "Cisco_ISE_IGW"
        }
      + vpc_id   = (known after apply)
    }

  # module.cisco_ise.aws_nat_gateway.cisco_ise_nat_gateways[0] will be created
  + resource "aws_nat_gateway" "cisco_ise_nat_gateways" {
      + allocation_id                      = (known after apply)
      + association_id                     = (known after apply)
      + connectivity_type                  = "public"
      + id                                 = (known after apply)
      + network_interface_id               = (known after apply)
      + private_ip                         = (known after apply)
      + public_ip                          = (known after apply)
      + secondary_private_ip_address_count = (known after apply)
      + secondary_private_ip_addresses     = (known after apply)
      + subnet_id                          = (known after apply)
      + tags                               = {
          + "Name" = "NATGateway-0"
        }
      + tags_all                           = {
          + "Name" = "NATGateway-0"
        }
    }

  # module.cisco_ise.aws_nat_gateway.cisco_ise_nat_gateways[1] will be created
  + resource "aws_nat_gateway" "cisco_ise_nat_gateways" {
      + allocation_id                      = (known after apply)
      + association_id                     = (known after apply)
      + connectivity_type                  = "public"
      + id                                 = (known after apply)
      + network_interface_id               = (known after apply)
      + private_ip                         = (known after apply)
      + public_ip                          = (known after apply)
      + secondary_private_ip_address_count = (known after apply)
      + secondary_private_ip_addresses     = (known after apply)
      + subnet_id                          = (known after apply)
      + tags                               = {
          + "Name" = "NATGateway-1"
        }
      + tags_all                           = {
          + "Name" = "NATGateway-1"
        }
    }

  # module.cisco_ise.aws_nat_gateway.cisco_ise_nat_gateways[2] will be created
  + resource "aws_nat_gateway" "cisco_ise_nat_gateways" {
      + allocation_id                      = (known after apply)
      + association_id                     = (known after apply)
      + connectivity_type                  = "public"
      + id                                 = (known after apply)
      + network_interface_id               = (known after apply)
      + private_ip                         = (known after apply)
      + public_ip                          = (known after apply)
      + secondary_private_ip_address_count = (known after apply)
      + secondary_private_ip_addresses     = (known after apply)
      + subnet_id                          = (known after apply)
      + tags                               = {
          + "Name" = "NATGateway-2"
        }
      + tags_all                           = {
          + "Name" = "NATGateway-2"
        }
    }

  # module.cisco_ise.aws_route_table.private_subnet_route_tables[0] will be created
  + resource "aws_route_table" "private_subnet_route_tables" {
      + arn              = (known after apply)
      + id               = (known after apply)
      + owner_id         = (known after apply)
      + propagating_vgws = (known after apply)
      + route            = (known after apply)
      + tags             = {
          + "Name" = "PrivateSubnetRouteTable-0"
        }
      + tags_all         = {
          + "Name" = "PrivateSubnetRouteTable-0"
        }
      + vpc_id           = (known after apply)
    }

  # module.cisco_ise.aws_route_table.private_subnet_route_tables[1] will be created
  + resource "aws_route_table" "private_subnet_route_tables" {
      + arn              = (known after apply)
      + id               = (known after apply)
      + owner_id         = (known after apply)
      + propagating_vgws = (known after apply)
      + route            = (known after apply)
      + tags             = {
          + "Name" = "PrivateSubnetRouteTable-1"
        }
      + tags_all         = {
          + "Name" = "PrivateSubnetRouteTable-1"
        }
      + vpc_id           = (known after apply)
    }

  # module.cisco_ise.aws_route_table.private_subnet_route_tables[2] will be created
  + resource "aws_route_table" "private_subnet_route_tables" {
      + arn              = (known after apply)
      + id               = (known after apply)
      + owner_id         = (known after apply)
      + propagating_vgws = (known after apply)
      + route            = (known after apply)
      + tags             = {
          + "Name" = "PrivateSubnetRouteTable-2"
        }
      + tags_all         = {
          + "Name" = "PrivateSubnetRouteTable-2"
        }
      + vpc_id           = (known after apply)
    }

  # module.cisco_ise.aws_route_table.public_subnet_route_table will be created
  + resource "aws_route_table" "public_subnet_route_table" {
      + arn              = (known after apply)
      + id               = (known after apply)
      + owner_id         = (known after apply)
      + propagating_vgws = (known after apply)
      + route            = (known after apply)
      + tags             = {
          + "Name" = "PublicSubnetsRouteTable"
        }
      + tags_all         = {
          + "Name" = "PublicSubnetsRouteTable"
        }
      + vpc_id           = (known after apply)
    }

  # module.cisco_ise.aws_route_table_association.private_subnet_association[0] will be created
  + resource "aws_route_table_association" "private_subnet_association" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # module.cisco_ise.aws_route_table_association.private_subnet_association[1] will be created
  + resource "aws_route_table_association" "private_subnet_association" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # module.cisco_ise.aws_route_table_association.private_subnet_association[2] will be created
  + resource "aws_route_table_association" "private_subnet_association" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # module.cisco_ise.aws_route_table_association.public_subnet_association[0] will be created
  + resource "aws_route_table_association" "public_subnet_association" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # module.cisco_ise.aws_route_table_association.public_subnet_association[1] will be created
  + resource "aws_route_table_association" "public_subnet_association" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # module.cisco_ise.aws_route_table_association.public_subnet_association[2] will be created
  + resource "aws_route_table_association" "public_subnet_association" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # module.cisco_ise.aws_route_table_association.s3_endpoint_association[0] will be created
  + resource "aws_route_table_association" "s3_endpoint_association" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # module.cisco_ise.aws_route_table_association.s3_endpoint_association[1] will be created
  + resource "aws_route_table_association" "s3_endpoint_association" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # module.cisco_ise.aws_route_table_association.s3_endpoint_association[2] will be created
  + resource "aws_route_table_association" "s3_endpoint_association" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # module.cisco_ise.aws_subnet.private_subnets[0] will be created
  + resource "aws_subnet" "private_subnets" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = "us-east-2a"
      + availability_zone_id                           = (known after apply)
      + cidr_block                                     = "10.0.11.0/24"
      + enable_dns64                                   = false
      + enable_resource_name_dns_a_record_on_launch    = false
      + enable_resource_name_dns_aaaa_record_on_launch = false
      + id                                             = (known after apply)
      + ipv6_cidr_block_association_id                 = (known after apply)
      + ipv6_native                                    = false
      + map_public_ip_on_launch                        = false
      + owner_id                                       = (known after apply)
      + private_dns_hostname_type_on_launch            = (known after apply)
      + tags                                           = {
          + "Name" = "PrivateSubnet-0"
        }
      + tags_all                                       = {
          + "Name" = "PrivateSubnet-0"
        }
      + vpc_id                                         = (known after apply)
    }

  # module.cisco_ise.aws_subnet.private_subnets[1] will be created
  + resource "aws_subnet" "private_subnets" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = "us-east-2b"
      + availability_zone_id                           = (known after apply)
      + cidr_block                                     = "10.0.12.0/24"
      + enable_dns64                                   = false
      + enable_resource_name_dns_a_record_on_launch    = false
      + enable_resource_name_dns_aaaa_record_on_launch = false
      + id                                             = (known after apply)
      + ipv6_cidr_block_association_id                 = (known after apply)
      + ipv6_native                                    = false
      + map_public_ip_on_launch                        = false
      + owner_id                                       = (known after apply)
      + private_dns_hostname_type_on_launch            = (known after apply)
      + tags                                           = {
          + "Name" = "PrivateSubnet-1"
        }
      + tags_all                                       = {
          + "Name" = "PrivateSubnet-1"
        }
      + vpc_id                                         = (known after apply)
    }

  # module.cisco_ise.aws_subnet.private_subnets[2] will be created
  + resource "aws_subnet" "private_subnets" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = "us-east-2c"
      + availability_zone_id                           = (known after apply)
      + cidr_block                                     = "10.0.13.0/24"
      + enable_dns64                                   = false
      + enable_resource_name_dns_a_record_on_launch    = false
      + enable_resource_name_dns_aaaa_record_on_launch = false
      + id                                             = (known after apply)
      + ipv6_cidr_block_association_id                 = (known after apply)
      + ipv6_native                                    = false
      + map_public_ip_on_launch                        = false
      + owner_id                                       = (known after apply)
      + private_dns_hostname_type_on_launch            = (known after apply)
      + tags                                           = {
          + "Name" = "PrivateSubnet-2"
        }
      + tags_all                                       = {
          + "Name" = "PrivateSubnet-2"
        }
      + vpc_id                                         = (known after apply)
    }

  # module.cisco_ise.aws_subnet.public_subnets[0] will be created
  + resource "aws_subnet" "public_subnets" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = "us-east-2a"
      + availability_zone_id                           = (known after apply)
      + cidr_block                                     = "10.0.1.0/24"
      + enable_dns64                                   = false
      + enable_resource_name_dns_a_record_on_launch    = false
      + enable_resource_name_dns_aaaa_record_on_launch = false
      + id                                             = (known after apply)
      + ipv6_cidr_block_association_id                 = (known after apply)
      + ipv6_native                                    = false
      + map_public_ip_on_launch                        = false
      + owner_id                                       = (known after apply)
      + private_dns_hostname_type_on_launch            = (known after apply)
      + tags                                           = {
          + "Name" = "PublicSubnet-0"
        }
      + tags_all                                       = {
          + "Name" = "PublicSubnet-0"
        }
      + vpc_id                                         = (known after apply)
    }

  # module.cisco_ise.aws_subnet.public_subnets[1] will be created
  + resource "aws_subnet" "public_subnets" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = "us-east-2b"
      + availability_zone_id                           = (known after apply)
      + cidr_block                                     = "10.0.2.0/24"
      + enable_dns64                                   = false
      + enable_resource_name_dns_a_record_on_launch    = false
      + enable_resource_name_dns_aaaa_record_on_launch = false
      + id                                             = (known after apply)
      + ipv6_cidr_block_association_id                 = (known after apply)
      + ipv6_native                                    = false
      + map_public_ip_on_launch                        = false
      + owner_id                                       = (known after apply)
      + private_dns_hostname_type_on_launch            = (known after apply)
      + tags                                           = {
          + "Name" = "PublicSubnet-1"
        }
      + tags_all                                       = {
          + "Name" = "PublicSubnet-1"
        }
      + vpc_id                                         = (known after apply)
    }

  # module.cisco_ise.aws_subnet.public_subnets[2] will be created
  + resource "aws_subnet" "public_subnets" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = "us-east-2c"
      + availability_zone_id                           = (known after apply)
      + cidr_block                                     = "10.0.3.0/24"
      + enable_dns64                                   = false
      + enable_resource_name_dns_a_record_on_launch    = false
      + enable_resource_name_dns_aaaa_record_on_launch = false
      + id                                             = (known after apply)
      + ipv6_cidr_block_association_id                 = (known after apply)
      + ipv6_native                                    = false
      + map_public_ip_on_launch                        = false
      + owner_id                                       = (known after apply)
      + private_dns_hostname_type_on_launch            = (known after apply)
      + tags                                           = {
          + "Name" = "PublicSubnet-2"
        }
      + tags_all                                       = {
          + "Name" = "PublicSubnet-2"
        }
      + vpc_id                                         = (known after apply)
    }

  # module.cisco_ise.aws_vpc.cisco_ise will be created
  + resource "aws_vpc" "cisco_ise" {
      + arn                                  = (known after apply)
      + cidr_block                           = "10.0.0.0/16"
      + default_network_acl_id               = (known after apply)
      + default_route_table_id               = (known after apply)
      + default_security_group_id            = (known after apply)
      + dhcp_options_id                      = (known after apply)
      + enable_dns_hostnames                 = true
      + enable_dns_support                   = true
      + enable_network_address_usage_metrics = (known after apply)
      + id                                   = (known after apply)
      + instance_tenancy                     = "default"
      + ipv6_association_id                  = (known after apply)
      + ipv6_cidr_block                      = (known after apply)
      + ipv6_cidr_block_network_border_group = (known after apply)
      + main_route_table_id                  = (known after apply)
      + owner_id                             = (known after apply)
      + tags                                 = {
          + "Name" = "cisco_ise"
        }
      + tags_all                             = {
          + "Name" = "cisco_ise"
        }
    }

  # module.cisco_ise.aws_vpc_dhcp_options.cisco_ise_dhcp_options will be created
  + resource "aws_vpc_dhcp_options" "cisco_ise_dhcp_options" {
      + arn                 = (known after apply)
      + domain_name         = "drilldevops.in"
      + domain_name_servers = [
          + "169.254.169.253",
        ]
      + id                  = (known after apply)
      + ntp_servers         = [
          + "169.254.169.123",
        ]
      + owner_id            = (known after apply)
      + tags                = {
          + "Name" = "cisco_ise_DHCPOptions"
        }
      + tags_all            = {
          + "Name" = "cisco_ise_DHCPOptions"
        }
    }

  # module.cisco_ise.aws_vpc_dhcp_options_association.cisco_ise_dhcp_association will be created
  + resource "aws_vpc_dhcp_options_association" "cisco_ise_dhcp_association" {
      + dhcp_options_id = (known after apply)
      + id              = (known after apply)
      + vpc_id          = (known after apply)
    }

  # module.cisco_ise.aws_vpc_endpoint.s3_endpoint will be created
  + resource "aws_vpc_endpoint" "s3_endpoint" {
      + arn                   = (known after apply)
      + cidr_blocks           = (known after apply)
      + dns_entry             = (known after apply)
      + id                    = (known after apply)
      + ip_address_type       = (known after apply)
      + network_interface_ids = (known after apply)
      + owner_id              = (known after apply)
      + policy                = (known after apply)
      + prefix_list_id        = (known after apply)
      + private_dns_enabled   = false
      + requester_managed     = (known after apply)
      + route_table_ids       = (known after apply)
      + security_group_ids    = (known after apply)
      + service_name          = "com.amazonaws.us-east-2.s3"
      + state                 = (known after apply)
      + subnet_ids            = (known after apply)
      + tags                  = {
          + "Name" = "cisco-ise-s3-vpce"
        }
      + tags_all              = {
          + "Name" = "cisco-ise-s3-vpce"
        }
      + vpc_endpoint_type     = "Gateway"
      + vpc_id                = (known after apply)
    }

Plan: 31 to add, 0 to change, 0 to destroy.

Changes to Outputs:
  + dhcp_options_id         = (known after apply)
  + internet_gateway_id     = (known after apply)
  + nat_eip_ids             = [
      + (known after apply),
      + (known after apply),
      + (known after apply),
    ]
  + nat_gateway_ids         = [
      + (known after apply),
      + (known after apply),
      + (known after apply),
    ]
  + private_route_table_ids = [
      + (known after apply),
      + (known after apply),
      + (known after apply),
    ]
  + private_subnet_ids      = [
      + (known after apply),
      + (known after apply),
      + (known after apply),
    ]
  + public_route_table_id   = (known after apply)
  + public_subnet_ids       = [
      + (known after apply),
      + (known after apply),
      + (known after apply),
    ]
  + random_string_value     = (known after apply)
  + s3_vpc_endpoint_id      = (known after apply)
  + vpc_id                  = (known after apply)

──────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────

Note: You didn't use the -out option to save this plan, so Terraform can't guarantee to take exactly these actions if you run "terraform apply" now.
