terraform {
  required_version = ">= 0.12"
}

provider "aws" {
  region              = "eu-west-1"
  allowed_account_ids = ["310106061799"]
  profile             = "seca"
}
