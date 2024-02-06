output "k8s_resources" {
  value       = local.k8s_resources
  description = "Value of k8s entity resources in hcl format"
}

output "k8s_resources_json" {
  value       = jsonencode(local.k8s_resources)
  description = "Value of k8s entity resources in json format"
}

output "k8s_resources_yaml" {
  value       = yamlencode(local.k8s_resources)
  description = "Value of k8s entity resources in yaml format"
}
