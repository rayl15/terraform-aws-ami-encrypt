output "ecrypted_ami_id"{
    value = "${aws_ami_copy.eks_encrypt.id}"
}
