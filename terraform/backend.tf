provider "aws" {
    region = "${var.region}"
#    access_key = "${var.access_key}"
#    secret_key = "${var.secret_key}"
}


terraform {
  required_providers {
    aws = {
     source = "hashicorp/aws"
#     version = "~> 5.3"
    }
#     ansible = {
#      source  = "ansible/ansible"      
#    }


 }
  backend "s3" {  
    bucket = "drupal-eks-bucket5"
    region = "us-east-1"
    key = "terraform.tfstate"
  }

}
