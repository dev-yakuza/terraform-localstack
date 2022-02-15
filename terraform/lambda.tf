module "lambda_function" {
  source  = "terraform-aws-modules/lambda/aws"
  version = "2.34.0"

  function_name = "my-lambda"
  description   = "My awesome lambda function"
  handler       = "function.handler"
  runtime       = "python3.8"

  source_path = "../source/lambda/function.py"

  tags = {
    Name = "my-lambda"
  }
}
