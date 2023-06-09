resource "cloudflare_device_settings_policy" "main" {
  account_id = var.cloudflare_account_id
  name       = var.name
  match      = "identity.email == \"${var.email_address}\""
  precedence = 1
}
