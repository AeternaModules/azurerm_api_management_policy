output "api_management_policies" {
  description = "All api_management_policy resources"
  value       = azurerm_api_management_policy.api_management_policies
}
output "api_management_policies_api_management_id" {
  description = "List of api_management_id values across all api_management_policies"
  value       = [for k, v in azurerm_api_management_policy.api_management_policies : v.api_management_id]
}
output "api_management_policies_xml_content" {
  description = "List of xml_content values across all api_management_policies"
  value       = [for k, v in azurerm_api_management_policy.api_management_policies : v.xml_content]
}
output "api_management_policies_xml_link" {
  description = "List of xml_link values across all api_management_policies"
  value       = [for k, v in azurerm_api_management_policy.api_management_policies : v.xml_link]
}

