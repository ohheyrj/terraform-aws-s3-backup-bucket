resource "aws_s3_bucket" "s3_bucket" {
    bucket = var.bucket_name
    acl = "private"
}

data "aws_iam_policy_document" "iam_user_policy_document" {
    statement {
        actions = [
            "s3:ListBucket",
            "s3:GetBucketLocation",
            "s3:ListBucketMultipartUploads"
         ]
        resources = [
            aws_s3_bucket.s3_bucket.arn
        ]
    }
    statement {
      actions = [
          "s3:AbortMultipartUpload",
          "s3:DeleteObject",
          "s3:DeleteObjectVersion",
          "s3:GetObject",
          "s3:GetObjectAcl",
          "s3:GetObjectVersion",
          "s3:GetObjectVersionAcl",
          "s3:PutObject",
          "s3:PutObjectAcl",
          "s3:PutObjectVersionAcl"
      ]
      resources = [
          "${aws_s3_bucket.s3_bucket.arn}/*"
      ]
    }
    statement {
      actions = [
          "s3:ListAllMyBuckets"
      ]
      resources = [
          "*"
      ]
    }
}

resource "aws_iam_policy" "iam_policy" {
    name = "service-${var.service_name}-backup-bucket-policy"
    policy = data.aws_iam_policy_document.iam_user_policy_document.json
}

resource "aws_iam_user" "iam_user" {
    name = "service-${var.service_name}-backup-user"
}

resource "aws_iam_access_key" "iam_access_key" {
    user = aws_iam_user.iam_user.name
    pgp_key = var.pgp_key
}

resource "aws_iam_policy_attachment" "iam_attachment" {
    name = "service_${var.service_name}_backup_policy_attachment"
    users = [
        aws_iam_user.iam_user.name
    ]
    policy_arn = aws_iam_policy.iam_policy.arn
}