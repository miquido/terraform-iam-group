## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| assume_role_policies | List of IAM Policies with Assume Role permissions to create and attach to created IAM Group | object | `<list>` | no |
| attach_policy_arns | List of IAM Policy ARNs to attach to the created IAM Group | list(string) | `<list>` | no |
| name | The group's name. The name must consist of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-_.. Group names are not distinguished by case. For example, you cannot create groups named both `ADMINS` and `admins`. | string | - | yes |
| path | Path in which to create the group and policies. | string | `/users/` | no |

## Outputs

| Name | Description |
|------|-------------|
| group_arn | The ARN assigned by AWS for this group. |
| group_id | The group's ID. |
| group_name | The group's name. |
| group_unique_id | The unique ID assigned by AWS for this group. |

