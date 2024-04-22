terraform {
  cloud {
    organization = "rio-hashicorp"
    workspaces {
      name = "vault-aws3"
    }
  }

  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 4.16"
    }
  }
  required_version = ">= 1.2.0"
}

  provider "aws" {
    region = "us-west-2"
  }

  resource "aws_instance" "vault_server1" {
    ami = "ami-08d70e59c07c61a3a"
    instance_type = "t2.micro"
  }
