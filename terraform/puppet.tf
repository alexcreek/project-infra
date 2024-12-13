resource "digitalocean_droplet" "puppet" {
  name     = "puppet"
  region   = "nyc1"
  image    = "debian-12-x64"
  ssh_keys = ["44373607"]
  size     = "s-1vcpu-2gb"
}
