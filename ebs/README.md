
# EBS

## Description
Creates an EBS volume.

Using the kms key to encrypt the volume

need availability zone to create the ebs volume.  This should be the same as the EC2 instance you are going to attach it to.

## Module Example:
#### To define an ebs you want, you need both
```
module "ebs" {
  source = "../../ebs"
  count = "${var.ec2_count}"

  availability_zone = "${module.ec2.availability_zone}"
  kms_key_id = "${var.kms_key_arn}"
  size = "${var.ebs_size}"
  tags = "${var.tags}"
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| availability_zone | AZ where volume is located, must be the same as the ec2 | list | - | yes |
| count | Number of ebs volumes | string | `1` | no |
| kms_key_id | encryption key | string | `` | no |
| size | size of ebs volume | string | - | yes |
| snapshot_id | If creating volume from a snapshot | string | `` | no |
| tags | A mapping of tags to assign to the resource | map | - | yes |
| type | type of volume: gp2 io1 st1 | string | `gp2` | no |

## Outputs

| Name | Description |
|------|-------------|
| arn | ebs arn of volume |
| id | ebs volume id |

