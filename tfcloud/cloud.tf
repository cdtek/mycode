terraform {
  cloud {
    organization = "cd"

    workspaces {
      name = "my-example"
    }
  }
}
