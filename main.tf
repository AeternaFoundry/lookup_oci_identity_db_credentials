data "oci_identity_db_credentials" "identity_db_credentials_lookup" {
  for_each = var.identity_db_credentials_lookup

  user_id = each.value.user_id
  name    = each.value.name
  state   = each.value.state

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

