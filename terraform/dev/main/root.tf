provider "aws" {} 

module "hello-lambda" {
  source = "./site/hello-lambda"
}

