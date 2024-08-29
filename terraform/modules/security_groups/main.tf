module "alb_security_group" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "~> 5.0"

  name        = "alb-sg"
  description = "Security group for the ALB"
  vpc_id      = var.vpc_id

  ingress_cidr_blocks = ["0.0.0.0/0"]

  ingress_rules = ["http-80-tcp", "https-443-tcp"]

  egress_rules = ["all-all"]

  tags = var.tags
}

module "ec2_security_group" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "~> 5.0"

  name        = "ec2-sg"
  description = "Security group for the EC2 instances"
  vpc_id      = var.vpc_id

  ingress_rules = ["http-80-tcp", "https-443-tcp"]
  
  egress_rules = ["all-all"]

  tags = var.tags
}
