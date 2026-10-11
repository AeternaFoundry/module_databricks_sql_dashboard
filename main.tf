resource "databricks_sql_dashboard" "sql_dashboards" {
  for_each = var.sql_dashboards

  name                      = each.value.name
  created_at                = each.value.created_at
  dashboard_filters_enabled = each.value.dashboard_filters_enabled
  parent                    = each.value.parent
  run_as_role               = each.value.run_as_role
  tags                      = each.value.tags
  updated_at                = each.value.updated_at

  dynamic "provider_config" {
    for_each = each.value.provider_config != null ? [each.value.provider_config] : []
    content {
      workspace_id = provider_config.value.workspace_id
    }
  }
}

