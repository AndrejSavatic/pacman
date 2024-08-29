output "alb_sg_id" {
  description = "The ID of the ALB security group"
  value       = module.alb_security_group.security_group_id
}

output "ec2_sg_id" {
  description = "The ID of the EC2 security group"
  value       = module.ec2_security_group.security_group_id
}
