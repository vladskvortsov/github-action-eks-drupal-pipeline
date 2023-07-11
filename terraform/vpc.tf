module "drupal-vpc" {
  source          = "terraform-aws-modules/vpc/aws"
  name            = "drupal-vpc"
  cidr            = "${var.vpc_cidr_block}"
  private_subnets = "${var.private_subnet_cidr_blocks}"
  public_subnets  = "${var.public_subnet_cidr_blocks}"
  azs             = data.aws_availability_zones.azs.names

  enable_nat_gateway   = true
  single_nat_gateway   = true
  enable_dns_hostnames = true

  tags = {
    "kubernetes.io/cluster/drupal-eks-cluster" = "shared"
  }

  public_subnet_tags = {
    "kubernetes.io/cluster/drupal-eks-cluster" = "shared"
    "kubernetes.io/role/elb"                  = 1
  }

  private_subnet_tags = {
    "kubernetes.io/cluster/drupal-eks-cluster" = "shared"
    "kubernetes.io/role/internal-elb"         = 1
  }
}


resource "aws_security_group" "drupal-sg" {
    name_prefix = "drupal-sg"
    vpc_id = module.drupal-vpc.vpc_id
ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
cidr_blocks = [
            "10.0.0.0/8"
        ]
    }
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = [
            "10.0.0.0/8"
        ]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = [
            "10.0.0.0/8"
        ]
  }
}


