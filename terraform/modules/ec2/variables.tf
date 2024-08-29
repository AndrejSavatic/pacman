variable "name" {
  type = string
  default = "ec2-instance"
}

variable "instance_type" {
  type = string
  default = "t3.micro"
}

variable "key_name" {
  type = string
  default = "user1"
}

variable "monitoring" {
  type = bool
  default = true
}

variable "tags" {
  type = map(string)
  default = {
    "Terraform" = "true"
    "Environment" = "dev"
  }
}