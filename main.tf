module "s3" {
  source = "./s3"

  bucket_name = "example-bucket-name"
}

module "cloudfront" {
  source = ".//cloudfront"
}

