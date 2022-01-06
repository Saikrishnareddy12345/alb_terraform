resource "aws_lb_target_group_attachment" "tg_attachment1" {
  target_group_arn = aws_lb_target_group.target_group1.arn
  target_id        = aws_instance.insta1.id
  port             = 80
}

resource "aws_lb_target_group_attachment" "tg_attachment2" {
  target_group_arn = aws_lb_target_group.target_group2.arn
  target_id        = aws_instance.insta2.id
  port             = 80
}

