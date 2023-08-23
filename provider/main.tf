
data "env0_template" "github_template" {
  name = "Github Integrated Template"
}

resource "env0_template" "github_template1" {
  name                                    = "Github Test Templates"
  description                             = "template-1"
  type                                    = "terraform"
  repository                              = data.env0_template.github_template.repository
  github_installation_id                  = data.env0_template.github_template.github_installation_id
  path                                    = "/misc/null-resource"
  retries_on_deploy                       = 3
  retry_on_deploy_only_when_matches_regex = "abc"
  retries_on_destroy                      = 1
  terraform_version                       = "0.15.1"
}

