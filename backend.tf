terraform {
  backend "s3" {
    key     = "terraform/vpc/vpc.tfstate" 
    encrypt = "true"
    # Optionally, you can specify DynamoDB table for state locking
    # dynamodb_table = "your-dynamodb-table"
  }
}
