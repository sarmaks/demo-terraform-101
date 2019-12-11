resource "aws_iam_user" "user" {
  name          = "testuser"
  path          = "/system/"
  force_destroy = "true"
}
resource "aws_iam_group" "group" {
  name = "testgroup"
}
resource "aws_iam_group_membership" "add_user_to_group" {
  depends_on = [
    "aws_iam_user.user",
  ]
  name = "group_membership"
  users = [
    "testuser",
  ]
  group = "testgroup"
}