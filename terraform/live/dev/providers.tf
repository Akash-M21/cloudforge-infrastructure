provider "aws" {
  region = var.aws_region

  default_tags {
    tags = {
      Project     = "CloudForge"
      Environment = var.environment
      ManagedBy   = "Terraform"
      Owner       = "Akash"
      Repository  = "cloudforge-infrastructure"
    }
  }
}
