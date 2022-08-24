resource "aws_s3_bucket" "s3_bucket" {
  bucket = var.bucket_name
  tags = var.tags
}

resource "aws_s3_bucket_acl" "s3_bucket" {
  bucket = aws_s3_bucket.s3_bucket.id
  acl = "private"
}

resource "aws_s3_bucket_lifecycle_configuration" "s3_bucket" {
  bucket = aws_s3_bucket.s3_bucket.id
  rule {
    id = "example-rule-1"
    noncurrent_version_expiration {
      noncurrent_days = 90
    }
    noncurrent_version_transition {
      noncurrent_days = 30
      storage_class   = "STANDARD_IA"
    }
    noncurrent_version_transition {
      noncurrent_days = 60
      storage_class   = "GLACIER"
    }
    status = "Enabled"
  }
}
