resource "aws_instance" "bastion" {
    ami                    = "ami-092b43193629811af"

    instance_type          = "t2.micro"

    vpc_security_group_ids = [aws_security_group.allow_ssh.id]

    subnet_id = module.network.PUB-SN1

    key_name = aws_key_pair.key_pair.id


    root_block_device {

        volume_size = 10

    }

    
}

###################################################################

resource "aws_key_pair" "key_pair" {

  key_name   = "deployer-key"

  public_key = file("/home/hassan/.ssh/id_ed25519.pub")
}

####################################################################

resource "aws_instance" "private-ec2" {

    ami                    = "ami-092b43193629811af"

    instance_type          = "t2.micro"

    vpc_security_group_ids = [aws_security_group.allow_ssh_private.id]


    key_name = aws_key_pair.key_pair.id

    subnet_id = module.network.PRI-SN1

    root_block_device {

        volume_size = 10

    }
}