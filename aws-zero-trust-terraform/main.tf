provider "aws" {
  region = var.aws_region
}

module "zero_trust" {
  source = "./modules/zero-trust"

  project_name = var.project_name
  aws_region   = var.aws_region
  vpc_cidr     = var.vpc_cidr
  tags         = var.tags
}
