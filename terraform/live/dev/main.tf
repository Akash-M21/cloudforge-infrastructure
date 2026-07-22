module "vpc" {

  source = "../../modules/vpc"

  project_name = var.project_name
  environment  = var.environment

  vpc_cidr             = var.vpc_cidr
  availability_zones   = var.availability_zones
  public_subnet_cidrs  = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
}

module "security" {

  source = "../../modules/security"

  project_name = var.project_name

  environment = var.environment

  vpc_id = module.vpc.vpc_id

}

module "iam" {
  source = "../../modules/iam"

  project_name = var.project_name
  environment  = var.environment
}

module "ecr" {

  source = "../../modules/ecr"

  project_name = var.project_name

  environment = var.environment

  repositories = [
    "frontend",
    "api-gateway",
    "users",
    "products",
    "orders",
    "payments"
  ]
}

module "eks" {

  source = "../../modules/eks"

  project_name = var.project_name
  environment  = var.environment

  cluster_name    = var.cluster_name
  cluster_version = var.cluster_version

  vpc_id             = module.vpc.vpc_id
  private_subnet_ids = module.vpc.private_subnet_ids

  cluster_role_arn = module.iam.eks_cluster_role_arn
  node_role_arn    = module.iam.eks_node_role_arn

}
