variable "nrql_drop_rules" {
  description = <<EOT
Map of nrql_drop_rules, attributes below
Required:
    - action
    - nrql
Optional:
    - account_id
    - description
    - timeouts (block):
        - read (optional)
EOT

  type = map(object({
    action      = string
    nrql        = string
    account_id  = optional(number)
    description = optional(string)
    timeouts = optional(object({
      read = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.nrql_drop_rules : (
        contains(["drop_data", "drop_attributes", "drop_attributes_from_metric_aggregates"], v.action)
      )
    ])
    error_message = "must be one of: \"drop_data\", \"drop_attributes\", \"drop_attributes_from_metric_aggregates\""
  }
}

