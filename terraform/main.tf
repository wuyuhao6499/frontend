module "network" {
  source            = "./network"
  vpc_name          = "mod-vpc"
  vpc_cidr          = "10.0.0.0/16"
  subnet_1a_cidr    = "10.0.1.0/24"
  availability_zone = "ap-northeast-1a"
}

module "ec2" {
  source         = "./ec2"
  subnet_id      = module.network.subnet_1a_id
  instance_type  = "t2.micro"
  instance_name  = "mod-ec2"
}