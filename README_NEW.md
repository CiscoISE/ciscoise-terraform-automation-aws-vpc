<!-- BEGIN_TF_DOCS -->
## Inputs

| Name | Description | Type | Default |
|------|-------------|------|---------|
| <a name="input_availability_zones"></a> [availability\_zones](#input\_availability\_zones) | List of availability zones | `list(string)` | <pre>[<br>  "us-east-2a",<br>  "us-east-2b",<br>  "us-east-2c"<br>]</pre> |
| <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region) | AWS region | `string` | `"us-east-2"` |
| <a name="input_create_eips"></a> [create\_eips](#input\_create\_eips) | Create Elastic IPs for NAT Gateways | `bool` | `true` |
| <a name="input_create_nat_gateways"></a> [create\_nat\_gateways](#input\_create\_nat\_gateways) | Create NAT Gateways for public subnets | `bool` | `true` |
| <a name="input_dhcp_domain_name"></a> [dhcp\_domain\_name](#input\_dhcp\_domain\_name) | Domain name for DHCP options | `string` | `"ec2.internal"` |
| <a name="input_dhcp_options_domain_name"></a> [dhcp\_options\_domain\_name](#input\_dhcp\_options\_domain\_name) | Domain name for DHCP options | `string` | `"drilldevops.in"` |
| <a name="input_domain_name_servers"></a> [domain\_name\_servers](#input\_domain\_name\_servers) | List of DNS servers to use | `list(string)` | <pre>[<br>  "169.254.169.253"<br>]</pre> |
| <a name="input_enable_dns_hostnames"></a> [enable\_dns\_hostnames](#input\_enable\_dns\_hostnames) | Whether to enable DNS hostnames for the VPC | `bool` | `true` |
| <a name="input_enable_dns_support"></a> [enable\_dns\_support](#input\_enable\_dns\_support) | Whether to enable DNS support for the VPC | `bool` | `true` |
| <a name="input_internet_gateway_name"></a> [internet\_gateway\_name](#input\_internet\_gateway\_name) | Name tag for the Internet Gateway | `string` | `"Cisco_ISE_IGW"` |
| <a name="input_ntp_servers"></a> [ntp\_servers](#input\_ntp\_servers) | List of NTP servers to use | `list(string)` | <pre>[<br>  "169.254.169.123"<br>]</pre> |
| <a name="input_private_subnet_cidrs"></a> [private\_subnet\_cidrs](#input\_private\_subnet\_cidrs) | List of CIDR blocks for private subnets | `list(string)` | <pre>[<br>  "10.0.11.0/24",<br>  "10.0.12.0/24",<br>  "10.0.13.0/24"<br>]</pre> |
| <a name="input_public_subnet_cidrs"></a> [public\_subnet\_cidrs](#input\_public\_subnet\_cidrs) | List of CIDR blocks for public subnets | `list(string)` | <pre>[<br>  "10.0.1.0/24",<br>  "10.0.2.0/24",<br>  "10.0.3.0/24"<br>]</pre> |
| <a name="input_region"></a> [region](#input\_region) | AWS region for the resources | `string` | `"us-east-2"` |
| <a name="input_vpc_cidr"></a> [vpc\_cidr](#input\_vpc\_cidr) | CIDR block for the VPC | `string` | `"10.0.0.0/16"` |
| <a name="input_vpc_name"></a> [vpc\_name](#input\_vpc\_name) | Name tag for the VPC | `string` | `"cisco_ise"` |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_dhcp_options_id"></a> [dhcp\_options\_id](#output\_dhcp\_options\_id) | The ID of the DHCP Options |
| <a name="output_internet_gateway_id"></a> [internet\_gateway\_id](#output\_internet\_gateway\_id) | The ID of the Internet Gateway |
| <a name="output_nat_eip_ids"></a> [nat\_eip\_ids](#output\_nat\_eip\_ids) | The IDs of the NAT Elastic IPs |
| <a name="output_nat_gateway_ids"></a> [nat\_gateway\_ids](#output\_nat\_gateway\_ids) | The IDs of the NAT Gateways |
| <a name="output_private_route_table_ids"></a> [private\_route\_table\_ids](#output\_private\_route\_table\_ids) | The IDs of the private subnet route tables |
| <a name="output_private_subnet_ids"></a> [private\_subnet\_ids](#output\_private\_subnet\_ids) | The IDs of the private subnets |
| <a name="output_public_route_table_id"></a> [public\_route\_table\_id](#output\_public\_route\_table\_id) | The ID of the public subnet route table |
| <a name="output_public_subnet_ids"></a> [public\_subnet\_ids](#output\_public\_subnet\_ids) | The IDs of the public subnets |
| <a name="output_random_string_value"></a> [random\_string\_value](#output\_random\_string\_value) | Randomly generated string |
| <a name="output_s3_vpc_endpoint_id"></a> [s3\_vpc\_endpoint\_id](#output\_s3\_vpc\_endpoint\_id) | The ID of the S3 VPC Endpoint |
| <a name="output_vpc_id"></a> [vpc\_id](#output\_vpc\_id) | The ID of the VPC |
<!-- END_TF_DOCS -->