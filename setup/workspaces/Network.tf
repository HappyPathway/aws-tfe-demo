resource "tfe_workspace" "Network" {
  name         = "Network"
  organization = "${var.organization}"

  terraform_version = "0.11.8"

  vcs_repo = {
    identifier = "HappyPathway/terraform-aws-network"

    oauth_token_id     = "${var.oauth_token_id}"
    ingress_submodules = false
  }
}
