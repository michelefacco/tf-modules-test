terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

module "s3_bucket" {
  source = "git@github.com:michelefacco/tf-modules-test.git//ws-s3-submodule-test"

  bucket_name = var.bucket_name

  tags = var.tags
}
