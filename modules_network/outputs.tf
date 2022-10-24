output "MainVPC" {
  value =  aws_vpc.main.id
}


output "PRI-SN1" {
  value =  aws_subnet.privat-subnet-1.id
}

output "PRI-SN2" {
  value =  aws_subnet.privat-subnet-2.id
}


output "PUB-SN1" {
  value =  aws_subnet.public-subnet-1.id
}

output "PUB-SN2" {
  value =  aws_subnet.public-subnet-2.id
}