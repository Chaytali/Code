terraform {
  
  backend "remote" {
    hostname = "app.terraform.io"
  }
  cloud {
    organization = "my-org123"

    workspaces {
      name = "github-actions"
    }
  }
}

provider "aws" {
    access_key = "AKIAWFN6DT7CH67JSW4T"
    secret_key = "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"
    region = "ap-south-1"
}

resource "aws_instance" "Terraform" {
    tags ={
        name = "terraform-test",
        env = "test"
    }
    ami                    = "ami-0cca134ec43cf708f"
    instance_type          = "t2.micro"
    vpc_security_group_ids =["sg-0f948bc06d7a465e3"]
}