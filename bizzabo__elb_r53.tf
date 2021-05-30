resource "aws_elb" "bizzabo" {
  name = "bizzabo" 
  
  subnets = [module.vpc.public_subnet_ids[0], module.vpc.public_subnet_ids[1]]
  security_groups = [aws_security_group.sg.id]


  listener {
    instance_port     = 443
    instance_protocol = "http"
    lb_port           = 443
    lb_protocol       = "http"
  }
  listener {
    instance_port     = 80
    instance_protocol = "http"
    lb_port           = 80
    lb_protocol       = "http"
  }

  health_check {
    healthy_threshold   = 2
    unhealthy_threshold = 5
    timeout             = 3
    target              = "TCP:80"
    interval            = 30
  }
  
#  instances                   = 
#  idle_timeout                = 400
#  connection_draining         = true
#  connection_draining_timeout = 400
  

}

resource "aws_route53_zone" "private" {
  name = "test.com"

  vpc {
    vpc_id = module.vpc.vpc_id
  }
}

resource "aws_route53_record" "bizzabo" {
  zone_id = aws_route53_zone.public.zone_id
  name    = "bizzabo.${aws_route53_zone.public.name}"
  type    = "A"
  ttl     = "60"
  records = [aws_elb.bizzabo.public_ip]
}
