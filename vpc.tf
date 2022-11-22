resource "aws_vpc" "my_vpc" {
  cidr_block = var.cidrblock
  tags = {
    "Name" = "vpc_${random_pet.pet.id}_${terraform.workspace}"
  }
}

