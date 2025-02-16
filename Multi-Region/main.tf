provider "aws" {
  alias = "a"
  region = "us-east-1"
}
provider "aws" {
  alias = "b"
  region = "us-west-2"
}

resource "aws_instance" "Test" {
    ami = "ami-04b4f1a9cf54c11d0"
    instance_type = "t2.micro"
    provider = aws.a
}
resource "aws_instance" "Test1" {
    ami = "ami-09245d5773578a1d6"
    instance_type = "t2.micro"
    provider = aws.b
}
