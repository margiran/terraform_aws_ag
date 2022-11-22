resource "aws_subnet" "public-us-east-2a" {
  vpc_id                  = aws_vpc.my_vpc.id
  cidr_block              = "10.0.0.0/28"
  map_public_ip_on_launch = true
  availability_zone       = "us-east-2a"
  tags = {
    "Name" = "public-subnet-us-east-2a"
  }
}

resource "aws_subnet" "public-us-east-2b" {
  vpc_id                  = aws_vpc.my_vpc.id
  cidr_block              = "10.0.1.0/28"
  map_public_ip_on_launch = true
  availability_zone       = "us-east-2b"
  tags = {
    "Name" = "public-subnet-us-east-2b"
  }
}

resource "aws_subnet" "private-us-east-2a" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = "10.0.2.0/28"
  availability_zone = "us-east-2a"
  tags = {
    "Name" = "private-subnet-us-east-2a"
  }
}

