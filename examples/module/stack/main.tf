provider "aws" {
  access_key = "test"
  secret_key = "test"
  region     = "ap-northeast-1"
}

module "hogehoge" {
  source = "../hogehoge"
  name   = "test"
  emails = [
    "aaa@example.com",
    "bbb@example.com",
    "ccc@example.com",
    "ddd@example.com",
  ]
}

module "hogehoge_test" {
  source = "../hogehoge"
  name   = "test_test"
  emails = [
    "aaa@example.com",
    "bbb@example.com",
    "ccc@example.com",
    "ddd@example.com",
  ]
}

module "hogehoge1000" {
  source = "../hogehoge"
  name   = "test1000"
  emails = [
    "aaa@example.com",
    "bbb@example.com",
    "ccc@example.com",
    "ddd@example.com",
  ]
}

