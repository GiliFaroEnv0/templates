

resource "null_resource" "example" {
  count = var.instance_count

triggers = {
    instance_id  = "1"
  }
}

variable "instance_count" {
  description = "Number of null resources to create"
  type        = number
  default     = 1  # Fallback default value
}

output "output_name" {
  value = null_resource.example[0].triggers
  description = "A brief description of the output."
}
