output "role_arn" {
  description = "ARN of the IAM role"
  value       = aws_iam_role.ec2.arn
}

output "instance_profile_name" {
  description = "Name of the instance profile to attach to EC2"
  value       = aws_iam_instance_profile.ec2.name
}
