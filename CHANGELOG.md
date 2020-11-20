
<a name="v1.0.0"></a>
## v1.0.0 (2020-11-20)

### Docs

* **readme.md:** updated README.md
* **readme.md:** created readme.md

### Feat

* changed bucket name
* first commit of project
* **.pre-commit-config.yaml:** added terraform_docs to pre-commits
* **outputs.tf:** changes to outputs
* **variables.tf:** made pgp_key optional

### Fix

* syntax fixes

### Style

* ***.tf:** formatted tf files

### Test

* changed bucket name
* changed test bucket name
* added integration test

### Pull Requests

* Merge pull request [#8](https://github.com/rj175/terraform-s3-backup-bucket/issues/8) from rj175/pre-commit
* Merge pull request [#7](https://github.com/rj175/terraform-s3-backup-bucket/issues/7) from rj175/no-pgp-test
* Merge pull request [#6](https://github.com/rj175/terraform-s3-backup-bucket/issues/6) from rj175/no-pgp-test
* Merge pull request [#5](https://github.com/rj175/terraform-s3-backup-bucket/issues/5) from rj175/syntax-changes
* Merge pull request [#4](https://github.com/rj175/terraform-s3-backup-bucket/issues/4) from rj175/gen-docs
* Merge pull request [#3](https://github.com/rj175/terraform-s3-backup-bucket/issues/3) from rj175/change-bucket-name
* Merge pull request [#2](https://github.com/rj175/terraform-s3-backup-bucket/issues/2) from rj175/additional-outputs
* Merge pull request [#1](https://github.com/rj175/terraform-s3-backup-bucket/issues/1) from rj175/github-actions

### BREAKING CHANGE


changed bucket name, bucket_name variable removed, uses service_name and appends
backups to the end of service name; output for bucket is now called bucket_arn.

The encrypted secret output has changed from 'service_iam_user_encrypted_secret' to
'iam_user_encrypted_secret'

