data "aws_lambda_invocation" "lambda_invocation_lookup" {
  for_each = var.lambda_invocation_lookup

  function_name = each.value.function_name
  input         = each.value.input
  qualifier     = each.value.qualifier
  region        = each.value.region
  tenant_id     = each.value.tenant_id
}

