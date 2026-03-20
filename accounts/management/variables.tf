variable "aws_region" {
  type        = string
  description = "AWS region for management account resources"
  default     = "eu-central-1"
}

variable "aws_profile" {
  type        = string
  description = "AWS CLI profile for the management account"
}

variable "budget_name" {
  type        = string
  description = "Name of the AWS budget"
  default     = "dotw-management-budget"
}

variable "budget_limit_amount" {
  type        = string
  description = "Monthly budget limit amount in USD"
  default     = "5"
}

variable "notification_email" {
  type        = string
  description = "Email address for budget notifications"
}