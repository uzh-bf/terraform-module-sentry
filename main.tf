resource "aws_route53_record" "sentry" {
  zone_id = "${var.aws_route53_zone}"
  name    = "${var.prefix}sentry.${var.base_domain}"
  type    = "A"

  alias = {
    name                   = "${var.aws_route53_record_lb_name}"
    zone_id                = "${var.aws_route53_record_lb_zone_id}"
    evaluate_target_health = false
  }
}
