output "api_management_policies_id" {
  description = "Map of id values across all api_management_policies, keyed the same as var.api_management_policies"
  value       = { for k, v in azurerm_api_management_policy.api_management_policies : k => v.id if v.id != null && length(v.id) > 0 }
}
output "api_management_policies_api_management_id" {
  description = "Map of api_management_id values across all api_management_policies, keyed the same as var.api_management_policies"
  value       = { for k, v in azurerm_api_management_policy.api_management_policies : k => v.api_management_id if v.api_management_id != null && length(v.api_management_id) > 0 }
}
output "api_management_policies_xml_content" {
  description = "Map of xml_content values across all api_management_policies, keyed the same as var.api_management_policies"
  value       = { for k, v in azurerm_api_management_policy.api_management_policies : k => v.xml_content if v.xml_content != null && length(v.xml_content) > 0 }
}
output "api_management_policies_xml_link" {
  description = "Map of xml_link values across all api_management_policies, keyed the same as var.api_management_policies"
  value       = { for k, v in azurerm_api_management_policy.api_management_policies : k => v.xml_link if v.xml_link != null && length(v.xml_link) > 0 }
}

