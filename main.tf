resource "aws_ami_copy" "eks_encrypt" {
  name              = "eks_encrypt"
  description       = "This module is used for encryption of AMI"
  source_ami_id     = "${var.source_ami_id}"
  source_ami_region = "${var.source_ami_region}"
  kms_key_id = "${var.kms_key_id}"
  encrypted = "true"

  tags = {
    Project = "${var.project_name}"
    Environment = "${var.project_envrionment}"
  }
}
