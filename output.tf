output "instance_ip" {
  description = "Public IP of the web server"
  value       = module.ec2.public_ip
}

output "vpc_id" {
  description = "ID of the VPC"
  value       = module.vpc.vpc_id
}

output "s3_bucket_name" {
  description = "Application S3 bucket name"
  value       = module.s3.bucket_name
}

output "s3_bucket_arn" {
  description = "Application S3 bucket ARN"
  value       = module.s3.bucket_arn
}

output "web_security_group_id" {
  description = "Security group attached to the web instance"
  value       = module.security_group.security_group_id
}

output "ec2_iam_role_arn" {
  description = "IAM role ARN used by the EC2 instance for S3 access"
  value       = module.iam_ec2_s3.role_arn
}
