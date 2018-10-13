# exmple of ec2 creation with encrypted ami based

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| region | region for instances | string | `us-east-1` | no |
| tags | Default tags | map | `<map>` | no |
| vpc_id | vpc id | string | - | yes |
| vpc_security_group_ids | vpc security group id for ec2 | string | - | yes |

