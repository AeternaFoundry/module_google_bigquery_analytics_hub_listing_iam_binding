variable "bigquery_analytics_hub_listing_iam_bindings" {
  description = <<EOT
Map of bigquery_analytics_hub_listing_iam_bindings, attributes below
Required:
    - data_exchange_id
    - listing_id
    - members
    - role
Optional:
    - location
    - project
    - condition (block):
        - description (optional)
        - expression (required)
        - title (required)
EOT

  type = map(object({
    data_exchange_id = string
    listing_id       = string
    members          = set(string)
    role             = string
    location         = optional(string)
    project          = optional(string)
    condition = optional(object({
      description = optional(string)
      expression  = string
      title       = string
    }))
  }))
}

