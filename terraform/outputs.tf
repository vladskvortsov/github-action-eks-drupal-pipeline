

output "cluster_endpoint" {
  description = "Endpoint for EKS control plane"
  value       = module.eks.cluster_endpoint
}

output "cluster_security_group_id" {
  description = "Security group ids attached to the cluster control plane"
  value       = module.eks.cluster_security_group_id
}

output "cluster_name" {
  description = "Kubernetes Cluster Name"
  value       = module.eks.cluster_name
}

output "region" {
  description = "AWS region"
  value       = "${var.region}"
}


output "efs_dns_name" {
  description = "EFS dns name"
  value       = aws_efs_file_system.efs.dns_name
}



output "file_system_id" {
  description = "EFS file system id"
  value       =  aws_efs_file_system.efs.id
}
