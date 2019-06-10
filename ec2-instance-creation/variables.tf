variable "access_key" {}
variable "secret_key" {}
variable "region" {
  default = "us-east-1"
}
variable "path_to_public_key" {}

variable "amis" {
  type = "map"
  default = {
    "us-east-1" = "ami-024a64a6685d05041"
    "us-west-2" = "ami-005bdb005fb00e791"
  }
}