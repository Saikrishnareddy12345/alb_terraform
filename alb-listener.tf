resource "aws_lb_listener" "front_end" {
  load_balancer_arn = aws_lb.alb.arn
  port              = "80"
  protocol          = "HTTP"


  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.target_group1.arn
  }
}

# resource "aws_lb_listener" "front_end1" {
#   load_balancer_arn = aws_lb.alb.arn
#   port              = "80"
#   protocol          = "HTTP"


#   default_action {
#     type             = "forward"
#     target_group_arn = aws_lb_target_group.target_group2.arn
#   }
# }