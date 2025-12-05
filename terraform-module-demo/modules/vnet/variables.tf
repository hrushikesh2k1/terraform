variable "name" {
  type = string
  description = "Base name for resource" 
}

variable "location" {
  type = string
  description = "azure location"
}

variable "address_space" {
  type = list{string}
  default = ["10.0.0.0/16"]
}

variable "subnet_prefix" {
  type = string
  default = "10.0.1.0/24"
}
