# Terragrunt config
terragrunt = {
  terraform {
    source = "github.com/GSA/datagov-infrastructure-modules.git//jumpbox?ref=v2.0.0"
  }

  include {
    path = "${find_in_parent_folders()}"
  }

  dependencies {
    paths = ["../vpc"]
  }
}

# Module config
env        = "bionic"
key_name   = "datagov-sandbox"
ami_filter_name = "ubuntu/images/*ubuntu-bionic-18.04-amd64-server-*"
