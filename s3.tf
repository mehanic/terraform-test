locals {
 buckets = {
       demo0 = {
           name = "sales-data-bucket"
        }
       demo1 = {
           name = "marketing-data-bucket"
        }
       demo2 = {
           name = "engineering-data-bucket"
        }
       demo3 = {
           name = "finance-data-bucket"
        }
        demo4 = {
           name = "operations-data-bucket"
        }
    }
}
resource "aws_s3_bucket" "bucket" {
  for_each = { for bucket in local.buckets : bucket.name => bucket }
  bucket = "bucket-${each.value.name}"
}
