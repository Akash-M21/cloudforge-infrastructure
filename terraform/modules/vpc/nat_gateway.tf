resource "aws_eip" "nat_eip" {

  domain = "vpc"

  depends_on = [
    aws_internet_gateway.igw
  ]

  tags = merge(
    local.common_tags,
    {
      Name = "${local.project}-nat-eip"
    }
  )

}


#NAT Gateway

resource "aws_nat_gateway" "nat" {

  allocation_id = aws_eip.nat_eip_eip.id

  subnet_id = aws_subnet.public[0].id

  tags = merge(
    local.common_tags,
    {
      Name = "${local.project}-nat"
    }
  )

  depends_on = [
    aws_internet_gateway.igw
  ]

}
