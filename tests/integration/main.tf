provider "aws" {
  region = "eu-west-2"
}

terraform {
  backend "s3" {
    bucket  = "systemsmystery-terraform-testing-statefiles"
    key     = "terraform-s3-backup-bucket/terraform.tfstate"
    region  = "eu-west-2"
    encrypt = "true"
  }
}

module "s3-backup-bucket" {
  source = "../.."

  service_name = "integration-tests-${formatdate("DDMMYYYY-hhmmss", timestamp())}"
  pgp_key      = "keybase:richard_annand"
}

module "s3-backup-bucket-no-pgp" {
  source = "../.."

  service_name = "integration-tests-no-pgp-${formatdate("DDMMYYYY-hhmmss", timestamp())}"
}

module "s3-backup-bucket-no-encryp" {
  source            = "../.."
  bucket_encryption = false
  service_name      = "integration-tests-no-enc-${formatdate("DDMMYYYY-hhmmss", timestamp())}"
}