resource "aws_eip" "nat-1" {

  depends_on = [aws_internet_gateway.gw]
}

resource "aws_nat_gateway" "nat-gw" {
  allocation_id = aws_eip.nat-1.id
  subnet_id     = aws_subnet.public-subnet-2.id

  tags = {
    Name = "gw NAT"
  }

  depends_on = [aws_internet_gateway.gw]
}