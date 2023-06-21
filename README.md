# Github-Action-EKS-Drupal-Pipeline
Pipeline to deploy Kubernetes Drupal cluster to Amazon EKS using Terraform and Git Actions.



## Prerequisites



- Github Account 
- AWS Account 



## Configuration steps:
- Install dependencies;
- Deploying VPC, subnets, security group, NAT Gataway;
- Deploying cluster and nodegroup;
- Provision kubernetes config files using kubectl.


> Attention!
>
> AWS: EKS, NAT Gataway are `NOT FREE SERVICES` please visit Pricing pages first.


### Deploy from git


To start work copy this repo to your github account.

Add required secrets:

 AWS Credentials


```sh
AWS_ACCESS_KEY_ID
AWS_SECRET_ACCESS_KEY
```

Name of your s3 bucket for terraform.tfstate file


```sh
BUCKET_TF_STATE
```

And run workflow in "Actions", action will do the rest.
