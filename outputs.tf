output "monitor_private_link_scoped_services_id" {
  description = "Map of id values across all monitor_private_link_scoped_services, keyed the same as var.monitor_private_link_scoped_services"
  value       = { for k, v in azurerm_monitor_private_link_scoped_service.monitor_private_link_scoped_services : k => v.id }
}
output "monitor_private_link_scoped_services_linked_resource_id" {
  description = "Map of linked_resource_id values across all monitor_private_link_scoped_services, keyed the same as var.monitor_private_link_scoped_services"
  value       = { for k, v in azurerm_monitor_private_link_scoped_service.monitor_private_link_scoped_services : k => v.linked_resource_id }
}
output "monitor_private_link_scoped_services_name" {
  description = "Map of name values across all monitor_private_link_scoped_services, keyed the same as var.monitor_private_link_scoped_services"
  value       = { for k, v in azurerm_monitor_private_link_scoped_service.monitor_private_link_scoped_services : k => v.name }
}
output "monitor_private_link_scoped_services_resource_group_name" {
  description = "Map of resource_group_name values across all monitor_private_link_scoped_services, keyed the same as var.monitor_private_link_scoped_services"
  value       = { for k, v in azurerm_monitor_private_link_scoped_service.monitor_private_link_scoped_services : k => v.resource_group_name }
}
output "monitor_private_link_scoped_services_scope_name" {
  description = "Map of scope_name values across all monitor_private_link_scoped_services, keyed the same as var.monitor_private_link_scoped_services"
  value       = { for k, v in azurerm_monitor_private_link_scoped_service.monitor_private_link_scoped_services : k => v.scope_name }
}

