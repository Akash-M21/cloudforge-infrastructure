output "vpc_id" {
  description = "VPC ID"

  value = aws_vpc.vpc.id
}

output "public_subnet_ids" {
  description = "Public Subnet IDs"

  value = aws_subnet.public[*].id
}

output "private_subnet_ids" {
  description = "Private Subnet IDs"

  value = aws_subnet.private[*].id
}

output "internet_gateway_id" {
  value = aws_internet_gateway.igw.id
}

output "nat_gateway_id" {
  value = aws_nat_gateway.nat.id
}


