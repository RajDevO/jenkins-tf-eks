module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.19.0"

  name = "${var.cluster_name}-vpc"
  cidr = var.vpc_cidr_block

  azs             = ["${var.region}b", "${var.region}c"]
  private_subnets = var.subnet_cidr_private
  public_subnets  = var.subnet_cidr_public
  intra_subnets   = var.subnet_cidr_infra

  enable_nat_gateway     = true
  single_nat_gateway     = true
  one_nat_gateway_per_az = false

  private_subnet_tags = {
    "kubernetes.io/role/elb" = 1
  }

  public_subnet_tags = {
    "kubernetes.io/role/internal-elb" = 1
  }

  tags = {
    managed_by   = "terraform"
    environment = var.environment
  }
}
