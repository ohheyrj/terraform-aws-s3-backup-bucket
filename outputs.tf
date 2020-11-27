output "bucket_arn" {
  value       = aws_s3_bucket.s3_bucket.arn
  description = "The arn of the bucket created."
}

output "iam_user" {
  value       = aws_iam_user.iam_user.name
  description = "The IAM user created."
}

output "iam_user_access_key_id" {
  value = aws_iam_access_key.id
  description = "The IAM access key id."
}

output "iam_user_encrypted_secret" {
  value       = aws_iam_access_key.iam_access_key.encrypted_secret
  description = "Encrypted Secret for IAM backup user"
}