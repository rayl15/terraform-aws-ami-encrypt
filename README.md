# terraform-aws-ami-encrypt


## Usage

```hcl
module "ami-encryt" {
  source = "git@github.com:rayl15/terraform-aws-ami-encrypt"
  project_name = "my_awesome_project"
  project_envrionment = "dev"
  source_ami_region = "us-east-1"
  source_ami_id = "ami-xx"
  kms_key_id = "kms_id"
}
```

The output can be imported into any module which needs encrypted AMI. Below is an example of imported into EKS worker groups.

```hcl
  worker_groups = [
    {
      instance_type = "m5.large"
      asg_max_size  = 20
      asg_min_size = 3  
      Project = "${var.project_name}"
      key_name = "${var.key_name}"
      ami_id = "${module.ami_encrypt.ecrypted_ami_id}"
    }
  ]
  ```

## Requirements

| Name | Version |
|------|---------|
| terraform | ~> 0.12.6 |
| aws | ~> 2.53 |

## Providers

| Name | Version |
|------|---------|
| aws | ~> 2.53 |

## Requirements

| Name | Version |
|------|---------|
| terraform | ~> 0.12.6 |
| aws | ~> 2.53 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
|project_name| Name of Project | String | NA | yes |
|project_envrionment|Environment Name|String | NA | yes |
|source_ami_region|Region of AMI ID|String | NA | yes |
|source_ami_id|ID Of AMI|String| NA | yes |
|kms_key_id| KMS Key Id | String|  NA | yes

## Outputs

| Name | Description |
|------|-------------|
|ecrypted_ami_id|Encrypted The AMI ID|
