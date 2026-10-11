resource "cloudflare_custom_csr" "custom_csrs" {
  for_each = var.custom_csrs

  common_name         = each.value.common_name
  country             = each.value.country
  locality            = each.value.locality
  organization        = each.value.organization
  sans                = each.value.sans
  state               = each.value.state
  account_id          = each.value.account_id
  description         = each.value.description
  key_type            = each.value.key_type
  name                = each.value.name
  organizational_unit = each.value.organizational_unit
  zone_id             = each.value.zone_id
}

