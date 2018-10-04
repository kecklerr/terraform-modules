
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| availability_zone | AZ where volume is located, must be the same as the ec2 | string | - | yes |
| kms_key_id | encryption key | string | - | yes |
| size | size of ebs volume | string | - | yes |
| snapshot_id | If creating volume from a snapshot | string | `` | no |
| tags | A mapping of tags to assign to the resource | map | - | yes |
| type | type of volume: gp2 io1 st1 | string | `g2` | no |

## Outputs

| Name | Description |
|------|-------------|
| arn | ebs arn of volume |
| id | ebs volume id |

