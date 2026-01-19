provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "example" {
  ami           = "ami-0ced6a024bb18ff2e"
  instance_type = "t2.micro"
}
