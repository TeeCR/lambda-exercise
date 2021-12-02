resource "aws_iam_role_policy" "lambda_policy" {
  name = "lambda_policy"
  role = "${aws_iam_role.lambda_role.id}"

  policy = "${file("IAM/lambda-policy.json")}"
}

# This code will specify who will be able to use the role
resource "aws_iam_role" "lambda_role" {
  name = "lambda_role"

  assume_role_policy = "${file("IAM/lambda-assume-policy.json")}"
}