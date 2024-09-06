terraform {
  backend "local" {
    path = "terraform.tfstate"
  }
}

provider "aws" {
  region = var.region
  shared_credentials_files = ["/Users/mac/.aws/credentials"]
  profile = "504649076991_AdministratorAccess"
}

module "network" {
  source                     = "../../modules/network"
  vpc_cidr                   = var.vpc_cidr
  public_subnet_cidr_blocks  = var.public_subnet_cidr_blocks
  private_subnet_cidr_blocks = var.private_subnet_cidr_blocks
  availability_zones         = var.availability_zones
  create_internet_gateway    = var.create_internet_gateway
  create_vpc                 = var.create_vpc
  enable_dns_hostnames       = var.enable_dns_hostnames
  enable_dns_support         = var.enable_dns_support
}
