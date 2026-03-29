# Terraform - POC

## Overview
This POC deploys:
- Multiple EC2 instances
- Security group for SSH & HTTP
- Elastic Load Balancer (ELB)
- Uses Terraform for infra as code

## Usage
1. Clone the repo
2. Update "variables.tf" if needed
3. Run:
'''bash
  terraform init
  terraform plan
  terraform apply
