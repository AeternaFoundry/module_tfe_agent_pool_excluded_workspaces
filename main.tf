resource "tfe_agent_pool_excluded_workspaces" "agent_pool_excluded_workspaces" {
  for_each = var.agent_pool_excluded_workspaces

  agent_pool_id          = each.value.agent_pool_id
  excluded_workspace_ids = each.value.excluded_workspace_ids
}

