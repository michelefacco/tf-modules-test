# Input variable definitions

variable "name" {
  description = "Name of the lambda function."
  type        = string
}

variable "runtime" {
  description = "Name of the runtime environment." # One of the accepted values from here: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-function.html#cfn-lambda-function-runtime
  type        = string
}

variable "code" {
  description = "The location of the source code."
  type        = string
}

variable "trusted_entities" {
  description = "The list of trusted entities for this related execution role."
  type        = list(string)
  default     = []
}