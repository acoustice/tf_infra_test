terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  profile = "default"
  region  = "ap-southeast-2"
}

resource "aws_instance" "ex01" {
  ami           = "ami-0ded330691a314693"
  instance_type = "t2.micro"
  key_name	= "aws-syd2"
  vpc_security_group_ids= [
      "sg-0d81a51976627db3d",
  ]
}
