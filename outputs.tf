output "sql_dashboards_id" {
  description = "Map of id values across all sql_dashboards, keyed the same as var.sql_dashboards except keys with no id are omitted"
  value       = { for k, v in databricks_sql_dashboard.sql_dashboards : k => v.id if v.id != null && length(v.id) > 0 }
}
output "sql_dashboards_created_at" {
  description = "Map of created_at values across all sql_dashboards, keyed the same as var.sql_dashboards except keys with no created_at are omitted"
  value       = { for k, v in databricks_sql_dashboard.sql_dashboards : k => v.created_at if v.created_at != null && length(v.created_at) > 0 }
}
output "sql_dashboards_dashboard_filters_enabled" {
  description = "Map of dashboard_filters_enabled values across all sql_dashboards, keyed the same as var.sql_dashboards except keys with no dashboard_filters_enabled are omitted"
  value       = { for k, v in databricks_sql_dashboard.sql_dashboards : k => v.dashboard_filters_enabled if v.dashboard_filters_enabled != null }
}
output "sql_dashboards_name" {
  description = "Map of name values across all sql_dashboards, keyed the same as var.sql_dashboards except keys with no name are omitted"
  value       = { for k, v in databricks_sql_dashboard.sql_dashboards : k => v.name if v.name != null && length(v.name) > 0 }
}
output "sql_dashboards_parent" {
  description = "Map of parent values across all sql_dashboards, keyed the same as var.sql_dashboards except keys with no parent are omitted"
  value       = { for k, v in databricks_sql_dashboard.sql_dashboards : k => v.parent if v.parent != null && length(v.parent) > 0 }
}
output "sql_dashboards_provider_config" {
  description = "Map of provider_config values across all sql_dashboards, keyed the same as var.sql_dashboards except keys with no provider_config are omitted"
  value       = { for k, v in databricks_sql_dashboard.sql_dashboards : k => one(v.provider_config) if v.provider_config != null && length(v.provider_config) > 0 }
}
output "sql_dashboards_run_as_role" {
  description = "Map of run_as_role values across all sql_dashboards, keyed the same as var.sql_dashboards except keys with no run_as_role are omitted"
  value       = { for k, v in databricks_sql_dashboard.sql_dashboards : k => v.run_as_role if v.run_as_role != null && length(v.run_as_role) > 0 }
}
output "sql_dashboards_tags" {
  description = "Map of tags values across all sql_dashboards, keyed the same as var.sql_dashboards except keys with no tags are omitted"
  value       = { for k, v in databricks_sql_dashboard.sql_dashboards : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "sql_dashboards_updated_at" {
  description = "Map of updated_at values across all sql_dashboards, keyed the same as var.sql_dashboards except keys with no updated_at are omitted"
  value       = { for k, v in databricks_sql_dashboard.sql_dashboards : k => v.updated_at if v.updated_at != null && length(v.updated_at) > 0 }
}

