output "ecrypted_ami_id"{
    value = "${aws_ami_copy.ami_encrypt.id}"
}
