resource "digitalocean_droplet" "ns1" {
  name     = "ns1"
  region   = "nyc1"
  image    = "debian-12-x64"
  ssh_keys = ["44373607"]
  size     = "s-1vcpu-1gb"
}
