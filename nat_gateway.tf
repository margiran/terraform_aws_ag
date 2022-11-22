resource "aws_eip" "nat_eip" {
  vpc = true
  tags = {
    "Name" = "nat_eip"
  }
}

resource "aws_nat_gateway" "nat_gw" {
  allocation_id = aws_eip.nat_eip.id
  subnet_id     = aws_subnet.public-us-east-2a.id

  tags = {
    "Name" = "nat_gateway"
  }

  depends_on = [aws_internet_gateway.igw]
}

