provider "aws" {

  # なくてもいいけど
  access_key = "test"
  secret_key = "test"
  region     = "ap-northeast-1"

  # only required for non virtual hosted-style endpoint use case.
  # https://registry.terraform.io/providers/hashicorp/aws/latest/docs#s3_use_path_style
  s3_use_path_style           = true
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  # サンプルに書かれてるけど、これがあるとエラーになる
  #skip_requesting_account_id  = true
}

resource "aws_s3_bucket" "remote_backend" {
  bucket = "terraform-backend"
}

resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.remote_backend.id
  acl    = "private"
}

#resource "aws_s3_bucket_versioning" "versioning" {
#  bucket = aws_s3_bucket.remote_backend.id
#  versioning_configuration {
#    status = "Enabled"
#  }
#}

resource "aws_dynamodb_table" "lock" {
  name = "terraform-lock"
}
