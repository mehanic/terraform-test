# output "name-backet" {
#   value = aws_s3_bucket.bucket[*]
# }

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




output "policy_alice1_sales-data-bucket-rw" {
  description = "Attached user customer managed IAM policies"
  value       = aws_iam_user_policy_attachment.alice_rw_sales
}


output "policy_alice2_marketing-data-bucket-rw" {
  description = "Attached user customer managed IAM policies"
  value       = aws_iam_user_policy_attachment.alice_rw_marketing
}

output "policy_alice3_engineering-data-bucket-ro" {
  description = "Attached user inline IAM policies"
  value       = aws_iam_user_policy_attachment.alice_ro_engineering
}


# output "policy_bob_total-rw" {
#   description = "Attached user customer managed IAM policies"
#   value       = aws_iam_user_policy_attachment.all_excess
# }

# output "policy_backup_total-rw" {
#   description = "Attached user customer managed IAM policies"
#   value       = aws_iam_user_policy_attachment.backup
# }

output "policy_charlie_operations-data-bucket-rw" {
  description = "Attached user customer managed IAM policies"
  value       = aws_iam_user_policy_attachment.charlie_rw

}

output "policy_charlie1-finance-data-bucket-ro" {
  description = "Attached user customer managed IAM policies"
  value       = aws_iam_user_policy_attachment.charlie_ro
}

