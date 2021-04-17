variable "service_name" {
  description = "Name of service to use for user and policy name. This will be used to name the IAM user, policy and bucket."
}

variable "pgp_key" {
  description = "PGP key to use for secret access key"
  default     = ""
}

variable "bucket_encryption" {
  description = "If bucket encryption should be enabled (Default: true)"
  default     = true
}

variable "bucket_encryption_key" {
  description = "Bucket Encryption Key to use (Default: aws/kms)"
  default     = null
}