resource "aws_eks_node_group" "node_group" {

  cluster_name    = aws_eks_cluster.cluster.name
  node_group_name = "${local.project}-node-group"
  node_role_arn   = var.node_role_arn

  subnet_ids = var.private_subnet_ids

  instance_types = var.instance_types

  capacity_type = "ON_DEMAND"

  scaling_config {

    desired_size = var.desired_size
    min_size     = var.min_size
    max_size     = var.max_size

  }

  update_config {

    max_unavailable = 1

  }

  ami_type = "AL2023_x86_64_STANDARD"

  tags = merge(
    local.common_tags,
    {
      Name = "${local.project}-node-group"
    }
  )

  depends_on = [
    aws_eks_cluster.cluster
  ]
}
