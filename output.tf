output "first_variant_backet_output" {
  value = {
    for k, bucket in aws_s3_bucket.bucket : k => bucket.bucket
  }
}

output "second_variant_backet_output" {
  value = [
    for bucket in aws_s3_bucket.bucket : bucket.bucket
  ]
}
