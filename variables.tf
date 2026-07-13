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
  validation {
    condition = alltrue([
      for k, v in var.monitor_private_link_scoped_services : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.monitor_private_link_scoped_services : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.monitor_private_link_scoped_services : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.monitor_private_link_scoped_services : (
        length(v.scope_name) >= 1
      )
    ])
    error_message = "[from validate.PrivateLinkScopeName: invalid when len(value) < 1]"
  }
  validation {
    condition = alltrue([
      for k, v in var.monitor_private_link_scoped_services : (
        length(v.scope_name) <= 255
      )
    ])
    error_message = "[from validate.PrivateLinkScopeName: invalid when len(value) > 255]"
  }
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

