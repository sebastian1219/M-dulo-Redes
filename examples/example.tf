module "redes" {
  source         = "../"
  vpc_cidr       = "10.0.0.0/16"
  vpc_name       = "vpc-ejemplo"
  public_subnets = ["10.0.1.0/24", "10.0.2.0/24"]
  azs            = ["us-east-1a", "us-east-1b"]
  sg_name        = "sg-ejemplo"
  allowed_ips    = ["0.0.0.0/0"]
}
