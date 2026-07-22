variable "project_name" {
  description = "Project Name"
  type        = string
}

variable "environment" {
  description = "Environment"
  type        = string
}

variable "vpc_cidr" {
  description = "VPC CIDR Block"
  type        = string
}

variable "availability_zones" {
  description = "Availability Zones"
  type        = list(string)
}

variable "public_subnet_cidrs" {
  description = "Public Subnet CIDRs"
  type        = list(string)
}

variable "private_subnet_cidrs" {
  description = "Private Subnet CIDRs"
  type        = list(string)
}

variable "enable_nat_gateway" {
  description = "Create NAT Gateway"
  type        = bool
  default     = true
}

variable "single_nat_gateway" {
  description = "Use Single NAT Gateway"
  type        = bool
  default     = true
}
