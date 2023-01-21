provider "aws" {
    access_key = "AKIAVCLKKHHMA5TPBDUW"
    secret_key = "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"
    region = "ap-south-1"
}

resource "aws_instance" "rancherHost" {
    tags ={
        name = "tf-rancher-host-rmf44"
    }
    ami                    = "ami-00bb465b8b23e8c9a"
    instance_type          = "t2.micro"
    vpc_security_group_ids =["sg-0674aa1c2f6559fdc"]
}