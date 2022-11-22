resource "aws_route_table" "public_route_table" {
  vpc_id = aws_vpc.my_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }
}

resource "aws_route_table" "private_route_table" {
  vpc_id = aws_vpc.my_vpc.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.nat_gw.id
  }

}

resource "aws_route_table_association" "nat_association" {
  subnet_id      = aws_subnet.private-us-east-2a.id
  route_table_id = aws_route_table.private_route_table.id
}

resource "aws_route_table_association" "public_a_association" {
  subnet_id      = aws_subnet.public-us-east-2a.id
  route_table_id = aws_route_table.public_route_table.id
}

resource "aws_route_table_association" "public_b_association" {
  subnet_id      = aws_subnet.public-us-east-2b.id
  route_table_id = aws_route_table.public_route_table.id
}