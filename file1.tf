terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}
provider "aws" {
  region     = "us-east-1"
  access_key = "AKIA3I72YNCSMVVZLAJK"
  secret_key = "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"
}

resource "aws_instance" "web" {
  ami           = "ami-0aa7d40eeae50c9a9"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}
