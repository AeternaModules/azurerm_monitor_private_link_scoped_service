variable "monitor_private_link_scoped_services" {
  description = <<EOT
Map of monitor_private_link_scoped_services, attributes below
Required:
    - linked_resource_id
    - name
    - resource_group_name
    - scope_name
EOT

  type = map(object({
    linked_resource_id  = string
    name                = string
    resource_group_name = string
    scope_name          = string
  }))
  validation {
    condition = alltrue([
      for k, v in var.monitor_private_link_scoped_services : (
        length(v.name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  # --- Unconfirmed validation candidates, derived from azurerm_monitor_private_link_scoped_service's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: resource_group_name
  #   condition: length(value) <= 90
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) > 90]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) > 90]
  # path: resource_group_name
  #   condition: !endswith(value, ".")
  #   message:   [from resourcegroups.ValidateName: must not end with "."]
  #   source:    [from resourcegroups.ValidateName: must not end with "."]
  # path: resource_group_name
  #   condition: length(value) != 0
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) == 0]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) == 0]
  # path: resource_group_name
  #   source:    [from resourcegroups.ValidateName] !matched
  # path: scope_name
  #   source:    [from validate.PrivateLinkScopeName] !ok
  # path: scope_name
  #   condition: length(value) >= 1
  #   message:   [from validate.PrivateLinkScopeName: invalid when len(value) < 1]
  #   source:    [from validate.PrivateLinkScopeName: invalid when len(value) < 1]
  # path: scope_name
  #   condition: length(value) <= 255
  #   message:   [from validate.PrivateLinkScopeName: invalid when len(value) > 255]
  #   source:    [from validate.PrivateLinkScopeName: invalid when len(value) > 255]
  # path: scope_name
  #   source:    [from validate.PrivateLinkScopeName] !regexp.MustCompile(`^[a-zA-Z0-9()-_.]*[a-zA-Z0-9_-]$`).MatchString(v)
  # path: linked_resource_id
  #   source:    validation.Any(...) - no translation rule yet, add one
}

