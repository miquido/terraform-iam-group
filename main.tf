resource "aws_iam_group" "main" {
  name = var.name
  path = var.path
}

resource "aws_iam_group_policy_attachment" "defaults" {
  count      = length(var.attach_policy_arns)
  group      = aws_iam_group.main.name
  policy_arn = var.attach_policy_arns[count.index]
}

#################################
# Assume Role Policy Attachements
#################################

data "aws_iam_policy_document" "permit-assume-role" {
  count = length(var.assume_role_policies)

  statement {
    sid     = ""
    effect  = "Allow"
    actions = ["sts:AssumeRole"]

    resources = flatten(
      [
        for accountId in var.assume_role_policies[count.index].AccountIDs :
        formatlist("arn:aws:iam::%s:role/%s", accountId, var.assume_role_policies[count.index].RoleNames)
      ]
    )
  }
}

resource "aws_iam_policy" "permit-assume-role" {
  count       = length(var.assume_role_policies)
  name_prefix = var.name
  path        = var.path
  description = "Assume Role policy for IAM Group \"${var.name}\". Managed by IAM Group Miquido's terraform module."
  policy      = data.aws_iam_policy_document.permit-assume-role[count.index].json
}

resource "aws_iam_group_policy_attachment" "permit-assume-role" {
  count      = length(var.assume_role_policies)
  group      = aws_iam_group.main.name
  policy_arn = aws_iam_policy.permit-assume-role[count.index].arn
}
