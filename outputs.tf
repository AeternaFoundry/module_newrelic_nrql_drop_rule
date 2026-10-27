output "nrql_drop_rules_id" {
  description = "Map of id values across all nrql_drop_rules, keyed the same as var.nrql_drop_rules"
  value       = { for k, v in newrelic_nrql_drop_rule.nrql_drop_rules : k => v.id }
}
output "nrql_drop_rules_account_id" {
  description = "Map of account_id values across all nrql_drop_rules, keyed the same as var.nrql_drop_rules"
  value       = { for k, v in newrelic_nrql_drop_rule.nrql_drop_rules : k => v.account_id }
}
output "nrql_drop_rules_action" {
  description = "Map of action values across all nrql_drop_rules, keyed the same as var.nrql_drop_rules"
  value       = { for k, v in newrelic_nrql_drop_rule.nrql_drop_rules : k => v.action }
}
output "nrql_drop_rules_description" {
  description = "Map of description values across all nrql_drop_rules, keyed the same as var.nrql_drop_rules"
  value       = { for k, v in newrelic_nrql_drop_rule.nrql_drop_rules : k => v.description }
}
output "nrql_drop_rules_nrql" {
  description = "Map of nrql values across all nrql_drop_rules, keyed the same as var.nrql_drop_rules"
  value       = { for k, v in newrelic_nrql_drop_rule.nrql_drop_rules : k => v.nrql }
}
output "nrql_drop_rules_pipeline_cloud_rule_entity_id" {
  description = "Map of pipeline_cloud_rule_entity_id values across all nrql_drop_rules, keyed the same as var.nrql_drop_rules"
  value       = { for k, v in newrelic_nrql_drop_rule.nrql_drop_rules : k => v.pipeline_cloud_rule_entity_id }
}
output "nrql_drop_rules_rule_id" {
  description = "Map of rule_id values across all nrql_drop_rules, keyed the same as var.nrql_drop_rules"
  value       = { for k, v in newrelic_nrql_drop_rule.nrql_drop_rules : k => v.rule_id }
}

