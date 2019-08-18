resource "aws_elb" "Ethos" {
  name            = "Ethos-v${var.infrastructure_version}"
  subnets         = ["${aws_subnet.Ethos.*.id}"]
  security_groups = ["${aws_security_group.Ethos.id}"]

  instances = ["${aws_instance.Ethos.*.id}"]

  listener {
    instance_port     = 80
    instance_protocol = "http"
    lb_port           = 80
    lb_protocol       = "http"
  }

  health_check {
    healthy_threshold   = 2
    unhealthy_threshold = 2
    timeout             = 3
    target              = "HTTP:80/"
    interval            = 30
  }

  tags {
    Name = "Ethos-v${var.infrastructure_version}"
  }
}

output "load_balancer_dns" {
  value = "${aws_elb.Ethos.dns_name}"
}
