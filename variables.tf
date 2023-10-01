#Resource Group variables
variable "rgname" {
  type = string
}

variable "rglocation" {
  type = string
}

#VNET Variables

variable "vnetname" {
  type = string
}

variable "vnetlocation" {
  
}

variable "addressspace" {
  
}

variable "pubsubnetname" {
  
}

variable "pubsubnetaddr" {
  
}

# variable "prisubnet" {
  
# }

# variable "prisubnetaddr" {
  
# }

variable "environment" {
  
}

#networkinterface variables
variable "networkinterface" {
  
}

variable "niclocation" {
  
}   

variable "nicipconfigname" {
  
}

# virtual machines variables

variable "RKE_MASTER" {
  
}

variable "vmsize" {
  
}   

variable "pipname" {
  
}