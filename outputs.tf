output "monitor_private_link_scoped_services" {
  description = "All monitor_private_link_scoped_service resources"
  value       = azurerm_monitor_private_link_scoped_service.monitor_private_link_scoped_services
}
output "monitor_private_link_scoped_services_linked_resource_id" {
  description = "List of linked_resource_id values across all monitor_private_link_scoped_services"
  value       = [for k, v in azurerm_monitor_private_link_scoped_service.monitor_private_link_scoped_services : v.linked_resource_id]
}
output "monitor_private_link_scoped_services_name" {
  description = "List of name values across all monitor_private_link_scoped_services"
  value       = [for k, v in azurerm_monitor_private_link_scoped_service.monitor_private_link_scoped_services : v.name]
}
output "monitor_private_link_scoped_services_resource_group_name" {
  description = "List of resource_group_name values across all monitor_private_link_scoped_services"
  value       = [for k, v in azurerm_monitor_private_link_scoped_service.monitor_private_link_scoped_services : v.resource_group_name]
}
output "monitor_private_link_scoped_services_scope_name" {
  description = "List of scope_name values across all monitor_private_link_scoped_services"
  value       = [for k, v in azurerm_monitor_private_link_scoped_service.monitor_private_link_scoped_services : v.scope_name]
}

