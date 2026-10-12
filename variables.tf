variable "agent_pool_excluded_workspaces" {
  description = <<EOT
Map of agent_pool_excluded_workspaces, attributes below
Required:
    - agent_pool_id
    - excluded_workspace_ids
EOT

  type = map(object({
    agent_pool_id          = string
    excluded_workspace_ids = set(string)
  }))
}

