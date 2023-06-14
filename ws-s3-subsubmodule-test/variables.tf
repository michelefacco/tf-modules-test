# Input variable definitions

variable "region" {
  description = "Test adding region..."
  type        = string
}

variable "bucket_name" {
  description = "Name of the s3 bucket. Must be unique."
  type        = string
}

variable "tags" {
  description = "Tags to set on the bucket."
  type        = map(string)
  default     = {}
}
