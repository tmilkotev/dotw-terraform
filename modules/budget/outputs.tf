output "budget_name" {
  value       = aws_budgets_budget.this.name
  description = "Created AWS budget name"
}