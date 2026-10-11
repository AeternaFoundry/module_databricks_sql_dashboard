variable "sql_dashboards" {
  description = <<EOT
Map of sql_dashboards, attributes below
Required:
    - name
Optional:
    - created_at
    - dashboard_filters_enabled
    - parent
    - run_as_role
    - tags
    - updated_at
    - provider_config (block):
        - workspace_id (optional)
EOT

  type = map(object({
    name                      = string
    created_at                = optional(string)
    dashboard_filters_enabled = optional(bool)
    parent                    = optional(string)
    run_as_role               = optional(string)
    tags                      = optional(list(string))
    updated_at                = optional(string)
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
  }))
}

