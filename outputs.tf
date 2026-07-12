output "api_management_policies_id" {
  description = "Map of id values across all api_management_policies, keyed the same as var.api_management_policies"
  value       = { for k, v in azurerm_api_management_policy.api_management_policies : k => v.id }
}
output "api_management_policies_api_management_id" {
  description = "Map of api_management_id values across all api_management_policies, keyed the same as var.api_management_policies"
  value       = { for k, v in azurerm_api_management_policy.api_management_policies : k => v.api_management_id }
}
output "api_management_policies_xml_content" {
  description = "Map of xml_content values across all api_management_policies, keyed the same as var.api_management_policies"
  value       = { for k, v in azurerm_api_management_policy.api_management_policies : k => v.xml_content }
}
output "api_management_policies_xml_link" {
  description = "Map of xml_link values across all api_management_policies, keyed the same as var.api_management_policies"
  value       = { for k, v in azurerm_api_management_policy.api_management_policies : k => v.xml_link }
}

