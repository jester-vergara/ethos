resource "aws_key_pair" "Ethos" {
  key_name   = "Ethos-v${var.infrastructure_version}"
  public_key = "${file("keypairs/keypair.pub")}"
}
