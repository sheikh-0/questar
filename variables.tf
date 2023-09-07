variable "aws_access_key" {
    default = ""
}
variable "aws_secret_key" {
   default = ""
}
variable "aws_account_id" {
    default = ""
}
variable "aws_region" {
  description = "AWS region e.g. us-east-1 (Please specify a region supported by the Fargate launch type)"
  default = ""
}
