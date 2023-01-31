provider "aws" {
region = "us-east-2"
access_key = "AKIAVQIWBY5IQSAY54J5"
secret_key = "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"
}
resource "aws_instance" "server" {
for_each = {
host-1 = "Ansible"
host-2 = "Docker"
}
ami = "ami-05bfbece1ed5beb54"
instance_type = "t2.micro"
tags = {
Name = "${each.value}"
}
}
