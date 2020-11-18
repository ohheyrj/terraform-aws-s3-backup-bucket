provider "aws" {
    region = "eu-west-2"
    version = "2.33.0"
}

module "s3-backup-bucket" {
    source = "../.."

    service_name = "integration_tests"
    bucket_name = "systemsmystery-test-bucket-${formatdate("DDMMYYYY-hhmmss", timestamp())}"
    pgp_key = "keybase:richard_annand"
}