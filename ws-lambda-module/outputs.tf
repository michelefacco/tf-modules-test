# Output variable definitions

output "arn" {
  description = "ARN of the lambda function"
  value       = lambda_function.lambda_function_arn
}
