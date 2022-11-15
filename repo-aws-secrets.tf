data "github_actions_public_key" "example_public_key" {
  repository = "s3_bucket"
}

resource "github_actions_secret" "aws_secret_access_key" {
  repository       = "s3_bucket"
  secret_name      = "aws_secret_access_key"
  plaintext_value  = var.some_secret_string
}

resource "github_actions_secret" "aws_access_key_id" {
  repository       = "s3_bucket"
  secret_name      = "aws_access_key_id"
  encrypted_value  = var.some_encrypted_secret_string
}