<!-- markdownlint-disable -->
## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.13 |
| aws | >= 2.0 |
| local | >= 1.2 |
| null | >= 2.0 |

## Providers

| Name | Version |
|------|---------|
| aws | >= 2.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| assume\_role\_policies | List of IAM Policies with Assume Role permissions to create and attach to created IAM Group | <pre>list(object({<br>    AccountIDs = list(string)<br>    RoleNames  = list(string)<br>  }))</pre> | `[]` | no |
| attach\_policy\_arns | List of IAM Policy ARNs to attach to the created IAM Group | `list(string)` | `[]` | no |
| name | The group's name. The name must consist of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-\_.. Group names are not distinguished by case. For example, you cannot create groups named both `ADMINS` and `admins`. | `string` | n/a | yes |
| path | Path in which to create the group and policies. | `string` | `"/users/"` | no |

## Outputs

| Name | Description |
|------|-------------|
| group\_arn | The ARN assigned by AWS for this group. |
| group\_id | The group's ID. |
| group\_name | The group's name. |
| group\_unique\_id | The unique ID assigned by AWS for this group. |

<!-- markdownlint-restore -->
