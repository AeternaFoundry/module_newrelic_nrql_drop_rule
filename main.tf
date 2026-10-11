resource "newrelic_nrql_drop_rule" "nrql_drop_rules" {
  for_each = var.nrql_drop_rules

  action      = each.value.action
  nrql        = each.value.nrql
  account_id  = each.value.account_id
  description = each.value.description

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      read = timeouts.value.read
    }
  }
}

