terraform {
  backend "s3" {
    bucket         = "poornima-terraform-state"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-locks"
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "dev" {
  ami           = "ami-0f88e80871fd81e91"
  instance_type = "t2.micro"

  tags = {
    Name = "nitnit"
  }
}
