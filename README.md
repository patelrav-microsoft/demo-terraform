# Terraform Azure Demo

## Prerequisites

- Terraform >= 1.0
- Azure subscription
- GitHub repository with required secrets set

## Required GitHub Secrets

- `AZURE_CLIENT_ID`: Application/Client ID
- `AZURE_TENANT_ID`: Tenant/Directory ID
- `AZURE_SUBSCRIPTION_ID`: Subscription ID

## Running Locally

1. Authenticate to Azure (e.g., `az login`)
2. `terraform init`
3. `terraform plan` (uses values from `terraform.tfvars`)
4. `terraform apply`

## Workflow Behavior

- **Pull Requests**: Runs `terraform fmt -check`, `init`, `validate`, and `plan`
- **Push to main**: Runs the above plus `terraform apply`