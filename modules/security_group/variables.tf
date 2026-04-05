variable "vpc_id" {
  description = "VPC ID where the security group is created"
  type        = string
}

variable "name_prefix" {
  description = "Prefix for resource Name tag"
  type        = string
}

variable "allow_ssh" {
  description = "Allow inbound SSH (port 22) from ssh_cidr"
  type        = bool
  default     = false
}

variable "ssh_cidr" {
  description = "CIDR allowed for SSH when allow_ssh is true"
  type        = string
  default     = "0.0.0.0/0"
}

variable "http_cidr" {
  description = "CIDR allowed for HTTP (port 80)"
  type        = string
  default     = "0.0.0.0/0"
}
