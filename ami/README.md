# AMI

## Description
Returns the latest ami from the search

Default AMI is the latest ID and Name of Amazon AMI (based on RHEL 6) - volume ebs 8Gb (gp2) - HVM instance

## Module Example:
#### To define an ami you want, you need both

- ami_name
- owner_alias

```
module "ami" {
  source = "../../ami"
  region = "${var.region}"
  kms_key_arn = "${var.kms_key_arn}"
  ami_name = "new-ami-rhel7*"
  owner_alias = "230498302483408"
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| ami_name | AMI name - can be regex | string | `amzn-ami-*-x86_64-gp2` | no |
| kms_key_arn | kms key arn to encrypt | string | `` | no |
| owner_alias | Owner of AMI by alias name.  ex: amazon, 874549388498 | string | `amazon` | no |
| region | Region for source ami | string | - | yes |
| virt_type | Virtualization type of AMI, We always use HVM | string | `hvm` | no |

## Outputs

| Name | Description |
|------|-------------|
| encrypted_id | Encrpted ami id |
| id | AMI ID created |
| name | AMI name created |

