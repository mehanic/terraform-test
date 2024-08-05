resource "aws_iam_user" "accounts" {
    for_each = var.env-prefix
     name    = each.key
 }