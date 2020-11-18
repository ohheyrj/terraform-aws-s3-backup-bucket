provider "aws" {
    region = "eu-west-2"
    version = "2.33.0"
}

module "s3-backup-bucket" {
    source = "../.."

    service_name = "integration_tests"
    bucket_name = "systemsmystery_test_bucket_${formatdate("DDMMYYYY_hhmmss", timestamp())}"
    pgp_key = "keybase:richard_annand"
}