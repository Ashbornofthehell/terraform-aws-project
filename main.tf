# main.tf

provider "aws" {
  region = "us-east-2" # Utiliza la misma región que configuraste en AWS CLI
}

# Crear un Bucket S3
resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-unique-bucket-name" # Asegúrate de que este nombre sea único
  acl    = "private"
}

# Crear una instancia EC2
resource "aws_instance" "my_instance" {
  ami           = "ami-0c55b159cbfafe1f0" # AMI de ejemplo para EC2 (elige la que necesites)
  instance_type = "t2.micro"

  # Esto crea una clave SSH para acceder a la instancia
  key_name = "my-key-pair" # Debes tener un par de claves SSH previamente configurado en AWS

  tags = {
    Name = "MyInstance"
  }
}

# Salidas de los recursos creados
output "s3_bucket_name" {
  value = aws_s3_bucket.my_bucket.bucket
}

output "ec2_instance_public_ip" {
  value = aws_instance.my_instance.public_ip
}
