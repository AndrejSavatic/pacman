variable "vpc_id" {
  description = "The VPC ID where the security groups will be created"
  type        = string
}

variable "tags" {
  description = "A map of tags to assign to resources"
  type        = map(string)
  default = {
    Environment = "dev"
    Project     = "pacman"
  }
}
