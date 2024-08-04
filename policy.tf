# resource "aws_iam_policy" "data_readwrite" {
#   name        = "readwrite-data-rw"
#   description = "Read/Write access to readwrite-data-bucket"
#   policy      = <<EOF
# {
#   "Version": "2012-10-17",
#   "Statement": [
#     {
#       "Effect": "Allow",
#       "Action": [
#         "s3:GetObject",
#         "s3:PutObject",
#         "s3:DeleteObject"
#       ],
#       "Resource": "arn:aws:s3:::readwrite-data-bucket/*"
#     }
#   ]
# }
# EOF
# }

# resource "aws_iam_policy" "data_readonly" {
#   name        = "readonly-data-ro"
#   description = "Read-only access to readonly-data-bucket"
#   policy      = <<EOF
# {
#   "Version": "2012-10-17",
#   "Statement": [
#     {
#       "Effect": "Allow",
#       "Action": [
#         "s3:GetObject"
#       ],
#       "Resource": "arn:aws:s3:::readonly-data-bucket/*"
#     }
#   ]
# }
# EOF
# }



resource "aws_iam_user" "accounts" {
    for_each = var.env-prefix
     name    = each.key
 }



# Create Read/Write policies for each bucket
resource "aws_iam_policy" "data_readwrite" {
  for_each    = var.buckets
  name        = "${each.key}-rw"
  description = "Read/Write access to ${each.value.name}"
  policy      = data.aws_iam_policy_document.rw_policy[each.key].json
}

# Create Read-Only policies for each bucket
resource "aws_iam_policy" "data_readonly" {
  for_each    = var.buckets
  name        = "${each.key}-ro"
  description = "Read-only access to ${each.value.name}"
  policy      = data.aws_iam_policy_document.ro_policy[each.key].json
}