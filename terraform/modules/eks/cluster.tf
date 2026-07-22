resource "aws_eks_cluster" "cluster" {

  name     = var.cluster_name
  role_arn = var.cluster_role_arn
  version  = var.cluster_version

  vpc_config {

    subnet_ids = var.private_subnet_ids

    endpoint_private_access = true
    endpoint_public_access  = true

  }

  enabled_cluster_log_types = [
    "api",
    "audit",
    "authenticator"
  ]

  access_config {
    authentication_mode                         = "API_AND_CONFIG_MAP"
    bootstrap_cluster_creator_admin_permissions = true
  }

  tags = merge(
    local.common_tags,
    {
      Name = local.project
    }
  )

}
