output "identity_db_credentials_lookup_id" {
  description = "Map of id values across all identity_db_credentials_lookup, keyed the same as var.identity_db_credentials_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_identity_db_credentials.identity_db_credentials_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "identity_db_credentials_lookup_db_credentials" {
  description = "Map of db_credentials values across all identity_db_credentials_lookup, keyed the same as var.identity_db_credentials_lookup except keys with no db_credentials are omitted"
  value       = { for k, v in data.oci_identity_db_credentials.identity_db_credentials_lookup : k => v.db_credentials if v.db_credentials != null && length(v.db_credentials) > 0 }
}
output "identity_db_credentials_lookup_filter" {
  description = "Map of filter values across all identity_db_credentials_lookup, keyed the same as var.identity_db_credentials_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_identity_db_credentials.identity_db_credentials_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "identity_db_credentials_lookup_name" {
  description = "Map of name values across all identity_db_credentials_lookup, keyed the same as var.identity_db_credentials_lookup except keys with no name are omitted"
  value       = { for k, v in data.oci_identity_db_credentials.identity_db_credentials_lookup : k => v.name if v.name != null && length(v.name) > 0 }
}
output "identity_db_credentials_lookup_state" {
  description = "Map of state values across all identity_db_credentials_lookup, keyed the same as var.identity_db_credentials_lookup except keys with no state are omitted"
  value       = { for k, v in data.oci_identity_db_credentials.identity_db_credentials_lookup : k => v.state if v.state != null && length(v.state) > 0 }
}
output "identity_db_credentials_lookup_user_id" {
  description = "Map of user_id values across all identity_db_credentials_lookup, keyed the same as var.identity_db_credentials_lookup except keys with no user_id are omitted"
  value       = { for k, v in data.oci_identity_db_credentials.identity_db_credentials_lookup : k => v.user_id if v.user_id != null && length(v.user_id) > 0 }
}

