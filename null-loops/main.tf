
terraform {
required_providers {
null = {
source = "hashicorp/null"
version = "3.1.1"}
    }
}


provider "null" {
# Configuration options
}


locals {  rgs = {
          "alpha" = "eastus"
          "bravo" = "southindia"
          "charlie" = "westus2"
       }}


resource "null_resource" "dummy_rgs" {
for_each = local.rgs
  triggers = {
               name= "each.key"
               region= "each.value"
}
}

/* We want these outputs */
output "rgs" {
value = null_resource.dummy_rgs
}
