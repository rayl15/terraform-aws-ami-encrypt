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
|project_name|
Input variables:

project_name = "Name of Project" <br />
project_envrionment = "Environment: dev/stage" <br />
source_ami_region = "Region of AMI ID" <br />
source_ami_id = "ID Of AMI" <br />
kms_key_id = "KMS Key Id" <br />

Output variables: <br />
ecrypted_ami_id = "Encrypted The AMI ID" <br />
