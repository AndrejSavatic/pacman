variable "alb_name" {
  description = "The name of the ALB"
  type        = string
  default     = "name"
}

variable "vpc_id" {
  description = "The VPC ID where the ALB will be created"
  type        = string
}

variable "subnets" {
  description = "A list of subnet IDs for the ALB"
  type        = list(string)
}

variable "security_group_id" {
  description = "The security group ID for the ALB"
  type        = string
}

variable "ec2_instance_ids" {
  description = "List of EC2 instance IDs to attach to the target group"
  type        = list(string)
}

variable "tags" {
  description = "A map of tags to assign to resources"
  type        = map(string)
  default = {
    Environment = "Dev"
    Project     = "pacman"
  }
}
