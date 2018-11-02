init:
	terraform init

prepare: init
	cd site/hello-lambda/code && npm install && npm test

plan:
	terraform plan

apply: prepare
	terraform apply

