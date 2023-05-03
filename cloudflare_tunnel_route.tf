resource "cloudflare_tunnel_route" "main" {
  account_id = var.cloudflare_account_id
  tunnel_id  = cloudflare_tunnel.main.id
  network    = "0.0.0.0/0"
}
