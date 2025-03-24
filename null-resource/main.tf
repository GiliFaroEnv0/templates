
resource "null_resource" "null1" {

}

resource "null_resource" "example" {
  count = var.instance_count

  provisioner "local-exec" {
    command = "echo Resource ${count.index} created"
  }
}

variable "instance_count" {
  description = "Number of null resources to create"
  type        = number
  default     = 1  # Fallback default value
}
