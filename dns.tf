data "aws_route53_zone" "Ethos" {
  name = "yourdomain.com."
}

resource "aws_route53_record" "Ethos" {
  zone_id = "${data.aws_route53_zone.Ethos.zone_id}"
  name    = "v${var.infrastructure_version}.yourdomain.com"
  type    = "A"

  alias {
    name                   = "dualstack.${aws_elb.Ethos.dns_name}"
    zone_id                = "${aws_elb.Ethos.zone_id}"
    evaluate_target_health = false
  }
}
