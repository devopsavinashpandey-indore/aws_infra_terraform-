variable "name_prefix" {
  description = "Prefix for IAM resource names"
  type        = string
}

variable "s3_bucket_arn" {
  description = "ARN of the S3 bucket the EC2 role may access"
  type        = string
}
