resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "Allow TLS inbound traffic"
  vpc_id      = module.network.MainVPC
  
  ingress {
    description      = "allow_ssh"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_ssh"
  }
}

#######################################################

resource "aws_security_group" "allow_ssh_private" {
  name        = "allow_ssh_only"
  description = "Allow TLS inbound traffic"
  vpc_id      = module.network.MainVPC
  
  ingress {
    description      = "allow_ssh"
    from_port        = 3000
    to_port          = 3000
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }
  
  tags = {
    Name = "allow_only_ssh"
  }
}