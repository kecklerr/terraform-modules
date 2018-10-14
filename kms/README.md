# KMS Key

## Description
Create kms key for encrypting volumes

## Module Example
```
module "kms_key" {
  source = "../../kms"
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| deletion_window | Days for deletion when deleted | string | `7` | no |
| tags | A mapping of tags to assign to the resource | map | `<map>` | no |

## Outputs

| Name | Description |
|------|-------------|
| arn | kms key arn |
| id | kms key id |

