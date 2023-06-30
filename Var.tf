variable "region" {
  type    = string
  default = "us-east-1"
}
variable "ami" {
  type    = string
  default = "ami-04cd519d2f9578053"
}
variable "instance_type" {
  type    = string
  default = "t2.micro"
}
variable "keypair" {
  type    = string
  default = "jenkinskeypair"
}
variable "tags" {
  description = "Tags"
  type        = map(string)
  default     = {
    Name     = "HelloWorld",
    environment = "dev"
  }
}