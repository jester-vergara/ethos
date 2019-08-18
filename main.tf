variable "infrastructure_version" {
  default = "1"
}
provider "aws" {
    profile =                 "terraform-user"
    shared_credentials_file = "/home/jvergara/ethos/.aws/credentials"
    region =                  "${var.aws_region}"
}
terraform {
  backend "s3" {
    encrypt = true
    bucket  = "terraform-infrastructure-state-json"
    region  = "ap-southeast-1"
    key     = "v1"
  }
}
