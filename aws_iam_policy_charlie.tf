
resource "aws_iam_policy" "charlie" {
  name        = "charlie-policy"
  description = "Read/Write access to readwrite-data-bucket"
  policy      = <<EOF
{
  "Version": "2012-10-17",
  "Id": "ExamplePolicy01",
  "Statement": [
    {
      "Sid": "ExampleStatement01",
      "Effect": "Allow",
      "Action": [
        "s3:Get*",
        "s3:List*"
      ],
      "Resource": [
        "arn:aws:s3:::s3-finance-data-bucket",
        "arn:aws:s3:::s3-finance-data-bucket/*",
        "arn:aws:s3:::s3-operations-data-bucket",
        "arn:aws:s3:::s3-operations-data-bucket/*"    
      ]
    }
  ]
}
EOF
}
