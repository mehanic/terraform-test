# # Attach policies to users
resource "aws_iam_user_policy_attachment" "alice_rw_sales" {
  user       = aws_iam_user.alice.name
  policy_arn = aws_iam_policy.data_readwrite["demo0"].arn
}


resource "aws_iam_user_policy_attachment" "alice_ro_engineering" {
  user       = aws_iam_user.alice.name
  policy_arn = aws_iam_policy.data_readonly["demo2"].arn
}


resource "aws_iam_user_policy_attachment" "alice_rw_marketing" {
  user       = aws_iam_user.alice.name
  policy_arn = aws_iam_policy.data_readwrite["demo1"].arn
}


# resource "aws_iam_user_policy_attachment" "all_excess" {
#   user       = aws_iam_user.bob.name
#   policy_arn = aws_iam_policy.data_readwrite[each.key].arn
# }

# resource "aws_iam_user_policy_attachment" "backup" {
#   user       = aws_iam_user.backup.name
#   policy_arn = aws_iam_policy.data_readonly[each.key].arn
# }


resource "aws_iam_user_policy_attachment" "charlie_rw" {
  user       = aws_iam_user.charlie.name
  policy_arn = aws_iam_policy.data_readwrite["demo4"].arn
}

resource "aws_iam_user_policy_attachment" "charlie_ro" {
  user       = aws_iam_user.backup.name
  policy_arn = aws_iam_policy.data_readonly["demo3"].arn
}


