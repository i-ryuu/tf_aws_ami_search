output "ami_ubuntu_id" {
    value = "${data.aws_ami.ubuntu.id}"
}

output "ami_self_id" {
    value = "${data.aws_ami.self.id}"
}

