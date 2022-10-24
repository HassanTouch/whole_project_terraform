resource "aws_route_table_association" "a" {
  subnet_id      = aws_subnet.public-subnet-2.id
  route_table_id = aws_route_table.pub-table-rout.id
}

resource "aws_route_table_association" "b" {
  subnet_id      = aws_subnet.public-subnet-1.id
  route_table_id = aws_route_table.pub-table-rout.id
}

resource "aws_route_table_association" "c" {
  subnet_id      = aws_subnet.privat-subnet-1.id
  route_table_id = aws_route_table.privat-table-rout.id
}

resource "aws_route_table_association" "d" {
  subnet_id      = aws_subnet.privat-subnet-2.id
  route_table_id = aws_route_table.privat-table-rout.id
}