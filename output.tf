output "agent-ip" {
  value = "${join(",", packet_device.dcos_agent.*.network.2.address)}"
}
output "agent-public-ip" {
  value = "${join(",", packet_device.dcos_public_agent.*.network.2.address)}"
}
output "master-ip" {
  value = "${join(",", packet_device.dcos_master.*.network.2.address)}"
}
output "bootstrap-ip" {
  value = "${packet_device.dcos_bootstrap.network.2.address}"
}
output "Use this link to access DCOS" {
  value = "http://${packet_device.dcos_master.network.2.address}/"
}
output "Use this link to access DCOS" {
  value = "http://${packet_device.dcos_master.0.network.2.address}/"
}
