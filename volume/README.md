# Volumes 

## Description
Attaching ebs volumes to ec2

## Module Example
```
module "ebs_volume" {
  source = "../../volume"
  count = "${var.ec2_count}"

  device_name = "${var.ebs_device_name}"
  instance_id = "${module.ec2.id}"
  volume_id = "${module.ebs-1.id}"
}
``` 

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| count | number of ebs volumes to attach | string | `1` | no |
| device_name | device name to use for ebs volume you are attaching:  /dev/xvdb /dev/xvdc | list | - | yes |
| instance_id | instance id to attach volume to | list | - | yes |
| volume_id | ebs volume id to attach | list | - | yes |

## Outputs

| Name | Description |
|------|-------------|
| id | - |
| name | - |

