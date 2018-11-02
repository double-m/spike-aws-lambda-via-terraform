# Test AWS Lambda Function via Terraform

*2018/11/02*

This project will deploy an AWS Lambda function using Terraform.

The Lambda function is a manually-triggered Hello World written in Node.js.

## Assumptions

I'm using an operating system with installed:

- bash
- terraform (v0.11.8)
- node (v8.12.0)
- npm (v6.4.1)

(By the way, my OS is a Debian GNU/Linux)

## Usage

```
cd terraform/dev/main
```

Only for the first time:

```
make init
```

that will execute `terraform init`. Then:

```
export AWS_ACCESS_KEY_ID="anaccesskey"
export AWS_SECRET_ACCESS_KEY="asecretkey"
export AWS_DEFAULT_REGION="us-west-2"
make plan
```

that will execute `terraform plan`. Finally:

```
make apply
```

that will execute `terraform init && npm install && npm test && terraform apply`

## Tests

### Local Manual Test

```
cd terraform/dev/main/site/hello-lambda/code
npm test
```
