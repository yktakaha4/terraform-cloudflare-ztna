resource "cloudflare_split_tunnel" "main" {
  account_id = var.cloudflare_account_id
  policy_id  = cloudflare_device_settings_policy.main.id
  mode       = "include"

  tunnels {
    host        = "www.cman.jp"
    description = ""
  }
}
