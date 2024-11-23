# variables.tf

variable "region" {
  description = "La región de AWS"
  type        = string
  default     = "us-east-2"
}

variable "ami" {
  description = "La imagen de la instancia EC2"
  type        = string
  default     = "ami-0c55b159cbfafe1f0"
}
