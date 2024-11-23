# configuration.tf

provider "aws" {
  region = "us-east-2"  # Cambia esto si tu región es diferente
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-unique-bucket-name"  # Nombre único para el bucket de S3
  acl    = "private"
}