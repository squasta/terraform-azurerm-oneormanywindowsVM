# Variable to define Azure Region where to deploy 
# To get all possible values, use the following az command : 
# az account list-locations
variable "AzureRegion" {
  type    = string
  default = "westus"
}

# Variable to define resource group name
variable "ResourceGroupName" {
  type    = string
}

# Variable VNet Name
variable "VNetName" {
  type    = string
  default = "Vnet-Stan1"
}

# Variable Nic Name
variable "NicName" {
  type    = string
  default = "NIC-1"
}

# Variable to define Allocation type of private IP allocated by Azure Fabric
# possible values : static, dynamic
variable "PrivateIPAdressAllocationType" {
  type    = string
  default = "dynamic"
}

# Variable to define name of Azure VM
variable "VMName" {
  type    = string
  default = "VMStantest"
}

# Variable to define Familly and type of VM to use
# az vm list-sizes --location westeurope
# ex: Standard_D32s_v3
variable "VMSize" {
  type    = string
  default = "Standard_B4ms"
}

# Variable to define publisher image to use
# To list all available providers : az vm image list-publishers --location westeurope
# ex: MicrosoftWindowsServer, Canonical, RedHat, 
variable "OSPublisher" {
  type    = string
  default = "MicrosoftWindowsServer"
}

# Variable to define publisher offer to use
# az vm image list-offers --publisher MicrosoftWindowsServer --location westeurope
# ex: WindowsServer, WindowsServerSemiAnnual,  windows-10-1909-vhd-server-prod-stage...
variable "OSOffer" {
  type    = string
  default = "WindowsServer"
}

# Variable to define SKU to use
# az vm image list-skus --publisher MicrosoftWindowsServer --offer WindowsServer --location westeurope
# ex:  2008-R2-SP1, 2012-R2-Datacenter, 2019-Datacenter-smalldisk, 2019-Datacenter
variable "OSsku" {
  type    = string
  default = "2019-Datacenter"
}

# Variable to define OSversion
variable "OSversion" {
  type    = string
  default = "latest"
}

# Variable to define admin name
variable "AdminName" {
  type    = string
  default = "Stan"
}

# Variable to define OS Disk Name
variable "OSDiskName" {
  type    = string
  default = "WindowsOS-Disk"
}

# Variable OS Disk Storage type
# Possible values : Premium_LRS, StandardSSD_LRS, Standard_LRS, UltraSSD_LRS
variable "OSDisk-StorageType" {
  type    = string
  default = "Standard_LRS"
}

# Variable Data Disk Name
variable "DataDiskName" {
  type    = string
  default = "WinData-Disk"
}

# Variable Storage type
# Possible values : Premium_LRS, StandardSSD_LRS, Standard_LRS, UltraSSD_LRS
variable "DataDisk-StorageType" {
  type    = string
  default = "Premium_LRS"
}

# Variable DataDisk Storage size
# Max size : 4095 GB
# List of all available size : https://docs.microsoft.com/en-us/azure/virtual-machines/windows/disks-types
# P1 = 4, P2 = 8, P30 = 1024
variable "DataDiskStorageSize" {
  type    = string
  default = "128"
}

# Variable Tag Environment
variable "TagEnvironment" {
  type    = string
  default = "Production Legacy"
}

# Variable Tag Environment
variable "TagUsage" {
  type    = string
  default = "Test"
}

# Variable Network Security Group Name
variable "NSGName" {
  type    = string
  default = "NSG"
}

# Variable Availability Set Name
variable "AvailabilitySetName" {
  type    = string
  default = "AS-VM"
}

# Variable NumberOfVM
variable "NumberOfVM" {
  type  = number
  default = 1  
}

# Variable KeyVaultID
# ID of Azure Key Vault that contains clePubliqueSSH secret 
# you can get it using the following command : az keyvault list -o jsonc
variable "KeyVaultID" {
  type  = string
}