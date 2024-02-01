terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "eu-west-3"
}

resource "aws_instance" "instance_hetic" {
  ami           = "ami-087da76081e7685da"
  instance_type = "t2.micro"
  tags = {
    Name = "instance"
  }
}

resource "aws_s3_bucket" "bucket_hetic" {
  bucket = "bucket-hetic"

  tags = {
    Name = "bucket"
  }
}
