# Automated ISE VPC setup using Terraform on AWS

This project runs terraform module to setup ISE VPC infrastructure on AWS

## Requirements
- Terraform >= 1.0.0
- AWS CLIv2

## Installations
1. To install terraform, follow the instructions as per your operating system - [Install Terraform](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)

2. To install AWS CLIv2, follow the instructions mentioned here - [Install AWS CLIv2](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html)

## Configure AWS
To configure and allow access to AWS account, create IAM user with Administrator access policy and create Programmatic Access Key (AWS Access key and Secret key). Follow this document to manage access keys - [How to manage aws access keys](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_access-keys.html#Using_CreateAccessKey). 

Run aws configure as below and enter the access and secret keys.

```
aws configure
AWS Access Key ID [*******************]: <Enter access key>
AWS Secret Access Key [********************]: <Enter secret key>
Default region name [us-east-2]: 

```

## Prerequisites
Before running terraform modules, follow below steps

1. Setup SSH for git, follow this documentation - [How to setup SSH for git](https://www.warp.dev/terminus/git-clone-ssh) 

2. Create a s3 bucket to store terraform backend state files. Refer this documentation - [How to create a s3 bucket](https://docs.aws.amazon.com/AmazonS3/latest/userguide/create-bucket-overview.html).

## Run terraform modules

Clone this git repo by using below this command 
  ```
  git clone https://github3.cisco.com/techops-operation/ise_launch_template-terraform-aws-vpc.git
  ```

Run below commands to deploy the VPC stack
 ```
 terraform init --upgrade \
   -backend-config="bucket=<bucket_name>" \            # Specify the s3 bucket name created in prerequisites - step 3
   -backend-config="region=<bucket_region>" \          # Specify the s3 bucket region e.g., us-east-1 for N. Virginia
   -reconfigure
 terraform plan
 terraform apply
 ```

Type 'yes' when prompted after running terraform apply

This deployment takes approx 10 minutes to deploy.
