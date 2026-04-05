variable "name_prefix" {
  description = "Prefix used when generating a default bucket name"
  type        = string
}

variable "bucket_name" {
  description = "S3 bucket name (globally unique). If null, a name is derived from name_prefix and account ID."
  type        = string
  default     = null
}

variable "enable_versioning" {
  description = "Enable S3 bucket versioning"
  type        = bool
  default     = false
}
