variable "budget_name" {
  type        = string
  description = "Name of the AWS budget"
}

variable "budget_limit_amount" {
  type        = string
  description = "Monthly budget limit amount in USD"
}

variable "notification_email" {
  type        = string
  description = "Email address for budget notifications"
}

variable "alert_thresholds" {
  type        = list(number)
  description = "Percentage thresholds for budget alerts"
  default     = [50, 80, 100]
}