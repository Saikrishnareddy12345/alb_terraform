resource "aws_lb_listener_rule" "static" {
  listener_arn = aws_lb_listener.front_end.arn
#   priority     = 100

  action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.target_group1.arn
  }

  condition {
    path_pattern {
      values = ["/cricket/*"]
    }
  }

}

resource "aws_lb_listener_rule" "static1" {
  listener_arn = aws_lb_listener.front_end.arn
#   priority     = 100

  action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.target_group2.arn
  }

  condition {
    path_pattern {
      values = ["/football/*"]
    }
  }

}