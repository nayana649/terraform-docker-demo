# Infrastructure as Code (IaC) with Terraform

## Task Overview
This project provisions a local Nginx Docker container using Terraform as part of the DevOps Internship Task 3.

## Tools Used
- **Terraform**
- **Docker**
- **Git & GitHub**

## Files
- `main.tf`: Defines the Docker provider, pulls the `nginx:latest` image, and runs the Nginx container mapped to port 8081.

## Commands Executed
1. `terraform init` - Initializes the Docker provider plugin.
2. `terraform plan` - Previews the execution plan.
3. `terraform apply -auto-approve` - Provisions and starts the container.
4. `terraform destroy -auto-approve` - Destroys the provisioned infrastructure.