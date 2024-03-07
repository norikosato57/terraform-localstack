provider "aws" {
  region = "ap-northeast-1"
}

resource "aws_sns_topic" "example" {
  name = var.name
}
