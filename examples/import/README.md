- importしてみる
- バージョニングの設定してみる


## init

```
$ tflocal init
```


# import

```
$ tflocal import aws_s3_bucket.remote_backend terraform-backend
aws_s3_bucket.remote_backend: Importing from ID "terraform-backend"...
aws_s3_bucket.remote_backend: Import prepared!
  Prepared aws_s3_bucket for import
aws_s3_bucket.remote_backend: Refreshing state... [id=terraform-backend]

Import successful!

The resources that were imported are shown above. These resources are now in
your Terraform state and will henceforth be managed by Terraform.
```


## plan

```
$ tflocal plan
aws_s3_bucket.remote_backend: Refreshing state... [id=terraform-backend]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # aws_s3_bucket_versioning.versioning will be created
  + resource "aws_s3_bucket_versioning" "versioning" {
      + bucket = "terraform-backend"
      + id     = (known after apply)

      + versioning_configuration {
          + mfa_delete = (known after apply)
          + status     = "Enabled"
        }
    }

Plan: 1 to add, 0 to change, 0 to destroy.
```

## apply



## 確認

```
$ awslocal s3api get-bucket-versioning --bucket terraform-backend
{
    "Status": "Enabled"
}
```


## dynamodb も import してみましょ

```
$ tflocal import aws_dynamodb_table.lock terraform-lock
aws_dynamodb_table.lock: Importing from ID "terraform-lock"...
aws_dynamodb_table.lock: Import prepared!
  Prepared aws_dynamodb_table for import
aws_dynamodb_table.lock: Refreshing state... [id=terraform-lock]

Import successful!

The resources that were imported are shown above. These resources are now in
your Terraform state and will henceforth be managed by Terraform.
```

## 確認

```
$ tflocal state show aws_dynamodb_table.lock
```