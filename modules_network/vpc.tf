resource "aws_vpc" "main" {
  cidr_block = var.vpc_vlue
  tags = {
    Name = "main"
  }
}