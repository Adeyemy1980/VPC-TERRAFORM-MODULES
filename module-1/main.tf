provider "aws" {
  region = var.region
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

module "vpc_module" {
  source                                          = "../modules/vpc"
  region                                          = var.region
  project_name                                    = var.project_name
  vpc_cidr                                        = var.vpc_cidr
  public_subnet_az1                               = var.public_subnet_az1
  public_subnet_az2                               = var.public_subnet_az2
  private_app_subnet_az1                          = var.private_app_subnet_az1
  private_app_subnet_az2                          =var.private_app_subnet_az2
  private_data_subnet_az1                         = var.private_data_subnet_az1
  private_data_subnet_az2                         = var.private_data_subnet_az2

}

