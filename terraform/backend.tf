provider "aws" {
    region = "eu-west-2" 
#    access_key = "${var.access_key}"
#    secret_key = "${var.secret_key}"
}

module "s3_bucket" {
  source = "terraform-aws-modules/s3-bucket/aws"

  bucket = "drupal-eks-bucket1"
  acl    = "private"
  control_object_ownership = true
  object_ownership         = "ObjectWriter"
}

terraform {
  required_providers {
    aws = {
     source = "hashicorp/aws"
     version = "~> 5.3"
    }
 
 }
  backend "s3" {
    bucket = "drupal-eks-bucket1"
    region = "eu-west-2"
    key = "terraform.tfstate"
  }

}
