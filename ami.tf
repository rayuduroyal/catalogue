terraform {
  backend "s3" {
    bucket = "terraform.01"
    key    = "terraform-ami/cart/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}

module "ami" {
  source                 = "git::https://github.com/rayuduroyal/roboshop.git/terraform-ami"
  component              = "catalogue"
}
