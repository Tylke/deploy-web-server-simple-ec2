
provider "aws" {
  access_key = "AKIA4APUWV32YX7H5P45"
  secret_key = "hFGAqh4OCpo71B8vj98nfqNJrRiZ5fqn4m0WFHdP"
  region     = "us-east-1"
}

resource "aws_instance" "test_example" {
  ami           = "ami-2757f631"
  instance_type = "t2.micro"
}