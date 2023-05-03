resource "aws_instance" "main" {
  # Amazon Linux 2 Kernel 5.10 AMI 2.0.20221004.0 x86_64 HVM gp2
  ami = "ami-0de5311b2a443fb89"

  instance_type = "t3.small"

  user_data = templatefile("${path.module}/templates/user_data.bash", {
    tunnel_token = cloudflare_tunnel.main.tunnel_token
  })

  tags = {
    Name = "${var.name}-cloudflared"
  }
}
