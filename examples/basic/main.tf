module "deployment_a" {
  source = "../../"
}


module "deployment_b" {
  source = "../../"
  family = "m6g"
  size   = "2xlarge"
}

output "deployment_a_resources" {
  value       = module.deployment_a.k8s_resources
  description = "Value of k8s entity resources in hcl format for deployment A"
}

output "deployment_a_resources_json" {
  value       = module.deployment_a.k8s_resources_json
  description = "Value of k8s entity resources in json format for deployment A"
}

output "deployment_a_resources_yaml" {
  value       = module.deployment_a.k8s_resources_yaml
  description = "Value of k8s entity resources in yaml format for deployment A"
}

output "deployment_b_resources" {
  value       = module.deployment_b.k8s_resources
  description = "Value of k8s entity resources in hcl format for deployment B"
}

output "deployment_b_resources_json" {
  value       = module.deployment_b.k8s_resources_json
  description = "Value of k8s entity resources in json format for deployment B"
}

output "deployment_b_resources_yaml" {
  value       = module.deployment_b.k8s_resources_yaml
  description = "Value of k8s entity resources in yaml format for deployment B"
}
