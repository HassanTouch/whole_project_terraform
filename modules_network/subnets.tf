resource "aws_subnet" "public-subnet-1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.public-1_value
  map_public_ip_on_launch = "true"
  tags = {
    Name = "public-subnet"
  }
}

resource "aws_subnet" "public-subnet-2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.public-2_value
  map_public_ip_on_launch = "true"
  tags = {
    Name = "public-2-subnet"
  }
}

resource "aws_subnet" "privat-subnet-1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.privat-1_value

  tags = {
    Name = "privat-1-subnet"
  }
}

resource "aws_subnet" "privat-subnet-2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.privat-2_value
  tags = {
    Name = "privat-2-subnet"
  }
}