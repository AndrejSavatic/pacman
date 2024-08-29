variable "vpc_name" {
  description = "Name of the VPC"
  type        = string
  default     = "pacman-vpc"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "tags" {
  description = "A map of tags to assign to the resources"
  type        = map(string)
  default = {
    "name" = "value"
  }
}
