module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = var.name

  instance_type          = var.instance_type
  key_name               = var.key_name
  monitoring             = var.monitoring

  tags = var.tags
}