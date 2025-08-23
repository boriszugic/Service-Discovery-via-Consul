variable "prefix" {
  type    = string
  default = "consul-demo"
}

variable "location" {
  type    = string
  default = "westeurope"
}

variable "admin_username" {
  type    = string
  default = "consul_demo"
}

variable "vm_size" {
  type    = string
  default = "Standard_B1s"
}

variable "vmss_instance_count" {
  type    = number
  default = 1
}

variable "vmss_min" {
  type    = number
  default = 1
}

variable "vmss_max" {
  type    = number
  default = 5
}

variable "key_consul_path" {
  type    = string
  default = "../../keys/id_rsa_consul"
}

variable "key_nginx_path" {
  type    = string
  default = "../../keys/id_rsa_nginx"
}

variable "key_backend_path" {
  type    = string
  default = "../../keys/id_rsa_backend"
}
