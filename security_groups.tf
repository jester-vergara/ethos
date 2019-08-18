resource "aws_security_group" "Ethos-SG" {
  description = "Ethos-SG"
  vpc_id      = "${var.vpc_id}"
  name        = "Ethos-SG-v${var.infrastructure_version}"

  tags {
    Name = "Ethos-SG (v${var.infrastructure_version})"
  }
}

resource "aws_security_group_rule" "Ethos-SG-inbound" {
  type              = "ingress"
  security_group_id = "${aws_security_group.terraform-blue-green.id}"
  from_port         = -1
  to_port           = 0
  protocol          = "-1"

  cidr_blocks = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "Ethos-SG-outbound" {
  type              = "egress"
  security_group_id = "${aws_security_group.Ethos-SG.id}"
  from_port         = -1
  to_port           = 0
  protocol          = "-1"

  cidr_blocks = ["0.0.0.0/0"]
}
