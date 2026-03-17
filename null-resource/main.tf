terraform {
  required_providers {
    azuread = {
      source  = "hashicorp/azuread"
      version = "~> 2.47"
    }
  }
}

provider "azuread" {
  tenant_id     = "f3450d00-1632-47b8-ab1b-c7c1617ef6cd"
  client_id     = "92441641-6671-4160-8045-cc068adfffdd"
  client_secret = "H8x8Q~gt.9FHAZa5QwVE7Wr5wRgNtfNBxtz01cd7"
}

resource "azuread_application" "qa_drift_test" {
  display_name = "QA Drift Detection Test - ENG-1214"
  homepage_url = "https://example.com/home"
  logout_url   = "https://example.com/logout"

  web {
    redirect_uris = ["https://example.com/callback"]
  }
}

output "application_id" {
  value = azuread_application.qa_drift_test.id
}
