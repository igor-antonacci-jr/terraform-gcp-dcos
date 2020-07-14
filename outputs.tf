output "masters-ips" {
  description = "Master IP addresses"
  value       = "${coalescelist(module.dcos-infrastructure.masters.public_ips, module.dcos-infrastructure.masters.private_ips)}"
}

output "masters-loadbalancer" {
  description = "This is the load balancer address to access the DC/OS UI"
  value       = "${module.dcos-infrastructure.forwarding_rules.masters}"
}

output "public-agents-loadbalancer" {
  description = "This is the load balancer address to access the DC/OS public agents"
  value       = "${module.dcos-infrastructure.forwarding_rules.public_agents}"
}

output "private_agents.public_ips" {
  description = "Private Agent public IPs"
  value       = "${module.dcos-infrastructure.private_agents.public_ips}"
}
