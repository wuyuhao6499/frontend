variable "vpc_name" {
  default = "my-vpc"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "subnet_1a_cidr" {
  default = "10.0.1.0/24"
}

variable "subnet_1c_cidr" {
  default = "10.0.2.0/24"
}
