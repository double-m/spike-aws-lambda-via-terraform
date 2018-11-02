# Test AWS Lambda Function via Terraform

*2018/11/02*

This project will deploy an AWS Lambda function using Terraform.

The Lambda function is a manually-triggered Hello World written in Node.js.

## Assumptions

I'm using an operating system with installed:

- bash
- terraform (tested with v0.11.8)

(By the way, my o.s. is a Debian GNU/Linux)

## Usage

```
cd terraform/dev/main
```

Only for the first time:

```
terraform init
```

Then:

```
export AWS_ACCESS_KEY_ID="anaccesskey"
export AWS_SECRET_ACCESS_KEY="asecretkey"
export AWS_DEFAULT_REGION="us-west-2"
terraform plan
```

and finally

```
terraform apply
```

