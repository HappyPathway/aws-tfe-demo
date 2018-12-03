resource "tfe_workspace" "SentinelPolicies" {
  name         = "SentinelPolicies"
  organization = "${var.organization}"

  terraform_version = "0.11.8"

  vcs_repo = {
    identifier = "HappyPathway/AWSSentinel"

    oauth_token_id     = "${var.oauth_token_id}"
    ingress_submodules = false
  }
}
