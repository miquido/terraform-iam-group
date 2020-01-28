output "group_id" {
  value       = aws_iam_group.main.id
  description = "The group's ID."
}

output "group_name" {
  value       = aws_iam_group.main.name
  description = "The group's name."
}

output "group_arn" {
  value       = aws_iam_group.main.arn
  description = "The ARN assigned by AWS for this group."
}

output "group_unique_id" {
  value       = aws_iam_group.main.unique_id
  description = "The unique ID assigned by AWS for this group."
}
