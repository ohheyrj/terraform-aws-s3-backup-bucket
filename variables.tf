variable "service_name" {
    description = "Name of service to use for user and policy name. This will be used to name the IAM user, policy and bucket."
    default = ""
}

variable "pgp_key" {
    description = "PGP key to use for secret access key"
    default = ""
}