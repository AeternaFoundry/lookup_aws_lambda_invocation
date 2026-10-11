output "lambda_invocation_lookup_id" {
  description = "Map of id values across all lambda_invocation_lookup, keyed the same as var.lambda_invocation_lookup"
  value       = { for k, v in data.aws_lambda_invocation.lambda_invocation_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "lambda_invocation_lookup_function_name" {
  description = "Map of function_name values across all lambda_invocation_lookup, keyed the same as var.lambda_invocation_lookup"
  value       = { for k, v in data.aws_lambda_invocation.lambda_invocation_lookup : k => v.function_name if v.function_name != null && length(v.function_name) > 0 }
}
output "lambda_invocation_lookup_input" {
  description = "Map of input values across all lambda_invocation_lookup, keyed the same as var.lambda_invocation_lookup"
  value       = { for k, v in data.aws_lambda_invocation.lambda_invocation_lookup : k => v.input if v.input != null && length(v.input) > 0 }
}
output "lambda_invocation_lookup_qualifier" {
  description = "Map of qualifier values across all lambda_invocation_lookup, keyed the same as var.lambda_invocation_lookup"
  value       = { for k, v in data.aws_lambda_invocation.lambda_invocation_lookup : k => v.qualifier if v.qualifier != null && length(v.qualifier) > 0 }
}
output "lambda_invocation_lookup_region" {
  description = "Map of region values across all lambda_invocation_lookup, keyed the same as var.lambda_invocation_lookup"
  value       = { for k, v in data.aws_lambda_invocation.lambda_invocation_lookup : k => v.region if v.region != null && length(v.region) > 0 }
}
output "lambda_invocation_lookup_result" {
  description = "Map of result values across all lambda_invocation_lookup, keyed the same as var.lambda_invocation_lookup"
  value       = { for k, v in data.aws_lambda_invocation.lambda_invocation_lookup : k => v.result if v.result != null && length(v.result) > 0 }
}
output "lambda_invocation_lookup_tenant_id" {
  description = "Map of tenant_id values across all lambda_invocation_lookup, keyed the same as var.lambda_invocation_lookup"
  value       = { for k, v in data.aws_lambda_invocation.lambda_invocation_lookup : k => v.tenant_id if v.tenant_id != null && length(v.tenant_id) > 0 }
}

