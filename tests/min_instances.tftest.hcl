provider "azurerm" {
  features {}
}

variables {
  rg_name        = "rg-exampleterraform-001"
  st_project     = "exampleterraform"
  st_instance    = 1
  container_name = "examplecontainer"
}

run "min_st_instance" {
  command = plan
  assert {
    condition     = azurerm_storage_account.this.name == "stexampleterraform001"
    error_message = "The container delete retention policy is not correct"
  }
}

run "invalid_st_instance" {
  variables {
    st_instance = 0
  }
  command         = plan
  expect_failures = [var.st_instance]
}
