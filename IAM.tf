provider "aws" {
  region = "us-east-1" 
}

# Create an IAM group
resource "aws_iam_group" "example_group" {
  name = "example_group"
}

# Attach a policy to the group
resource "aws_iam_group_policy" "example_group_policy" {
  group = aws_iam_group.example_group.name

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect   = "Allow"
        Action   = ["s3:ListBucket", "s3:GetObject"]
        Resource = [
          "arn:aws:s3:::example-bucket",
          "arn:aws:s3:::example-bucket/*"
        ]
      }
    ]
  })
}

resource "aws_iam_user" "example_user" {
  name = "example_user"
}

resource "aws_iam_user_group_membership" "example_user_group_membership" {
  user = aws_iam_user.example_user.name
  groups = [aws_iam_group.example_group.name]
}

resource "aws_iam_access_key" "example_access_key" {
  user = aws_iam_user.example_user.name
}

output "access_key" {
  value = aws_iam_access_key.example_access_key.id
  sensitive = true
}

output "secret_key" {
  value = aws_iam_access_key.example_access_key.secret
  sensitive = true
}
