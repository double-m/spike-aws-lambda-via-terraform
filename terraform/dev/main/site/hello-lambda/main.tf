data "archive_file" "thezip" {
  type        = "zip"
  source_dir  = "${path.module}/code"
  output_path = "${path.module}/package/hello-lambda.zip"
}

resource "aws_lambda_function" "hello-lambda" {
  filename         = "${substr(data.archive_file.thezip.output_path, length(path.cwd) + 1, -1)}"
  function_name    = "test-mm-lambda-function"
  role             = "arn:aws:iam::824327514012:role/service-role/test-mm-role-for-lambda-function"
  handler          = "index.handler"
  source_code_hash = "${data.archive_file.thezip.output_base64sha256}"
  runtime          = "nodejs8.10"

  environment {
    variables = {
      name = "John Doe"
    }
  }
}
