provider "aws" {
  region  = "${var.region}"
  version = "2.70"
}

terraform {
  required_version = "0.11.14"
}
