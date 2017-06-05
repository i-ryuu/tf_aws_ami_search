data "aws_ami" "ubuntu" {
    most_recent = true
    owners = ["099720109477"] # Canonical

    filter {
        name   = "architecture"
        values = ["x86_64"]
    }

    filter {
        name   = "root-device-type"
        values = ["ebs"]
    }

    filter {
        name   = "virtualization-type"
        values = ["hvm"]
    }

    filter {
        name   = "name"
        values = ["ubuntu/images/hvm-ssd/ubuntu-xenial-16.04-amd64-server-*"]
    }

    filter {
        name   = "block-device-mapping.volume-type"
        values = ["gp2"]
    }
}


data "aws_ami" "self" {
    most_recent = true
    owners = ["self"]
    name_regex = "${var.ami_regex_self}"
}

