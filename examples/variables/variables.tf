variable "egress_from_port" {
  type    = number
  default = 0
}

variable "egress_to_port" {
  type    = number
  default = 0
}

variable "egress_protocol" {
}

variable "egress_cider_blocks" {
  type = list(string)
}

variable "egress_ipv6_cidr_blocks" {
}

variable "tags" {
  type    = map(any)
  default = {}
}
