module "s3_bucket" {
  source = "git@github.com:michelefacco/tf-modules-test.git//ws-s3-module-test"
  
  bucket_name = var.bucket_name

  tags = var.tags
}

