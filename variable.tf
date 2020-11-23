provider "aws" {
  region = "us-east-1"
  access_key = "AKIA4APUWV32YX7H5P45"
  secret_key = "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"
}

variable "subnet_prefix" {
  description = "cidr block for the subnet"
  #default 
}

# 1. create vpc
resource "aws_vpc" "prod-vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "production"
  }
}

resource "aws_subnet" "subnet-1" {
  vpc_id     = aws_vpc.prod-vpc.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = "prod-subnet"
  }
}