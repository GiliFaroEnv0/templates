terraform {
  backend "remote" {
    hostname = "backend-pr13293.api.dev.env0.com"
    organization = "a07c003e-d5f7-42ca-9710-8520a456d785"

    workspaces {
      name = "tom"
    }
  }
}

