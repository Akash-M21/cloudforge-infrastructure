output "cluster_name" {

  description = "EKS Cluster Name"

  value = aws_eks_cluster.cluster.name

}

output "cluster_arn" {

  description = "EKS Cluster ARN"

  value = aws_eks_cluster.cluster.arn

}

output "cluster_endpoint" {

  description = "EKS Cluster Endpoint"

  value = aws_eks_cluster.cluster.endpoint

}

output "cluster_certificate_authority_data" {

  description = "Cluster CA Certificate"

  value = aws_eks_cluster.cluster.certificate_authority[0].data

}

output "oidc_issuer" {

  description = "OIDC Issuer URL"

  value = aws_eks_cluster.cluster.identity[0].oidc[0].issuer

}

output "node_group_arn" {

  description = "Node Group ARN"

  value = aws_eks_node_group.node_group.arn

}
