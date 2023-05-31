provider "aws" {
  region                  = var.region
  shared_credentials_files = ["$HOME/.aws/credentials"]
  #profile                 = "AngelChaidezIAM"
}

module "s3-webapp" {
  source  = "app.terraform.io/cloudgeeks/s3-webapp/aws"
  name    = var.name
  region  = var.region
  prefix  = var.prefix
  version = "1.0.0"
}
