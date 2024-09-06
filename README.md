# Cloudvisor Task

## Summary
The repository contains Terraform code to launch a `VPC` in AWS with the following specifications:
- 1 x Public Subnet
- 2 x Private Subnet
- 2 x Environments (Development & Production)

## How To Run
- Configure a `Production` and `Development` profile on your machine in the `~/.aws/credentials` file
- Clone this repository
- Navigate to the `environments/development/main.tf` and update the correct path for the `shared_credentials_files` inside the `provider` block
- Navigate to the `environments/production/main.tf` and update the correct path for the `shared_credentials_files` inside the `provider` block
- Navigate to the desired environment directory and run `terraform init`
- Proceed to run the `terraform plan` && `terraform apply` commands respectively.

## Note
- Default AZs have been set to us-west-1a & us-west-1b
- They are being overwritten in the terraform.tfvars (Use it to make any required changes)
- CIDR Block used for VPC : `10.0.0.0/16`
- CIDR Block used for Public Subnet : `10.0.1.0/24`
- CIDR Block used for Private subnets : `10.0.4.0/24` & `10.0.5.0/24`
