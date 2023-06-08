# Output variable definitions

output "arn" {
  description = "ARN of the bucket"
  value       = module.s3_bucket.arn
}

output "id" {
  description = "ID of the bucket"
  value       = module.s3_bucket.id
}
