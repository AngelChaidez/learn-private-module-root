terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0.0"
    }
  }
}

provider "aws" {
  region = var.region
}


module "s3-webapp" {
  source  = "app.terraform.io/cloudgeeks/s3-webapp/aws"
  name   = var.name
  region = var.region
  prefix = var.prefix
  version = "1.0.0"
}

credentials "app.terraform.io" {
  # valid user API token
  token = "DYhVxxZ7uIuLzQ.atlasv1.yHLIpPZqafnKQtDKYkmxz0twGV5xiZ0svbSV5g6xWUVolNNetv1Izrl6SbTHqxynzGk"
}

