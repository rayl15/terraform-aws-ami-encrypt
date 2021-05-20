variable "source_ami_id" {
 type        = string
 description = "Source AMI id should be passed here example ami-05b941c0154656a8d"
  
}
variable "source_ami_region" {
  type        = string
  description = "Region where provided AMI resides in, example us-east-1"

}

variable "kms_key_id" {
  
  type        = string
  description = "KMS key id that needs to be used for encryption of the provided AMI"
  
}

variable "project_name" {
  
  type        = string
  description = "Name of project, this will be passed as project tag"
  
}

variable "project_envrionment" {
  
  type        = string
  description = "Name of project environment, this will be passed as project environment tag example development"
  
}
