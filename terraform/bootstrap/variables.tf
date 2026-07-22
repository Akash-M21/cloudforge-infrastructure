variable "aws_region" {
  description = "AWS Region"
  type        = string
  default     = "ap-south-1"
}

variable "environment" {
  description = "Deployment environment"
  type        = string
  default     = "dev"
}

variable "bucket_name" {
  description = "Unique S3 bucket name for Terraform state"
  type        = string
}
