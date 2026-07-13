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
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

