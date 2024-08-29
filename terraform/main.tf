
module "vpc" {
  source = "./modules/vpc"

  vpc_name = "pacman-vpc"
  vpc_cidr = "10.0.0.0/16"
}


module "security_groups" {
  source   = "./modules/security_groups"
  vpc_id   = module.vpc.vpc_id
}

module "alb" {
  source            = "./modules/alb"
  alb_name          = "pacman-alb"
  vpc_id            = module.vpc.vpc_id
  subnets           = module.vpc.public_subnets
  security_group_id = module.security_groups.alb_sg_id
  ec2_instance_ids  = module.ec2_instance.id
}

module "ec2_instance" {
  source = "./modules/ec2"
  name = "pacman-instance"
  vpc_security_group_ids = module.security_groups.ec2_sg_id
}