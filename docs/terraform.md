<!-- markdownlint-disable -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 2.0 |
| <a name="requirement_local"></a> [local](#requirement\_local) | >= 1.2 |
| <a name="requirement_null"></a> [null](#requirement\_null) | >= 2.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 2.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_iam_group.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_group) | resource |
| [aws_iam_group_policy_attachment.defaults](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_group_policy_attachment) | resource |
| [aws_iam_group_policy_attachment.permit-assume-role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_group_policy_attachment) | resource |
| [aws_iam_policy.permit-assume-role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) | resource |
| [aws_iam_policy_document.permit-assume-role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_assume_role_policies"></a> [assume\_role\_policies](#input\_assume\_role\_policies) | List of IAM Policies with Assume Role permissions to create and attach to created IAM Group | <pre>list(object({<br>    AccountIDs = list(string)<br>    RoleNames  = list(string)<br>  }))</pre> | `[]` | no |
| <a name="input_attach_policy_arns"></a> [attach\_policy\_arns](#input\_attach\_policy\_arns) | List of IAM Policy ARNs to attach to the created IAM Group | `list(string)` | `[]` | no |
| <a name="input_name"></a> [name](#input\_name) | The group's name. The name must consist of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-\_.. Group names are not distinguished by case. For example, you cannot create groups named both `ADMINS` and `admins`. | `string` | n/a | yes |
| <a name="input_path"></a> [path](#input\_path) | Path in which to create the group and policies. | `string` | `"/users/"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_group_arn"></a> [group\_arn](#output\_group\_arn) | The ARN assigned by AWS for this group. |
| <a name="output_group_id"></a> [group\_id](#output\_group\_id) | The group's ID. |
| <a name="output_group_name"></a> [group\_name](#output\_group\_name) | The group's name. |
| <a name="output_group_unique_id"></a> [group\_unique\_id](#output\_group\_unique\_id) | The unique ID assigned by AWS for this group. |
<!-- markdownlint-restore -->
