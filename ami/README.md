# AMI

## Description
Returns the latest ami from the search

Default returns the latest ID and Name of Amazon AMI (RHEL 6) - volume ebs 8Gb (gp2) - HVM instance

## Example:
#### To define an ami you want, you need both

- ami_name
- owner_alias

module "dtcc_ami" {
    ami_name = "dtcc-dia-rhel7*"
    owner_alias = "874549388498"
}

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| ami_name | AMI name - can be regex | string | `amzn-ami-*-x86_64-gp2` | no |
| owner_alias | Owner of AMI by alias name.  ex: amazon, 874549388498 | string | `amazon` | no |
| region | Region for source ami | string | - | yes |
| virt_type | Virtualization type of AMI, We always use HVM | string | `hvm` | no |

## Outputs

| Name | Description |
|------|-------------|
| encrypted_id | Encrpted ami id |
| id | AMI ID created |
| name | AMI name created |

