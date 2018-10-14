# Example of ec2 creation with encrypted ami based

Based on the modules ami/ebs/ec2/kms/volume

This creates multiple EBS volumes and attaches them the multiple instances.  
This setups multiple EC2s with the same volumes for identical servers.  

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| ebs-1_create | Do we have a ebs volume 1? 0 = no ebs volume  1 = create ebs volume | string | `0` | no |
| ebs-1_device_name | ebs-1 device name /dev/xvdd /dev/xvdf | list | - | yes |
| ebs-1_size | size of ebs-1 in GB | string | `1` | no |
| ec2_count | number of ec2 to create | string | `1` | no |
| key_name | Key for ssh access | string | `` | no |
| region | region for instances | string | `us-east-1` | no |
| tags | Default tags | map | `<map>` | no |
| vpc_id | vpc id | string | - | yes |
| vpc_security_group_ids | vpc security group id for ec2 | string | - | yes |

## Outputs

| Name | Description |
|------|-------------|
| ec2_az | Availability zones EC2s are located |
| ec2_id | EC2 ids created |
| ec2_private_ip | EC2s private ips |
| kms_key_arn | KMS Key arn for encrypting root volumes and ebs volumes |
| kms_key_id | KMS Key id for encrypting root volumes and ebs volumes |

