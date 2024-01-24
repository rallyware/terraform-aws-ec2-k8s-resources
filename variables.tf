variable "family" {
  type        = string
  default     = "t2"
  description = "The family of EC2 instance type"
}

variable "size" {
  type        = string
  default     = "micro"
  description = "The size of EC2 instance type"
}

variable "resources_binding_percentage" {
  type = object(
    {
      cpu_lower    = optional(number, 70)
      cpu_upper    = optional(number, 90)
      memory_lower = optional(number, 70)
      memory_upper = optional(number, 90)
    }
  )
  default     = {}
  description = "The percentage of resources binding to k8s entities"
}
