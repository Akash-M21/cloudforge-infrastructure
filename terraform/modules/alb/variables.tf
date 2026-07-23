variable "project_name" {
  description = "Project name"
  type        = string
}

variable "environment" {
  description = "Deployment environment"
  type        = string
}

variable "cluster_name" {
  description = "EKS Cluster Name"
  type        = string
}

variable "cluster_oidc_issuer" {
  description = "OIDC issuer URL of the EKS cluster"
  type        = string
}

variable "aws_region" {
  description = "AWS Region"
  type        = string
}

variable "cluster_endpoint" {
  description = "EKS Cluster API endpoint"
  type        = string
}

variable "cluster_certificate_authority_data" {
  description = "Base64 encoded cluster CA certificate"
  type        = string
}
