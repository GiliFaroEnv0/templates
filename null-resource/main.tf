
resource "null_resource" "null1" {
    count = var.DWARF == "Oin" ? 1 : 3
}

resource "null_resource" "null3" {
}

resource "null_resource" "null4" {
}

variable "DWARF" {
    type        = string
    default = "Oin"
    description = "my little dwarf"
}
