module "budget" {
  source = "../../modules/budget"

  budget_name         = var.budget_name
  budget_limit_amount = var.budget_limit_amount
  notification_email  = var.notification_email
}