
# Terraform S3 Backup Bucket

This module will create a IAM user and bucket that can be used for applications requiring an S3 bucket to store backup files.

A IAM policy is also created and attached to the user that allows access only to that bucket.

The `service_name` input is used in naming these items:

- IAM User: service-{{service_name}}-backup-user
- IAM Policy: service-{{service_name}}-backup-bucket-policy
- Bucket Name: {{service_name}}-backups

A PGP key is required to generate the IAM access keys.

## Providers

The following providers are used by this module:

- aws

## Required Inputs

The following input variables are required:

### pgp\_key

Description: PGP key to use for secret access key

Type: `any`

### service\_name

Description: Name of service to use for user and policy name. This will be used to name the IAM user, policy and bucket.

Type: `any`

## Optional Inputs

No optional input.

## Outputs

The following outputs are exported:

### bucket\_arn

Description: The arn of the bucket created.

### iam\_user

Description: The IAM user created.

### iam\_user\_encrypted\_secret

Description: Encrypted Secret for IAM backup user

