module "digital-ocean-nemo" {
  source = "git::https://github.com/poseidon/typhoon//digital-ocean/container-linux/kubernetes?ref=v1.11.2"

  providers = {
    digitalocean = "digitalocean.default"
    local = "local.default"
    null = "null.default"
    template = "template.default"
    tls = "tls.default"
  }

  # Digital Ocean
  cluster_name = "k8s"
  region       = "lon1"
  dns_zone     = "lb-dev.host"

  # configuration
  ssh_fingerprints = ["bb:49:63:ec:02:0b:6a:36:a2:65:3a:c9:ab:9e:dc:bd"]
  asset_dir        = "/home/user/.secrets/clusters/k8s"

  # optional
  worker_count = 2
  worker_type  = "s-1vcpu-1gb"

  controller_type = "s-1vcpu-1gb"
}