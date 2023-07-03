provider "aws" {
    region = "${var.region}"
    access_key = "${var.access_key}"
    secret_key = "${var.secret_key}"
}


terraform {
  required_providers {
    aws = {
     source = "hashicorp/aws"
     version = "~> 5.3"
    }
 
 }
  backend "s3" {
    bucket = "drupal-eks-bucket4"
    region = "${var.region}"
    key = "terraform.tfstate"
  }

}
