
# Terraform S3 Backup Bucket

![GitHub release (latest by date)](https://img.shields.io/github/v/release/rj175/terraform-aws-s3-backup-bucket?style=flat-square)
![GitHub Workflow Status](https://img.shields.io/github/workflow/status/rj175/terraform-aws-s3-backup-bucket/Deployment_test?label=deployment&logo=github&style=flat-square)
![GitHub Workflow Status](https://img.shields.io/github/workflow/status/rj175/terraform-aws-s3-backup-bucket/Linting?label=linting&logo=github&style=flat-square)
![GitHub](https://img.shields.io/github/license/rj175/terraform-aws-s3-backup-bucket?style=flat-square)
![GitHub last commit](https://img.shields.io/github/last-commit/rj175/terraform-aws-s3-backup-bucket?style=flat-square)

This module will create a IAM user and bucket that can be used for applications requiring an S3 bucket to store backup files.

A IAM policy is also created and attached to the user that allows access only to that bucket.

The `service_name` input is used in naming these items:

- IAM User: service-{{service_name}}-backup-user
- IAM Policy: service-{{service_name}}-backup-bucket-policy
- Bucket Name: {{service_name}}-backups

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| pgp\_key | PGP key to use for secret access key | `string` | `""` | no |
| service\_name | Name of service to use for user and policy name. This will be used to name the IAM user, policy and bucket. | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| bucket\_arn | The arn of the bucket created. |
| iam\_user | The IAM user created. |
| iam\_user\_encrypted\_secret | Encrypted Secret for IAM backup user |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->