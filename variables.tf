variable "name" {
  type        = string
  description = "The group's name. The name must consist of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-_.. Group names are not distinguished by case. For example, you cannot create groups named both `ADMINS` and `admins`."
}

variable "path" {
  type        = string
  default     = "/users/"
  description = "Path in which to create the group and policies."
}

variable "attach_policy_arns" {
  type        = list(string)
  default     = []
  description = "List of IAM Policy ARNs to attach to the created IAM Group"
}

variable "assume_role_policies" {
  type = list(object({
    AccountIDs = list(string)
    RoleNames  = list(string)
  }))
  default     = []
  description = "List of IAM Policies with Assume Role permissions to create and attach to created IAM Group"
}
