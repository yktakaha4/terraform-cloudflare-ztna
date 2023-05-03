resource "cloudflare_tunnel_config" "main" {
  account_id = var.cloudflare_account_id
  tunnel_id  = cloudflare_tunnel.main.id

  config {
    warp_routing {
      enabled = true
    }
    ingress_rule {
      # Catch-all rule
      service = "http://127.0.0.1"
    }
  }
}
