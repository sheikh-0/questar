provider "aws" {
  region     = "us-east-2"
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}
locals {
  object_source = "hwlambda.zip"
}

resource "aws_s3_object" "file_upload" {
  bucket      = "rifeplay-terraform-serverless"
  key         = "v1.0.0/hwlambda.zip"
  source      = local.object_source
  source_hash = filemd5(local.object_source)
}

output "base_url" {
  value = module.api_gateway.base_url
}