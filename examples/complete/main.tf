provider "aws" {
  region = "us-east-1"
}

module "test-iam-group" {
  source = "../../"

  name = "TestGroup"
  attach_policy_arns = []
  assume_role_policies = [
    {
      AccountIDs = ["root", "*"]
      RoleNames  = ["test", "*Admin"]
    },
    {
      AccountIDs = ["000000000"]
      RoleNames  = ["FullAdminOnly"]
    }
  ]
}
