resource "tfe_workspace" "NetworkHostDev" {
  name         = "NetworkHostDev"
  organization = "${var.organization}"

  terraform_version = "0.11.8"

  vcs_repo = {
    identifier = "HappyPathway/terraform-aws-network-host"

    branch = "dev"

    oauth_token_id     = "${var.oauth_token_id}"
    ingress_submodules = true
  }
}
