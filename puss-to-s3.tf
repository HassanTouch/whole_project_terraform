terraform {
  backend "s3" {
    bucket = "environment-s3"
    key    = "terraform.tfstate"
    region = "us-east-2"
  }
}
