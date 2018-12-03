resource "tfe_variable" "NetworkHostDev_AWS_ACCESS_KEY_ID" {
  key          = "AWS_ACCESS_KEY_ID"
  value        = "${var.aws_access_key_id}"
  category     = "env"
  workspace_id = "${tfe_workspace.NetworkHostDev.id}"
  hcl          = false
  sensitive    = false
}

resource "tfe_variable" "NetworkHostDev_AWS_DEFAULT_REGION" {
  key          = "AWS_DEFAULT_REGION"
  value        = "us-east-1"
  category     = "env"
  workspace_id = "${tfe_workspace.NetworkHostDev.id}"
  hcl          = false
  sensitive    = false
}

resource "tfe_variable" "NetworkHostDev_AWS_SECRET_ACCESS_KEY" {
  key          = "AWS_SECRET_ACCESS_KEY"
  value        = "${var.aws_secret_access_key}"
  category     = "env"
  workspace_id = "${tfe_workspace.NetworkHostDev.id}"
  hcl          = false
  sensitive    = true
}

resource "tfe_variable" "NetworkHostDev_CONFIRM_DESTROY" {
  key          = "CONFIRM_DESTROY"
  value        = "1"
  category     = "env"
  workspace_id = "${tfe_workspace.NetworkHostDev.id}"
  hcl          = false
  sensitive    = false
}

resource "tfe_variable" "NetworkHostDev_env" {
  key          = "env"
  value        = "dev"
  category     = "terraform"
  workspace_id = "${tfe_workspace.NetworkHostDev.id}"
  hcl          = false
  sensitive    = false
}

resource "tfe_variable" "NetworkHostDev_instance_type" {
  key          = "instance_type"
  value        = "t2.small"
  category     = "terraform"
  workspace_id = "${tfe_workspace.NetworkHostDev.id}"
  hcl          = false
  sensitive    = false
}

resource "tfe_variable" "NetworkHostDev_jenkins_job" {
  key          = "jenkins_job"
  value        = "SimpleApp"
  category     = "terraform"
  workspace_id = "${tfe_workspace.NetworkHostDev.id}"
  hcl          = false
  sensitive    = false
}

resource "tfe_variable" "NetworkHostDev_network_ws" {
  key          = "network_ws"
  value        = "Network"
  category     = "terraform"
  workspace_id = "${tfe_workspace.NetworkHostDev.id}"
  hcl          = false
  sensitive    = false
}

resource "tfe_variable" "NetworkHostDev_organization" {
  key          = "organization"
  value        = "${var.organization}"
  category     = "terraform"
  workspace_id = "${tfe_workspace.NetworkHostDev.id}"
  hcl          = false
  sensitive    = false
}

resource "tfe_variable" "NetworkHostDev_public_instances" {
  key          = "public_instances"
  value        = "1"
  category     = "terraform"
  workspace_id = "${tfe_workspace.NetworkHostDev.id}"
  hcl          = false
  sensitive    = false
}

resource "tfe_variable" "NetworkHostDev_resource_tags" {
  key          = "resource_tags"
  value        = "${file("${path.module}/NetworkHostDev_resource_tags")}"
  category     = "terraform"
  workspace_id = "${tfe_workspace.NetworkHostDev.id}"
  hcl          = true
  sensitive    = false
}

resource "tfe_variable" "NetworkHostDev_vault_addr" {
  key          = "vault_addr"
  value        = "${var.vault_addr}"
  category     = "terraform"
  workspace_id = "${tfe_workspace.NetworkHostDev.id}"
  hcl          = false
  sensitive    = false
}

resource "tfe_variable" "NetworkHostDev_VAULT_ADDR" {
  key          = "VAULT_ADDR"
  value        = "${var.vault_addr}"
  category     = "env"
  workspace_id = "${tfe_workspace.NetworkHostDev.id}"
  hcl          = false
  sensitive    = false
}

resource "tfe_variable" "NetworkHostDev_vault_policies" {
  key          = "vault_policies"
  value        = "${file("${path.module}/NetworkHostDev_vault_policies")}"
  category     = "terraform"
  workspace_id = "${tfe_workspace.NetworkHostDev.id}"
  hcl          = true
  sensitive    = false
}

resource "tfe_variable" "NetworkHostDev_VAULT_TOKEN" {
  key          = "VAULT_TOKEN"
  value        = "${var.vault_token}"
  category     = "env"
  workspace_id = "${tfe_workspace.NetworkHostDev.id}"
  hcl          = false
  sensitive    = true
}
