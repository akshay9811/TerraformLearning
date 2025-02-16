provider "aws" {
    region = "us-east-1"
}
resource "aws_instance" "Test" {
    ami = "ami-04b4f1a9cf54c11d0"
    instance_type = "t2.micro"
}

resource "aws_s3_bucket" "Test" {
  bucket = "akshay-demo-9811-payment"
