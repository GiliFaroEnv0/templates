resource "null_resource" "example" {
  triggers = {
    timestamp = timestamp()
  }
}

output "output_1"  { value = "value-1" }
output "output_2"  { value = "value-2" }
output "output_3"  { value = "value-3" }
output "output_4"  { value = "value-4" }
output "output_5"  { value = "value-5" }
output "output_6"  { value = "value-6" }
output "output_7"  { value = "value-7" }
output "output_8"  { value = "value-8" }
output "output_9"  { value = "value-9" }
output "output_10" { value = "value-10" }
