module "lambda_function" {
  source = "terraform-aws-modules/lambda/aws"   # This is linked to: https://registry.terraform.io/modules/terraform-aws-modules/lambda/aws/latest

  function_name = var.name
  description   = "${var.name} (Terraform handled)"
  handler       = "index.handler"
  runtime       = var.runtime

  cloudwatch_logs_retention_in_days = 30

  trusted_entities = var.trusted_entities

  source_path = var.code
  tags = {
    Name = var.name
    Terraform = "true"
  }
}
