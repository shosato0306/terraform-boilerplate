terraform {
  cloud {
    organization = "sho-sato"

    workspaces {
      name = "terraform-boilerplate"
    }
  }

  required_version = "= 1.7.5"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.44"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "sample" {
  bucket = "sample-bucket-0411"
}

