resource "aws_route_table" "pub-table-rout" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = var.rout_1
    gateway_id = aws_internet_gateway.gw.id
  }

  tags = {
    Name = "route-public"
  }
}


resource "aws_route_table" "privat-table-rout" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = var.rout_2
    gateway_id = aws_nat_gateway.nat-gw.id
  }

  tags = {
    Name = "priv-route"
  }
}
