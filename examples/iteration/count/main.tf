provider "aws" {
  region = "ap-northeast-1"
}

resource "aws_sns_topic" "count_example1" {
  name = "count-example"
}

#resource "aws_sns_topic" "count_example2" {
#  count = 3
#  name  = "count-example-${count.index}"
#}
#
#locals {
#  topics = [
#    "hoge",
#    "moge",
#    "fuga",
#  ]
#}
#
#resource "aws_sns_topic" "count_example3" {
#  count = length(local.topics)
#  name  = "count-example-${format("%02d", count.index)}"
#}
#
#
#locals {
#  flag = false
#}
#
#resource "aws_sns_topic" "count_example4" {
#  count = local.flag ? 1 : 0
#  name  = "nanika"
#}
#
