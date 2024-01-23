provider "aws" {
  region = "eu-central-1"
  # version = "~> 5.0"  # Specify a valid version range
}



resource "aws_s3_bucket" "buck" {
  bucket = "anandkegaon"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}



variable "user_names" {
  description = "IAM usernames"
  type        = list(string)
  default     = ["user1", "user2", "user3"]
}
resource "aws_iam_user" "example" {
  count = length(var.user_names)
  name  = var.user_names[count.index]
}