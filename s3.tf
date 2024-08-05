resource "aws_s3_bucket" "bucket" {
  for_each = { for bucket in local.buckets : bucket.name => bucket }
  bucket = "${each.value.name}"
}
