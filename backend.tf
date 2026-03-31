terraform {
  backend "s3" {
    bucket         = "your-terraform-state-bucket"
    key            = "aws_infra_terraform/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-locks"
  }
}