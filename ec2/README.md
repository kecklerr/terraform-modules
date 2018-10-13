# EC2 instance

## Description
Creates basic ec2 instance based on ami id
Needs VPC id to select subnet to put the ec2 created

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| ami_id | ID of AMI to use for the instance | string | - | yes |
| associate_public_ip_address | If true, the EC2 instance will have associated public IP address | string | `false` | no |
| count | Number of ec2 | string | `1` | no |
| disable_api_termination | If true, enables EC2 Instance Termination Protection | string | `false` | no |
| ebs_optimized | If true, the launched EC2 instance will be EBS-optimized | string | `false` | no |
| instance_type | The type of instance to start | string | `t2.micro` | no |
| key_name | ssh key name | string | `` | no |
| tags | A mapping of tags to assign to the resource | map | `<map>` | no |
| tenancy | The tenancy of the instance (if the instance is running in a VPC). Available values: default, dedicated, host. | string | `default` | no |
| user_data | User data passed to instance to configure | string | `` | no |
| volume_size | size of root volume | string | `10` | no |
| volume_type | volume type on root partition default - gp2 | string | `gp2` | no |
| vpc_id | vpc id where the ec2s will be created | string | - | yes |
| vpc_security_group_ids | A list of security group IDs to associate with | list | - | yes |

## Outputs

| Name | Description |
|------|-------------|
| id | List of IDs of instances |
| private_dns | List of private DNS names assigned to the instances. Can only be used inside the Amazon EC2, and only available if you've enabled DNS hostnames for your VPC |
| private_ip | List of private IP addresses assigned to the instances |

