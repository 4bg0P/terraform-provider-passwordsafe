# Terraform Provider
The Password Safe Terraform provider is a Terraform integration for Password Safe which enables using Password Safe secrets management capabilities with Terraform.

Terraform configuration files can be configured to retrieve secrets from Password Safe.

 Permissions for access to secrets in Password Safe can be granted to specific accounts within BeyondInsight.

## Set up project
- Install Go: [https://go.dev/doc/install](https://go.dev/doc/install)
- Install Terraform: [https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)

- Clone Repository

    ```bash
    git clone https://dev.azure.com/beyondtrust/BT/_git/passwordsafe-integrations-terraform
    ```

- Generate Provider Binary File from passwordsafe-integrations-terraform folder

    ```bash
    go build -o terraform-provider-passwordsafe_1.0.0
    ```
- Move Binary file to proper folder to be recognized by Terraform

    On widows Path looks like:
    
    _C:\Users\<username>\AppData\Roaming\terraform.d\plugins\providers\beyondtrust\passwordsafe\1.0.0\windows_amd64_
    
- To run unit tests you can use:

    ```bash
   go test ./...
    ```

- Update _terraform/main.tf_ and _terraform/terraform.tfvars_ files according to your needs and configs and run terraform commands:

    ```bash
    terraform init
    terraform plan
    ```
- to get more information about terraform, please go: [https://beyondtrust.atlassian.net/wiki/spaces/BI/pages/231800866/Password+Safe+Terraform](https://beyondtrust.atlassian.net/wiki/spaces/BI/pages/231800866/Password+Safe+Terraform)