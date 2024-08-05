# module "s3_special_bucket" {
#   source      = "../../modules/s3"
#   name        = "bucket_and_user"
#   environment = "dev"


#   // Enable S3 bucket ACL
#  # enable_s3_bucket_acl = true
#  # s3_bucket_acl_acl    = "private"

#   tags = tomap({
#     "Environment"   = "dev",
#     "Orchestration" = "Terraform"
#   })
# }