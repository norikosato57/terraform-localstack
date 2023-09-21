# terraform-localstac

## 事前準備

- できたらでいいです
- windowsはわかりません、ごめんね

### localstackのインストール
```
# see also: https://github.com/localstack/localstack
# 好きなのでどうぞ
# dockerで起動したい場合は↓
$ docker compose up -d
```

### tfenvのインストール
```
# see also: https://github.com/tfutils/tfenv
# 好きなのでどうぞ
```

### awslocalのインストール
```
# see also: https://github.com/localstack/awscli-local
# 好きなのでどうぞ
```

`complete -C '/usr/local/bin/aws_completer' awslocal` しておくと便利

テスト。適当にバケット作ってみる
```
$ awslocal s3 ls
$ awslocal s3 mb s3://hoge
make_bucket: hoge
$ awslocal s3 ls
2023-09-13 19:50:26 hoge
```

### tflocal
```
# see also: https://github.com/localstack/terraform-local
# 好きなのでどうぞ
```


## やってみる

```
$ cd examples/s3
```

```
$ terraform init
version '1.5.7' is not installed (set by /home/noriko/git/terraform-localstac/examples/.terraform-version). Installing now as TFENV_AUTO_INSTALL==true
Installing Terraform v1.5.7
Downloading release tarball from https://releases.hashicorp.com/terraform/1.5.7/terraform_1.5.7_linux_amd64.zip
######################################################################################################################################################### 100.0%
Downloading SHA hash file from https://releases.hashicorp.com/terraform/1.5.7/terraform_1.5.7_SHA256SUMS
Not instructed to use Local PGP (/home/noriko/.tfenv/use-{gpgv,gnupg}) & No keybase install found, skipping OpenPGP signature verification
Archive:  /tmp/tfenv_download.uHCBER/terraform_1.5.7_linux_amd64.zip
  inflating: /home/noriko/.tfenv/versions/1.5.7/terraform
Installation of terraform v1.5.7 successful. To make this your default version, run 'tfenv use 1.5.7'

Initializing the backend...

Initializing provider plugins...
- Finding latest version of hashicorp/aws...
- Installing hashicorp/aws v5.16.2...
- Installed hashicorp/aws v5.16.2 (signed by HashiCorp)

Terraform has created a lock file .terraform.lock.hcl to record the provider
selections it made above. Include this file in your version control repository
so that Terraform can guarantee to make the same selections by default when
you run "terraform init" in the future.

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
```


## 本当にlocalstackを使ってるか確認してみる

いろいろやり方はありますが、ログを見るのがわかりやすいです。

```
$ TF_LOG=DEBUG terraform plan 2> log
$ TF_LOG=DEBUG tflocal plan > log
```

のようにしてデバッグログを見てみましょう。
 
 
