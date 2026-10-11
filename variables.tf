variable "lambda_invocation_lookup" {
  description = <<EOT
Map of lambda_invocation_lookup, attributes below
Required:
    - function_name
    - input
Optional:
    - qualifier
    - region
    - tenant_id
EOT

  type = map(object({
    function_name = string
    input         = string
    qualifier     = optional(string)
    region        = optional(string)
    tenant_id     = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.lambda_invocation_lookup : (
        can(jsondecode(v.input))
      )
    ])
    error_message = "must be valid JSON"
  }
}

