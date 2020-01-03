# Definition of data source to obtain windows admin password from a secret stored in an Azure Key Vault

data "azurerm_key_vault_secret" "Terra-Datasource-windowspassword" {
  # This is a secret in Azure Key Vault that contains my SSH Key
  name = "windows-admin-password"

  # This is Azure Key vault ID (you can get it in Properties Tab of the key vault in Azure Portal)
  key_vault_id = var.KeyVaultID
}