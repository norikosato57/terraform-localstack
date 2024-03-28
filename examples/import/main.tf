resource "aws_s3_bucket" "remote_backend" {
  bucket = "terraform-backend"
}

resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.remote_backend.id
  versioning_configuration {
    status = "Enabled"
  }
}
