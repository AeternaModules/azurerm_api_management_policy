variable "api_management_policies" {
  description = <<EOT
Map of api_management_policies, attributes below
Required:
    - api_management_id
Optional:
    - xml_content
    - xml_link
EOT

  type = map(object({
    api_management_id = string
    xml_content       = optional(string)
    xml_link          = optional(string)
  }))
  # --- Unconfirmed validation candidates, derived from azurerm_api_management_policy's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: api_management_id
  #   source:    [from apimanagementservice.ValidateServiceID] !ok
  # path: api_management_id
  #   source:    [from apimanagementservice.ValidateServiceID] err != nil
}

