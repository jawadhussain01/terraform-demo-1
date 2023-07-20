variable "target_ports" {
  type = list(object({
    os_port     = number,
    app_port    = number,
    protocol    = string
    cidr_blocks = list(string)
  }))
}