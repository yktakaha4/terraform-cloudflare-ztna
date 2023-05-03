resource "cloudflare_tunnel" "main" {
  account_id = var.cloudflare_account_id
  name       = "main"
  secret     = random_string.tunnel_secret.result
}
