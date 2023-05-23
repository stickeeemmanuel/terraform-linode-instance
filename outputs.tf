# output "eapreko-test-server_ip_address" {
#   value = linode_instance.eapreko-test-server.ipv4
# }

output "eapreko-test-server_ip_address" {
  value = {
    for instance in linode_instance.eapreko-test-server :
    instance.label => instance.ipv4
  }
}