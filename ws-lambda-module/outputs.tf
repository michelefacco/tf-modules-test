# Output variable definitions

output "arn" {
  description = "ARN of the lambda function"
  value       = module.lambda_function.lambda_function_arn
}
