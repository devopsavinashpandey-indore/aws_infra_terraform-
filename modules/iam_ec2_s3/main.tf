data "aws_iam_policy_document" "ec2_assume" {
  statement {
    actions = ["sts:AssumeRole"]

    principals {
      type        = "Service"
      identifiers = ["ec2.amazonaws.com"]
    }
  }
}

resource "aws_iam_role" "ec2" {
  name_prefix        = "${var.name_prefix}-ec2-"
  assume_role_policy = data.aws_iam_policy_document.ec2_assume.json

  tags = {
    Name = "${var.name_prefix}-ec2-role"
  }
}

data "aws_iam_policy_document" "s3_app" {
  statement {
    sid = "ListBucket"
    actions = [
      "s3:ListBucket",
    ]
    resources = [var.s3_bucket_arn]
  }

  statement {
    sid = "ObjectRW"
    actions = [
      "s3:GetObject",
      "s3:PutObject",
      "s3:DeleteObject",
    ]
    resources = ["${var.s3_bucket_arn}/*"]
  }
}

resource "aws_iam_role_policy" "s3" {
  name_prefix = "s3-app-"
  role        = aws_iam_role.ec2.id
  policy      = data.aws_iam_policy_document.s3_app.json
}

resource "aws_iam_instance_profile" "ec2" {
  name_prefix = "${var.name_prefix}-ec2-"
  role        = aws_iam_role.ec2.name

  tags = {
    Name = "${var.name_prefix}-ec2-profile"
  }
}
