# # Attach policies to users
resource "aws_iam_user_policy_attachment" "alice_rules" {
  user       = aws_iam_user.accounts["alice"].name
  policy_arn = aws_iam_policy.alice.arn
}

resource "aws_iam_user_policy_attachment" "bob_rules" {
  user       = aws_iam_user.accounts["bob"].name
  policy_arn = aws_iam_policy.alice.arn
}

resource "aws_iam_user_policy_attachment" "backup_rules" {
  user       = aws_iam_user.accounts["backup"].name
  policy_arn = aws_iam_policy.alice.arn
}

resource "aws_iam_user_policy_attachment" "charlie_rules" {
  user       = aws_iam_user.accounts["charlie"].name
  policy_arn = aws_iam_policy.alice.arn
}































# resource "aws_iam_user_policy_attachment" "user_policy_attachment" {
#   for_each = var.users_policy_attachment

#   user       = aws_iam_user.accounts[each.key].name
#   policy_arn = aws_iam_policy.data_readonly[each.value].arn
# }





# # # Attach policies to users
# resource "aws_iam_user_policy_attachment" "alice_rw_sales" {
#   user       = aws_iam_user.accounts["alice"].name
#   policy_arn = aws_iam_policy.data_readwrite["demo0"].arn
# }


# resource "aws_iam_user_policy_attachment" "alice_ro_engineering" {
#   user       = aws_iam_user.accounts["alice"].name
#   policy_arn = aws_iam_policy.data_readonly["demo2"].arn
# }


# resource "aws_iam_user_policy_attachment" "alice_rw_marketing" {
#   user       = aws_iam_user.accounts["alice"].name
#   policy_arn = aws_iam_policy.data_readwrite["demo1"].arn
# }


# resource "aws_iam_user_policy_attachment" "all_excess" {
#   user       = aws_iam_user.accounts["bob"].name
#   policy_arn = aws_iam_policy.data_readwrite[each.key].arn
# }

# resource "aws_iam_user_policy_attachment" "backup" {
#   user       = aws_iam_user.accounts["backup"].name
#   policy_arn = aws_iam_policy.data_readonly[each.key].arn
# }


# resource "aws_iam_user_policy_attachment" "charlie_rw" {
#   user       = aws_iam_user.accounts["charlie"].name
#   policy_arn = aws_iam_policy.data_readwrite["demo4"].arn
# }

# resource "aws_iam_user_policy_attachment" "charlie_ro" {
#   user       = aws_iam_user.accounts["charlie"].name
#   policy_arn = aws_iam_policy.data_readonly["demo3"].arn
# }


