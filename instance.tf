terraform {
  required_providers {
    linode = {
      source  = "linode/linode"
      version = "1.16.0"
    }
  }
}

provider "linode" {
  token = var.token
}

resource "linode_sshkey" "stickee-ansible" {
  label   = "stickee-ansible"
  ssh_key = var.ssh-key
}

resource "linode_instance" "eapreko-test-server" {
  count           = 1
  label           = "eapreko-test-server-0${count.index + 1}"
  tags            = ["eapreko-test-server"]
  region          = var.region
  type            = "g6-standard-2"
  image           = "linode/ubuntu22.04"
  authorized_keys = [linode_sshkey.stickee-ansible.ssh_key]
  private_ip      = true
}