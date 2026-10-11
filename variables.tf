variable "custom_csrs" {
  description = <<EOT
Map of custom_csrs, attributes below
Required:
    - common_name
    - country
    - locality
    - organization
    - sans
    - state
Optional:
    - account_id
    - description
    - key_type
    - name
    - organizational_unit
    - zone_id
EOT

  type = map(object({
    common_name         = string
    country             = string
    locality            = string
    organization        = string
    sans                = list(string)
    state               = string
    account_id          = optional(string)
    description         = optional(string)
    key_type            = optional(string)
    name                = optional(string)
    organizational_unit = optional(string)
    zone_id             = optional(string)
  }))
}

