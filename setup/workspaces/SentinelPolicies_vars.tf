resource "tfe_variable" "SentinelPolicies_ATLAS_TOKEN" {
  key          = "ATLAS_TOKEN"
  value        = "${var.atlas_token}"
  category     = "env"
  workspace_id = "${tfe_workspace.SentinelPolicies.id}"
  hcl          = false
  sensitive    = true
}

resource "tfe_variable" "SentinelPolicies_CONFIRM_DESTROY" {
  key          = "CONFIRM_DESTROY"
  value        = "1"
  category     = "env"
  workspace_id = "${tfe_workspace.SentinelPolicies.id}"
  hcl          = false
  sensitive    = false
}

resource "tfe_variable" "SentinelPolicies_organization" {
  key          = "organization"
  value        = "${var.organization}"
  category     = "terraform"
  workspace_id = "${tfe_workspace.SentinelPolicies.id}"
  hcl          = false
  sensitive    = false
}
