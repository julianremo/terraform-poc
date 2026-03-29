variable "vpc_cidr" {
  default = "15.0.0.0/20"
}

variable "subnets_cidr" {
  type    = list(any)
  default = ["15.0.1.0/24", "15.0.2.0/24"]
}

variable "azs" {
  type    = list(any)
  default = ["us-west-2a", "us-west-2b"]
}

variable "ami" {
  default = "ami-03caad32a158f72db"
}

variable "instance_type" {
  default = "t3.micro"
}