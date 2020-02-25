# terraform-azurerm-oneormanywindowsVM
Terraform code for deploying one or many Windows VM on Azure

= __Tested with success__ with Terraform v0.12.21 + Azurerm provider version v1.44.0 - __25th of february 2020__

--------------------------------------------------------------------------------------------------------
This is a set of Terraform files used to deploy one or many Windows Virtual Machines on Microsoft Azure :

- __datasource.tf__ : use this file to configure a datasource to retrieve Windows Password stored as a secret in an Azure Key Vault
- __var.tf__ : contains definition of all variables used in main.tf. Some variables have default values
- __main.tf__ : contains code to deploy an Azure Resource Group, a VNet, a Subnet, an Availability Set, 1 to N Windows virtual machine(s), a Network Security Group
- __versions.tf__ : contains minimal version of Terraform and Azurerm provider version to use

__Prerequisites :__
- An Azure Subscription with enough privileges (create RG, AKS...)
- Azure CLI 2.0.78 : https://docs.microsoft.com/en-us/cli/azure/install-azure-cli?view=azure-cli-latest
- Terraform CLI 0.12.18 or > : https://www.terraform.io/downloads.html

__To deploy this infrastructure :__
1. Log to your Azure subscription (az login)
2. Create an Azure Key Vault and create a secret named "windows-admin-password" that contains your windows admin password
3. Define the value of each variable in .tf and .tfvars files
4. Initialize your terraform deployment : terraform init
5. Plan your terraform deployment : `terraform plan --var-file=myconf.tfvars`
6. Apply your terraform deployment : `terraform apply --var-file=myconf.tfvars`

__For more information about Terraform & Azure, few additional online resources :__
- My blog (for those who understand french) : https://stanislas.io
- Terraform documentation : https://www.terraform.io/docs/providers/azurerm/r/kubernetes_cluster.html
- Azure Terraform Provider : https://github.com/terraform-providers/terraform-provider-azurerm
- Azure Terraform Provider Virtual Machine : https://www.terraform.io/docs/providers/azurerm/r/virtual_machine.html
