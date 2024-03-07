provider "aws" {
  access_key = "test"
  secret_key = "test"
  region     = "ap-northeast-1"
}

resource "aws_sns_topic" "foreach_example1" {
  name = "foreach-example"
}

## list
#locals {
#  topics = [
#    "hoge",
#    "moge",
#    "fuga",
#  ]
#}
#
#resource "aws_sns_topic" "foreach_example2" {
#  for_each = toset(local.topics)
#  name     = "foreach-example-${each.value}"
#}
#
## map
#locals {
#  topics_map = {
#    aaa = "hoge",
#    bbb = "moge",
#    ccc = "fuga",
#  }
#}
#
#resource "aws_sns_topic" "foreach_example3" {
#  for_each = local.topics_map
#  name     = "foreach-example-${each.key}-${each.value}"
#}
#
