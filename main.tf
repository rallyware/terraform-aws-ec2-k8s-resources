locals {
  ec2_memory_size = data.aws_ec2_instance_type.default.memory_size
  ec2_vcpus       = data.aws_ec2_instance_type.default.default_vcpus * 1000

  k8s_resources = {
    requests = {
      cpu    = format("%dm", floor(local.ec2_vcpus * var.resources_binding_percentage.cpu_lower / 100))
      memory = format("%dMi", floor(local.ec2_memory_size * var.resources_binding_percentage.memory_lower / 100))
    }
    limits = {
      cpu    = format("%dm", floor(local.ec2_vcpus * var.resources_binding_percentage.cpu_upper / 100))
      memory = format("%dMi", floor(local.ec2_memory_size * var.resources_binding_percentage.memory_upper / 100))
    }
  }
}

data "aws_ec2_instance_type" "default" {
  instance_type = format("%s.%s", var.family, var.size)
}
