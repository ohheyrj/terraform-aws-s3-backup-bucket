provider "aws" {
    region = "eu-west-2"
    version = "2.33.0"
}

module "s3-backup-bucket" {
    source = "../.."

    service_name = "integration_tests"
    bucket_name = "systemsmystery_s3_backup_bucket_integration_tests_${timestamp()}"
    pgp_key = "keybase:richard_annand"
}