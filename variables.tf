variable "identity_db_credentials_lookup" {
  description = <<EOT
Map of identity_db_credentials_lookup, attributes below
Required:
    - user_id
Optional:
    - name
    - state
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    user_id = string
    name    = optional(string)
    state   = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

