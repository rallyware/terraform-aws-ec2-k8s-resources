# terraform-module-template

<!-- BEGIN_TF_DOCS -->
## Usage
```hcl
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
```
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 5 |
## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 5 |
## Modules

No modules.
## Resources

| Name | Type |
|------|------|
| [aws_ec2_instance_type.default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ec2_instance_type) | data source |
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_family"></a> [family](#input\_family) | The family of EC2 instance type | `string` | `"t3"` | no |
| <a name="input_resources_binding_percentage"></a> [resources\_binding\_percentage](#input\_resources\_binding\_percentage) | The percentage of resources binding to k8s entities | <pre>object(<br>    {<br>      cpu_lower    = optional(number, 70)<br>      cpu_upper    = optional(number, 95)<br>      memory_lower = optional(number, 70)<br>      memory_upper = optional(number, 95)<br>    }<br>  )</pre> | `{}` | no |
| <a name="input_size"></a> [size](#input\_size) | The size of EC2 instance type | `string` | `"micro"` | no |
## Outputs

| Name | Description |
|------|-------------|
| <a name="output_k8s_resources"></a> [k8s\_resources](#output\_k8s\_resources) | Value of k8s entity resources in hcl format |
| <a name="output_k8s_resources_json"></a> [k8s\_resources\_json](#output\_k8s\_resources\_json) | Value of k8s entity resources in json format |
| <a name="output_k8s_resources_yaml"></a> [k8s\_resources\_yaml](#output\_k8s\_resources\_yaml) | Value of k8s entity resources in yaml format |
<!-- END_TF_DOCS -->

## License
The Apache-2.0 license