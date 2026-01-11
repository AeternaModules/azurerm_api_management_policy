resource "azurerm_api_management_policy" "api_management_policys" {
  for_each = var.api_management_policys

  api_management_id = each.value.api_management_id
  xml_content       = each.value.xml_content
  xml_link          = each.value.xml_link
}

