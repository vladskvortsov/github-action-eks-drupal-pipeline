
# Github-Action-EKS-Drupal-Pipeline

Pipeline to deploy Kubernetes cluster to Amazon EKS using Terraform and Git Actions.



## Prerequisites

- GitHub Account 
- AWS Account 



## What this GitHub Action does:

- Install dependencies on temporary GitHub Actions instance;
- Provision: VPC, subnets, security group, NAT Gataway, EFS and EKS Cluster to the AWS using Terraform;
- Deploy kubernetes config files with Drupal cluster preinstalled to the EKS using Ansible and kubectl;

## Drupal cluster

Kubernetes folder stores cluster config files for Drupal with 
MYSQL stored on AWS EFS.


> Note: Attention!


AWS: EKS, NAT Gataway are `NOT FREE TIER SERVICES` please visit Pricing pages first.

## Deploy from git



To start work:

Copy this repo to your github account.
Add required secrets:

 AWS Credentials:
```sh
AWS_ACCESS_KEY_ID
AWS_SECRET_ACCESS_KEY
```

Name of our s3 bucket for terraform.tfstate file


```sh
BUCKET_TF_STATE
```

And run the workflow in "Actions" manually or on push.
