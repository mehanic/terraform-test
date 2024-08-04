#  Read/Write and Read-Only policy documents for each bucket
data "aws_iam_policy_document" "rw_policy" {
  for_each = local.buckets

  statement {
    actions   = ["s3:GetObject", "s3:PutObject", "s3:DeleteObject"]
    resources = ["arn:aws:s3:::${each.value.name}/*"]
  }
}

data "aws_iam_policy_document" "ro_policy" {
  for_each = local.buckets

  statement {
    actions   = ["s3:GetObject"]
    resources = ["arn:aws:s3:::${each.value.name}/*"]
  }
}

