variable "service_name" {
    description = "Name of service to use for user and policy name"
    default = ""
}

variable "bucket_name" {
    description = "The name of the bucket to use"
    default = ""
}

variable "pgp_key" {
    description = "PGP key to use for secret access key"
    default = ""
}