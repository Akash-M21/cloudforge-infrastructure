output "vpc_id" {

  value = module.vpc.vpc_id

}

output "public_subnets" {

  value = module.vpc.public_subnet_ids

}

output "private_subnets" {

  value = module.vpc.private_subnet_ids

}

output "alb_security_group_id" {

  value = module.security.alb_sg_id

}

output "eks_cluster_role_arn" {
  description = "EKS Cluster IAM Role ARN"
  value       = module.iam.eks_cluster_role_arn
}

output "eks_node_role_arn" {
  description = "EKS Node IAM Role ARN"
  value       = module.iam.eks_node_role_arn
}
