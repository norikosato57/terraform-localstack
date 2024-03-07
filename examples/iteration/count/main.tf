provider "aws" {
  access_key = "test"
  secret_key = "test"
  region     = "ap-northeast-1"
}


#resource "aws_sns_topic" "count_example1" {
#  name = "count-example"
#}

resource "aws_sns_topic" "count_example2" {
  count = 3
  name  = "count-example-${count.index}"
}


locals {
  topics = [
    "hoge",
    "moge",
    "fuga",
  ]
}

resource "aws_sns_topic" "count_example3" {
  count = length(local.topics)
  name  = "count-example-${format("%02d", count.index)}"
}

resource "aws_sns_topic" "count_example3_1" {
  count = length(local.topics)
  name  = "count-example-${local.topics[count.index]}"
}


# よくつかう
locals {
  flag = true
}

resource "aws_sns_topic" "count_example4" {
  count = local.flag ? 1 : 0
  name  = "nanika"
}

