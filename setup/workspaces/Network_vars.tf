resource "tfe_variable" "Network_availability_zone" {
  key          = "availability_zone"
  value        = "us-east-1a"
  category     = "terraform"
  workspace_id = "${tfe_workspace.Network.id}"
  hcl          = false
  sensitive    = false
}

resource "tfe_variable" "Network_AWS_ACCESS_KEY_ID" {
  key          = "AWS_ACCESS_KEY_ID"
  value        = "${var.aws_access_key_id}"
  category     = "env"
  workspace_id = "${tfe_workspace.Network.id}"
  hcl          = false
  sensitive    = false
}

resource "tfe_variable" "Network_AWS_SECRET_ACCESS_KEY" {
  key          = "AWS_SECRET_ACCESS_KEY"
  value        = "${var.aws_secret_access_key}"
  category     = "env"
  workspace_id = "${tfe_workspace.Network.id}"
  hcl          = false
  sensitive    = true
}

resource "tfe_variable" "Network_CONFIRM_DESTROY" {
  key          = "CONFIRM_DESTROY"
  value        = "1"
  category     = "env"
  workspace_id = "${tfe_workspace.Network.id}"
  hcl          = false
  sensitive    = false
}

resource "tfe_variable" "Network_key_name" {
  key          = "key_name"
  value        = "${var.keypair}"
  category     = "terraform"
  workspace_id = "${tfe_workspace.Network.id}"
  hcl          = false
  sensitive    = false
}

resource "tfe_variable" "Network_network_name" {
  key          = "network_name"
  value        = "${var.network_name}"
  category     = "terraform"
  workspace_id = "${tfe_workspace.Network.id}"
  hcl          = false
  sensitive    = false
}

resource "tfe_variable" "Network_region" {
  key          = "region"
  value        = "us-east-1"
  category     = "terraform"
  workspace_id = "${tfe_workspace.Network.id}"
  hcl          = false
  sensitive    = false
}
