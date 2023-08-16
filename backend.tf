terraform {
  backend "s3" {
    bucket  = "cisco-terraform-state-personal-us-east-1"
    key     = "terraform/vpc/vpc.tfstate" 
    region  = "us-east-1"
    encrypt = "true"
    # Optionally, you can specify DynamoDB table for state locking
    # dynamodb_table = "your-dynamodb-table"
  }
}
