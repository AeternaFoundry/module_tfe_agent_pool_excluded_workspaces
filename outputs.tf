output "agent_pool_excluded_workspaces_id" {
  description = "Map of id values across all agent_pool_excluded_workspaces, keyed the same as var.agent_pool_excluded_workspaces except keys with no id are omitted"
  value       = { for k, v in tfe_agent_pool_excluded_workspaces.agent_pool_excluded_workspaces : k => v.id if v.id != null && length(v.id) > 0 }
}
output "agent_pool_excluded_workspaces_agent_pool_id" {
  description = "Map of agent_pool_id values across all agent_pool_excluded_workspaces, keyed the same as var.agent_pool_excluded_workspaces except keys with no agent_pool_id are omitted"
  value       = { for k, v in tfe_agent_pool_excluded_workspaces.agent_pool_excluded_workspaces : k => v.agent_pool_id if v.agent_pool_id != null && length(v.agent_pool_id) > 0 }
}
output "agent_pool_excluded_workspaces_excluded_workspace_ids" {
  description = "Map of excluded_workspace_ids values across all agent_pool_excluded_workspaces, keyed the same as var.agent_pool_excluded_workspaces except keys with no excluded_workspace_ids are omitted"
  value       = { for k, v in tfe_agent_pool_excluded_workspaces.agent_pool_excluded_workspaces : k => v.excluded_workspace_ids if v.excluded_workspace_ids != null && length(v.excluded_workspace_ids) > 0 }
}

