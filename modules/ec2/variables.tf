variable "subnet_id" {
  description = "Subnet ID for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "instance_name" {
  description = "Value for the instance Name tag"
  type        = string
  default     = "Terraform-Web"
}

variable "vpc_security_group_ids" {
  description = "Security groups for the instance (recommended for custom VPCs)"
  type        = list(string)
  default     = []
}

variable "iam_instance_profile" {
  description = "IAM instance profile name to attach (optional)"
  type        = string
  default     = null
}
