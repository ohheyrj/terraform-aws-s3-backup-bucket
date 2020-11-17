output "service_iam_user_encrypted_secret" {
    value = aws_iam_access_key.iam_access_key.encrypted_secret
    description = "Encrypted Secret for IAM backup user"
}