provider "aws" {
    region = "eu-west-3" 
#    access_key = "${var.access_key}"
#    secret_key = "${var.secret_key}"
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
    region = "eu-west-3"
    key = "terraform.tfstate"
  }

}
