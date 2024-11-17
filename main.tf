provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "web_server" {
  ami           = "ami-0dee22c13ea7a9a67" # Amazon Linux 2 AMI
  instance_type = "t2.micro"
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-unique-bucket-name"
  acl    = "private"
}
