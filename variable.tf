variable "region" {
  description = "AWS region for Terraform deployments"
  type        = string
  default     = "ap-south-1"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "private_subnet_cidr" {
  description = "CIDR block for the private subnet"
  type        = string
  default     = "10.0.2.0/24"
}

variable "name_prefix" {
  description = "Prefix for VPC resource Name tags"
  type        = string
  default     = "main"
}

variable "instance_type" {
  description = "EC2 instance type for the web server"
  type        = string
  default     = "t2.micro"
}

variable "instance_name" {
  description = "Name tag for the EC2 instance"
  type        = string
  default     = "Terraform-Web"
}

variable "s3_bucket_name" {
  description = "Optional globally unique S3 bucket name; if null, name is derived from name_prefix and account ID"
  type        = string
  default     = null
}

variable "s3_enable_versioning" {
  description = "Enable versioning on the app data bucket"
  type        = bool
  default     = false
}

variable "allow_ssh" {
  description = "Allow inbound SSH (22) on the web security group from ssh_cidr"
  type        = bool
  default     = false
}

variable "ssh_cidr" {
  description = "CIDR for SSH when allow_ssh is true"
  type        = string
  default     = "0.0.0.0/0"
}

variable "http_cidr" {
  description = "CIDR for HTTP (80) on the web security group"
  type        = string
  default     = "0.0.0.0/0"
}
