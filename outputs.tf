output "nrql_drop_rules_id" {
  description = "Map of id values across all nrql_drop_rules, keyed the same as var.nrql_drop_rules except keys with no id are omitted"
  value       = { for k, v in newrelic_nrql_drop_rule.nrql_drop_rules : k => v.id if v.id != null && length(v.id) > 0 }
}
output "nrql_drop_rules_account_id" {
  description = "Map of account_id values across all nrql_drop_rules, keyed the same as var.nrql_drop_rules except keys with no account_id are omitted"
  value       = { for k, v in newrelic_nrql_drop_rule.nrql_drop_rules : k => v.account_id if v.account_id != null }
}
output "nrql_drop_rules_action" {
  description = "Map of action values across all nrql_drop_rules, keyed the same as var.nrql_drop_rules except keys with no action are omitted"
  value       = { for k, v in newrelic_nrql_drop_rule.nrql_drop_rules : k => v.action if v.action != null && length(v.action) > 0 }
}
output "nrql_drop_rules_description" {
  description = "Map of description values across all nrql_drop_rules, keyed the same as var.nrql_drop_rules except keys with no description are omitted"
  value       = { for k, v in newrelic_nrql_drop_rule.nrql_drop_rules : k => v.description if v.description != null && length(v.description) > 0 }
}
output "nrql_drop_rules_nrql" {
  description = "Map of nrql values across all nrql_drop_rules, keyed the same as var.nrql_drop_rules except keys with no nrql are omitted"
  value       = { for k, v in newrelic_nrql_drop_rule.nrql_drop_rules : k => v.nrql if v.nrql != null && length(v.nrql) > 0 }
}
output "nrql_drop_rules_pipeline_cloud_rule_entity_id" {
  description = "Map of pipeline_cloud_rule_entity_id values across all nrql_drop_rules, keyed the same as var.nrql_drop_rules except keys with no pipeline_cloud_rule_entity_id are omitted"
  value       = { for k, v in newrelic_nrql_drop_rule.nrql_drop_rules : k => v.pipeline_cloud_rule_entity_id if v.pipeline_cloud_rule_entity_id != null && length(v.pipeline_cloud_rule_entity_id) > 0 }
}
output "nrql_drop_rules_rule_id" {
  description = "Map of rule_id values across all nrql_drop_rules, keyed the same as var.nrql_drop_rules except keys with no rule_id are omitted"
  value       = { for k, v in newrelic_nrql_drop_rule.nrql_drop_rules : k => v.rule_id if v.rule_id != null && length(v.rule_id) > 0 }
}

