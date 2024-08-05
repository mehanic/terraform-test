
resource "aws_iam_policy" "bob" {
  name        = "bob-policy"
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
        "arn:aws:s3:::s3-sales-data-bucket",
        "arn:aws:s3:::s3-sales-data-bucket/*",
        "arn:aws:s3:::s3-marketing-data-bucket",
        "arn:aws:s3:::s3-marketing-data-bucket/*",
        "arn:aws:s3:::s3-engineering-data-bucket",
        "arn:aws:s3:::s3-engineering-data-bucket/*",
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
