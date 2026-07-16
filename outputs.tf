output "monitor_private_link_scoped_services_id" {
  description = "Map of id values across all monitor_private_link_scoped_services, keyed the same as var.monitor_private_link_scoped_services"
  value       = { for k, v in azurerm_monitor_private_link_scoped_service.monitor_private_link_scoped_services : k => v.id if v.id != null && length(v.id) > 0 }
}
output "monitor_private_link_scoped_services_linked_resource_id" {
  description = "Map of linked_resource_id values across all monitor_private_link_scoped_services, keyed the same as var.monitor_private_link_scoped_services"
  value       = { for k, v in azurerm_monitor_private_link_scoped_service.monitor_private_link_scoped_services : k => v.linked_resource_id if v.linked_resource_id != null && length(v.linked_resource_id) > 0 }
}
output "monitor_private_link_scoped_services_name" {
  description = "Map of name values across all monitor_private_link_scoped_services, keyed the same as var.monitor_private_link_scoped_services"
  value       = { for k, v in azurerm_monitor_private_link_scoped_service.monitor_private_link_scoped_services : k => v.name if v.name != null && length(v.name) > 0 }
}
output "monitor_private_link_scoped_services_resource_group_name" {
  description = "Map of resource_group_name values across all monitor_private_link_scoped_services, keyed the same as var.monitor_private_link_scoped_services"
  value       = { for k, v in azurerm_monitor_private_link_scoped_service.monitor_private_link_scoped_services : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "monitor_private_link_scoped_services_scope_name" {
  description = "Map of scope_name values across all monitor_private_link_scoped_services, keyed the same as var.monitor_private_link_scoped_services"
  value       = { for k, v in azurerm_monitor_private_link_scoped_service.monitor_private_link_scoped_services : k => v.scope_name if v.scope_name != null && length(v.scope_name) > 0 }
}

