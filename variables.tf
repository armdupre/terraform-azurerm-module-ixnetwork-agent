variable "AdminUserName" {
	default = "azure"
	type = string
}

variable "DisablePasswordAuthentication" {
	default = true
	type = bool
}

variable "EnableAcceleratedNetworking" {
	default = false
	type = bool
}

variable "EnableIpForwarding" {
	default = true
	type = bool
}

variable "Eth0IpAddress" {
	default = "10.0.10.11"
	type = string
}

variable "Eth0SubnetId" {
	type = string
}

variable "Eth1IpAddresses" {
	default = ["10.0.2.12", "10.0.2.13", "10.0.2.14", "10.0.2.15", "10.0.2.16", "10.0.2.17", "10.0.2.18", "10.0.2.19", "10.0.2.20", "10.0.2.21"]
	type = list(string)
}

variable "Eth1SubnetId" {
	type = string
}

variable "ImageSku" {
	default = "keysight-ixnetwork-virtual-test-appliance"
	description = "An instance of an offer, such as a major release of a distribution."
	type = string
}

variable "ImageVersion" {
	default = "latest"
	description = "The version number of an image SKU."
	type = string
}

variable "InstanceId" {
	default = "agent"
	type = string
}

variable "MarketplaceImageOfferId" {
	default = "keysight-ixnetwork-virtual-edition"
	description = "The name of a group of related images created by a publisher."
	type = string
}

variable "MarketplaceImagePublisherId" {
	default = "keysight-technologies-ixvm"
	description = "The organization that created the image."
	type = string
}

variable "ResourceGroupLocation" {
	default = "East US"
	type = string
}

variable "ResourceGroupName" {
	type = string
}

variable "SshKeyName" {
	type = string
}

variable "Tag" {
	default = "ixnetwork"
	type = string
}

variable "UserEmailTag" {
	description = "Email address tag of user creating the deployment"
	type = string
}

variable "UserLoginTag" {
	description = "Login ID tag of user creating the deployment"
	type = string
}

variable "UserProjectTag" {
	default = "cloud-ist"
	type = string
}

variable "VmSize" {
	default = "Standard_F8s_v2"
	type = string
	validation {
		condition = contains([	"Standard_F4s_v2",	"Standard_F8s_v2",	"Standard_F16s_v2"
							], var.VmSize)
		error_message = <<EOF
VmSize must be one of the following sizes:
	Standard_F4s_v2, Standard_F8s_v2, Standard_F16s_v2
		EOF
	}
}