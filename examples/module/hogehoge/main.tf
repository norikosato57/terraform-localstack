resource "aws_sns_topic" "example" {
  name = var.name
}

resource "aws_sns_topic_subscription" "example" {
  for_each  = toset(var.emails)
  topic_arn = aws_sns_topic.example.arn
  protocol  = "email"
  endpoint  = each.value
}
